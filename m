Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159982EBBB6
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754995194; cv=none; b=L9jY5G5mR3v1ZMi2gJD8iaqtKRaK63Hc106/EqFQBgOfZuiNySNT/C/t0f6xHVzvRqQize8rsgyQ28+jzwwjadbj5hv91bBJQNeLqduKVgJFvE8Uu/abk1VBYTTu5dHrb9jrJ6vfyJWcdzGPy7fzUm1ts4BdyOyHttacVGeIbBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754995194; c=relaxed/simple;
	bh=DihF+3Lpt8JWL2CnzgwnraGojm4II5bHr1yysf2tqdI=;
	h=To:Subject:From:Message-Id:Date; b=h+9ODfVbMNWT3Pj4bmpH/kweYihntGQdTMFScR1A1Grgve2/XmXtXtkEuHT0siH6qfZH8BdKZZgRPMOycv4kPrf5MCo4PyFMHYB1NJMf40q+kP5WPcFcEBz1kMV+c225uQBpWYfYoQugahPI7P7C9MGYG14WBAt2GHNV9mnTAbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYcDjSBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYcDjSBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ACAC4CEFA
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754995193;
	bh=DihF+3Lpt8JWL2CnzgwnraGojm4II5bHr1yysf2tqdI=;
	h=To:Subject:From:Date:From;
	b=dYcDjSBi1zPtJ4INiAfsfo2YEbdvp4IqrrtKr9ygO4Kgrh2wvGEq3iza/eNP4J3oP
	 0KbX2Khk5AaLqUfQqwHUcgGCOkwTlU6nIWp2Yf6DrIpK/LCE2NL49V07uyVe3ZWJeS
	 VsAQCUXKqJT3CK4Mv5EDOnHgXbRZ5rVkd34djheCGHDMnlz/ccgQJolJqJyOyLbxSs
	 ZAxIXbhUCShqenVTFHuX0Tuo2yOBQClkDlcOcAD7iuzfUM4tFnfbAX/eDCCSuEUXRn
	 rh8fEyRE9oOUxXouOxQjpgB9/5DqFx/MOxbZIjtQuP7UXaF7HQxpf2WQihnNgMOLIr
	 CdXEL9NmBv4Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB9CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175499519358.25144.12642564840529096268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e28aa947fd332217bfcba90cd1f9ee111e1761e104d8c61e89e319c13c999c2
Date: Tue, 12 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754995193
