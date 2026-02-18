Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1113EBF32
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771380294; cv=none; b=BTS3+eOFfnqG1qVWNvN3I/miYbInx5mmwSbFDVqWVkm0nflL5fox1rb6fhzydqMx0bctb2dp0h921TTAncsJ0s8tpOWDuJQZ7BqwExrSXc5G2/fSvQfbNRVCGFUeEQKMhAyxBcvXBg4SnMlWZUGpFMYgfUdadkTEi/fuD4II0Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771380294; c=relaxed/simple;
	bh=x3WxZre35aMNiPC80bda4/UvSneGzd4+48a+sB1o0iI=;
	h=To:Subject:From:Message-Id:Date; b=cioqDEPdYTg0RPSfI9647PxqmlbMRG72vrHAmXobfHpnErUHZ/AwlkimbBnLazStHWNRyCe2YgpwjleoP3Rz9M93oby0oo8KwUXqLYMhRorW8LecOzRqiNMvfvTQ3grRhQalYkUmx1wsWDSSxlURd1GRDFJ4uRvL6wT+wxD6QYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unIbrlQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unIbrlQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B10C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771380293;
	bh=x3WxZre35aMNiPC80bda4/UvSneGzd4+48a+sB1o0iI=;
	h=To:Subject:From:Date:From;
	b=unIbrlQO2poDxnG1g5QXBl/xZ7kWTC0ikHhmHg98B5U/kDhWd0IiQJ0mPG7XAgqZJ
	 rKD6O40kEm1dmtNz88vBhcUxBUsUNpY8UnZDs4Y706BRiU72BMVklAljehlZQ102Px
	 XSO+psI4mRkRrOhMSfqklaeFlmyhVzP1pJtYXPEXKtrd0xYq7OaveUgyGWPM8NXEvX
	 L7OOY6ny/sx0IrkyUTqug2yDc++NMMbaRTzcVfD+8FTlkkjCf8H2gXePyHUxemElWl
	 5Na32OBdKK9IkJQwPJqWNhKWPaYlMpDSj0C/D0MZglyekQcNlAUiCDu9x/9j1hDSN7
	 5Dutm8Gq6Birg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94266E9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177138029359.26370.16216676519033247152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d7bcaf5307d2752d0b32da2caaaa52e32e75e47831b94c979ab5e6f95477aa0
Date: Wed, 18 Feb 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771380293
