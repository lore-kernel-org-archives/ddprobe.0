Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD63294A05
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748015394; cv=none; b=IWCk5i4DSNV2xgtcCIn4l6Bvugq1nPdFLIJ008vh88pHbNrMNipgIfMwX4O9ONVKzGk44xA+62tYCF2KcfK57+GY8ZGd8s8oG7Lsd97IsOoleY6qARLNF3RQoPrUiv1M1EAtEaW0/G/e9fuBbNYRABdSsM5FGcXh0pVvoLDky/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748015394; c=relaxed/simple;
	bh=cEogiIl3SFEaLnze5S5hktaTUSTKmVpNlKppuLATdnU=;
	h=To:Subject:From:Message-Id:Date; b=okwhpcqC5oWqoPPeyet6nTa/bJ6Z0jWUXbaUjp9gF2c6sgV7Zwu8zMtCIS/Nk5yamahlsKYP3auVBgNWbizE4k8tjoLhuU/fDxtmhSF6olQKEZ5mzh5l6EaaiG2TMwvE/va8tXWAfkF7+HFePE/YhzUHc5nodxD5wh4E6mt+qrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olD8TQw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olD8TQw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EACAC4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748015393;
	bh=cEogiIl3SFEaLnze5S5hktaTUSTKmVpNlKppuLATdnU=;
	h=To:Subject:From:Date:From;
	b=olD8TQw+jH6YKlDwPrMjxYlY/z1alr3CR3Hqtd8ghzji9Snc2IiyTHLWYgGHb+iVy
	 yUnNSyqWAGHk/UqsHplAvLXEnPV4NOV+Fty9COEhf0DQ58oJKXl5fb850lQU/YKt9i
	 rXbbYbKGk6RCNwuhyIRQLLFzofypbI+nCUNHQt5tBcM8EdPum3QG7CokIZZvrsTkNg
	 vmURmmETjM71N4NitOCB6B4ILks8REEYMCcpxmkPMJqcstpGILLAiWTEB7jw0yHhHg
	 QRUuxUTfC1EQT2whCV5cKMTAtmBhmGLDwarPokUlIHRJAoBCHPEhVQcaNfCxdWvqqP
	 hFuatmS1hMATw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F892C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174801539358.12103.13422993062870480005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921b1b1e6bc0794ad19bfb6a28d54013f227192b8ff52c8e1091bf44ce6d7ade
Date: Fri, 23 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748015393
