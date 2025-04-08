Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD3A267AE2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744105194; cv=none; b=fQG5x42DgQausdSRjtCu4Z/SgeWolAyyFjHby4qqi+kBX+wHPPlmfOaskxhGA2Wy5BJtwa3NEjytR4PorYV/GN3NcPsRACq9uucqD8t7Lih+Fx1sbdvxpb1HqjruDSl3Zn79qsrL1W56qO1TXNYPDUOXWwPZ5Px9uidN+ssmBo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744105194; c=relaxed/simple;
	bh=B/TA9YYySDLTSvDirDUOYr1kQNRapu3OBA9mf8pcxho=;
	h=To:Subject:From:Message-Id:Date; b=MRnN5C0B5aQ42WTtyokYG2kQyBBL4LUJgp41iJFvup2uXdeQ3ObZUG5/w/mwjnXHRdMV9MFjFM5abqT8GCXT1KrriL9muhYxpkaH9V3CIVCSBFSjEL7LU7LuOqwFlveI+yCjuqnGHCudkqj3Rk296c5uo1a1l/xQ9sGSG4fb2Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9UXB+kV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9UXB+kV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC9BC4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744105193;
	bh=B/TA9YYySDLTSvDirDUOYr1kQNRapu3OBA9mf8pcxho=;
	h=To:Subject:From:Date:From;
	b=e9UXB+kVJkGmPm2iYPmUUO0R64DPdD686oD208WEmoAkgUyNjpdHRw2shp/bnUZQe
	 viQMk6tpMKICqoE4gfnd2PPmNDDYt/j/AhpBc3R4iGFTsvjzfg1KTD7sp8ZZFxrXPY
	 RujcKXAGCJrzFTx4fmMQDjTEQbItq6kaTKk2tXpR7kTEktzoqCVZEMgwctFWgouOrP
	 W0JF1v5VSgWA5C7om0wf1aBDsHGHXqiz12FFTrmN29ZkYDOM3ZsD20smn9iSoroH4T
	 hB21lUZfgjRGfHLuMSojMHFWUfeqledUEq5dIaxk0DxR8S93YZ3C9Gbeirf7jU0W3N
	 bjFXFm05rtNOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4DD7C369A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174410519364.6741.2078696353383621648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 185dc0eb0411a1c66213d4b06ed8bf151afab4ebe006813f4629a14f2bef49b6
Date: Tue, 08 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744105193
