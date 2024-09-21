Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BAE1E885
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726931754; cv=none; b=Uklul4m1d/ESK+WR5paFa02+bhHKqxNaWfv7h8QTdrQ1wtNf8zu8xzLwQgjGaJMEm69kbL5EbYD1SONYeURf6akaUP/Oootsf0nSMDai38PBmt2bkI9bc3P9Msubu2tP2eRYa7vxlbST7MtA+eE/IsWAvVDHbufZBcWPVGLFMeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726931754; c=relaxed/simple;
	bh=ezSvqFckpELzLqjbiduhB8DO1rrzLRaEtCA0wQV/Gk0=;
	h=To:Subject:From:Message-Id:Date; b=g9Fe9DfeoZ76d8/8A86m/drs4LMmyinzWjh6meVjovSIKL9PXQoYw8oQsA49jXNlNf1yOia5/rtWoi9v6jwrh0Y4CyycpSAqWiOuYKDZLxOJCDtJ+etSPZaCL6zQohkoOcYcy9M3iEoGrXGy+94x+VYytsu/EHdgTil8wx67hjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dsc+B65b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dsc+B65b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80EDC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726931753;
	bh=ezSvqFckpELzLqjbiduhB8DO1rrzLRaEtCA0wQV/Gk0=;
	h=To:Subject:From:Date:From;
	b=Dsc+B65bLNXeidYUBrjZ5RA/KjgWhtcq0e2ejW67hnNrHvSV3kvlfLqQh0ZZr/cEB
	 a8pfjlgG4T9B+fIljd5tfPxwmCM3Rk/rPw9r9N96AngeWrpUEPkLOcAAKNqD/4KvMP
	 dnVZ1jQcgEnW0czCeZ8gbLsiFwb/uBUSrIG9DQNF/hUaCMjKYHwgxexU9riyoI7lSb
	 c/2dHscWN1Dmx3MKmNsQrngFcuByvr5EQUc8H59BgNmjKnlELqiAa8/g7h5Ao6dm4C
	 hj0HtMWS6REbty1HnruCbtC0dHcp04G8aLNBNJK82UzjjvGf55joxP2tVoq1KltF2g
	 /YLML8dqukOYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9615BCF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172693175358.13752.13897572693880192841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e75ee186fec0ab6b924abf1952fdafbc4b8069631fda76828f84b1450d9f35
Date: Sat, 21 Sep 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726931753
