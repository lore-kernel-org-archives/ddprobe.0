Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324CA1F461D
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744385394; cv=none; b=Nm4jirgS4GEX18tDPvHZy7MNFrlJpoVfP65IQUfhSaPxfXU405I87SwtPEZWLl1bG6Fd5AA3RsyTqxQxBbPnoGRNFGkTZOPgNVhzAzZmbkyqDSbnrJujdn936mcpCXxCbK46xuG32fXrSRB6MGCaIgTF8EMWCpR8nIxs4JFhiKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744385394; c=relaxed/simple;
	bh=EVJ5kTWZe51k0LCGtW8Wh5WvhQd4SR/7QVO/x4FpJzU=;
	h=To:Subject:From:Message-Id:Date; b=HYXby3PrCij0XKlVgf3P+ZBP6b4SSAd7fzS7IT2dqFpWnzFUOv5DWbi/L4i083HHVqYdN901Q0UQU1gLuw3dStw45YQaiUO3GOM6HhUph0DFCsq8201qCUUh38ve8ToeRVCAo0utNazmUnaOx060dj+QS2P/D5IM6pAMfkSz9Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlAV3pMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlAV3pMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5902C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744385393;
	bh=EVJ5kTWZe51k0LCGtW8Wh5WvhQd4SR/7QVO/x4FpJzU=;
	h=To:Subject:From:Date:From;
	b=OlAV3pMb/US8KGOVT1rnCfJC0nl4vLZbP1IgcE0+LYUSIrVRNwhh2GahMi8tvf8LY
	 xG1HjW0eJPSvQseer0vNBYZEm+AUgisBJNrOg6U1p9gNgrDXBeFwiKTd/7zdn+d5TA
	 pBr3qDMtGsi/U4OTS1MFIH21sPlJDaLrLywVkWvwotvGP9H6TbJj2shyGcvvES9N/a
	 p5sCiPeFpBIPHJqbHEj4Ptp7qdDJKULPfx45QY25mPMzranSitC579z8q8BHnq5IMd
	 8pjy5OhuEZms1zd/BD97Z+q5Umi8uhyQBMgL2vMaFHxh+s1BhNnhQFx0ZoMbm65SVe
	 WigRGfDYJyqrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D14C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174438539359.17928.2487011506597218595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10f47edee4119e26fb3cc9037110853bc9a57411904e7b1f6c736cdced46a7cc
Date: Fri, 11 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744385393
