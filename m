Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAC32E6CAB
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781660194; cv=none; b=RjJMtAp1r1Brd7f1d8FExmuKDm+OSlEyP0jRtoXj+YQC4SReSeBKa1oyzpUMlK7dvCAR3Ybo5wb3crwMMKf7DqaehnXTfkit6WzR6u4oq1QfJvgiOXD8ggsbQvfMmmGmt0UQnMc/AcFH0hRdRdd6tTXQVkZ5yRsKgi/VHDJ6+ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781660194; c=relaxed/simple;
	bh=WMBnxL5WOXln4aftDnbSxz+gI5nmqNF52GNFV9itDdU=;
	h=To:Subject:From:Message-Id:Date; b=d1b7+OWUnw6sUnayOiNG8OIJ5BXagA9IQ5MxcvdJ0Yg5FZnF4jsveW9NyrpYreezgcJnaDoSX+xLz4YR1w0j3wQ4cssVNGEWLy25YnooOl65+qZcD7zEuNKW1YMJ6SCnIvES/eO90nfG0C1e+GfYxg8BmdFOvMsiSSsoqdVAYP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3e8tv2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3e8tv2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D82C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781660193;
	bh=WMBnxL5WOXln4aftDnbSxz+gI5nmqNF52GNFV9itDdU=;
	h=To:Subject:From:Date:From;
	b=D3e8tv2rG58Ii5dUdxtFIgTO63z0zE2YzCLeJ6A8/CiyzOxa3eV0jhg2Qph61pZPB
	 bq25pP5W1wSM0m2y6HfuakTzFtjkGHzz29Y7ksL7ITjPSiurNcWQDLQaoPEhUxC8RH
	 RXdg0xxTo8M5T73XJFQJB1Mlw7qhmomCF8lXhYgUyH7VY9A+wd4Cb9qs48zIGf/IQE
	 M3FkxfHTuxbx4g9Lg6KWAiBTjtzEqiEDEuRlR1FQgFn1etT2azVFBF/Npci6vRWUVJ
	 IVYZCklh8KeEpgGrjd4aVTOKVzC3it1KDbFxf3q8X7Nyyu+pFB6r10TcCKK8HuyHJZ
	 +ZUmqlH7kOffQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE5DCD98D2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178166019369.3120.446139233924138376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 826e7a887a6998e0610bedb62ae9de71f5b8ab284c66495eaf852ba3bd4f1504
Date: Wed, 17 Jun 2026 01:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781660193
