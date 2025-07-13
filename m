Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F358836
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752373794; cv=none; b=TI/ANmF28p8nMhhKNG1ntPk1VJcmOqYKgFXKAO2S525SwOeG5DgWpmkRE+df0XxsTTY7IGnZPqDI2yQyyhT0OzgldKt1at8dsHpWQecsO4ibDYJRZ2/VpEsCvWCZubgBpOgu0huaaxMIt8PDVWbtzx/I87D3Dl1ptG4KJqStGwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752373794; c=relaxed/simple;
	bh=mlkkhCyb9mKUvkdlKP9WeCNqnd/ZZka6+8WKZpRgOtc=;
	h=To:Subject:From:Message-Id:Date; b=uz/MCB0CIbgNv6BsMd2/VmGRCaYE7QcI/z8NlplQu+poKsG66tCbPvBiGieUR/RjKUmELQHD4IROytPERe9t5HzCGSzONYE5FUIok0bts/9xqEHtg1ImZsm7R/2x63lKuneYEZBaVOmXutqwU2e06PA7O9EJoph7+2BhG0Sytx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0NDgoWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0NDgoWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3861C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752373793;
	bh=mlkkhCyb9mKUvkdlKP9WeCNqnd/ZZka6+8WKZpRgOtc=;
	h=To:Subject:From:Date:From;
	b=p0NDgoWDSnJyi+zPIPESXshE45oxo+cTNaMZLcdNWLoGjcbSbCWQBSXGHHJOdkxvR
	 qcXJrY2VG9JYz1fvgRfLFkN/vbs6sJvCOe2WByZTFpqwgQ58MfRT//GE6QFcHZBLwA
	 9PC66SodiSdPeajIp8Fyue//tGgJIAW10SK9aYwh2lQs9ceoWi9l/YbXOtEDZX5VkW
	 Z0/yxCxY5/a+wWXA/TON0Num5N7D7W+Q0VStq76HaQ5pm8OXe221K/wYuFqCIMctJ2
	 iQ1GLqOw57XeteIlqOsJJbPgxExBoahtjCAYhPlAZdqkQ+1GOst3w/O5vrj5xBbKLA
	 xu1db0tIOCImQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9173BC83F10
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175237379357.13167.4790002712862143698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25060c358041e577dcfc5bc83f382d5306379bdc8cae29f23db9cecb6e5d3e16
Date: Sun, 13 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752373793
