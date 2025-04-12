Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3682E7FD
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744457394; cv=none; b=QUZyHzuCi9iiAcpPu8WCOgKYCrzUHo9sC18e4Lg0JBCKBkI2HFa4Nm9S7NVWxHL0qWrSKQ8slmhoqPUFPkcFzIbTKRT7y2waRWIX2whZrqyLJeNqmNXSB57iBvZpgNA1CD1cMb8yVYOv+DmGZGgOFpm8UKYV+MrnoNkgdwI9WwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744457394; c=relaxed/simple;
	bh=lVZpHtUpOG4+ECdS8h27reIsuIy1NIadCKTDQ3uog58=;
	h=To:Subject:From:Message-Id:Date; b=UxuHnaO5A3Hgkh+cdhtj5UN/wF2/4ct9At/435QPTwYJL0T6+eUxGx/YwBlsfaVHVZGFPrxrHdHks1Ur+kveJPueHoBWZoahcHKhXHsm5dLg3VP4CEY+A4k2H7VgdrUR4nW050KksPHm1eVpWlERZ6Z5BsrW5fyhywzt2aHIxIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqsqvhaS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqsqvhaS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7853C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744457393;
	bh=lVZpHtUpOG4+ECdS8h27reIsuIy1NIadCKTDQ3uog58=;
	h=To:Subject:From:Date:From;
	b=BqsqvhaS7z27adIOMJaoqKC9HMzgO1uZoyysiXlnxsCIX9BY5sOsVKa1WxQp9147P
	 nqQpbRkr24vATrAEhRfx9hdIsTYy6W3YM+Lpc1H6QY0q6CTdyWmfMIMNQb1H/p6WA0
	 cdsu4aBxhc7k8MaglbdiHc01VTNdXBOXkBMLib51bugZsYCajgJ06w2YI6Q9tuYez/
	 7XoOSy7eVniewLSFv2OKiz3AxZe4cdUQFZSMob6hxSgGUV1ihdtkjQJ30RdL67uto7
	 ZnL+f3269i4tM56Qk1/llODjVX6EOdNNvXs8McayaCsZUpxH2mpVqjXHvbyYcKOykY
	 SBAE64lTdx8AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DDAC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174445739359.11812.6555914142271157156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c9e27cc71160c6b86d798de86d5a3cea179490e54828ce84ea0311e3c75384b
Date: Sat, 12 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744457393
