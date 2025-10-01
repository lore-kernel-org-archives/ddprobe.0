Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60E729E11A
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759361393; cv=none; b=ABZVmJnqpjGbi31S0PTN6sRA+qp9fAMshQrOYMcLk/WiwMaprWNYFhTOXqbVAXcOfCnQsy+QQl96q2jZozkFqzFnLUIFlg22fNBg8VRvYm+B1EWEKVtf6gEiXVnXiUujRysKOczN6n/BQMHK5iThX2MJA19Zzm7YjlatIOHJvTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759361393; c=relaxed/simple;
	bh=VlF+wacq3pKFLPdGo4EuHrgN7PwRNim2W08I5idDu4w=;
	h=To:Subject:From:Message-Id:Date; b=Bb9lxmcDcBOajdSXwRqX4tmkSpeNLiEN1gKs/Q6RAceaZz/j5AyIDLEfgOiWRd4IrxpIHe3Ce7ECIUuJHRyLX1IUUOYn7Ay9SWevl9YjeTjiarrVcpabnpu6VYaXVBMDUxcuXgeTLc4wSKwpQCpG4MrMiXUskWy8ppavpfT5YkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xfklhx1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xfklhx1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB78C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759361393;
	bh=VlF+wacq3pKFLPdGo4EuHrgN7PwRNim2W08I5idDu4w=;
	h=To:Subject:From:Date:From;
	b=Xfklhx1G3MyIjxE1tq9Frekhq1zZxhmGiE9ItcmjTc3TndDNKOZWDBe+ShtC3WsKe
	 KtmKfluABNtwJp/pnzzj8uNXll2rj3wFxk0ZzzcjORcYCUhlBNHeH6xSuroNESZ8aX
	 ThgDAij8/AYvM0Di4sxGIdnZegVBYDKTmzyFRAcDIWYsxuN2wV27f3OgSeqDncbYgX
	 qBMbDveeK0KTlEHlEzRe4tizUHHitcCDr7UFC73uWJ4K+nz46T8n5+J+1Eox/L5wdg
	 VZC9L0NHyxYHe9YeF8Ubncolt5nW4qfjdEshdHRIHfoP0smY/+29a/OvQIsO4WmJTY
	 ZiKtWA/mh511Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9440ACAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175936139358.24466.5704606411173166849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26f76a0b7841b220821cc8e505e00007fbc156e91576d5b1a463119be0b2eb9
Date: Wed, 01 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759361393
