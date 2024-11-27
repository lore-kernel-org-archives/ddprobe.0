Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D77433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732749954; cv=none; b=LEUgukxnEHUdG6w+q0yguDMoqPPLysE13643SU8bHeVkuwH8ST0CRqdFa3XFpWdEobTGExfoBkQj9mrEXwuq2gy4/7ZziaB33DXilEYMwCxylEIipEL6Ls0vqb39FW6Mk7Fox8qquhNRbGuGcXoUrTN46oRc/aN1qII/QcKR8/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732749954; c=relaxed/simple;
	bh=fQLrvH7iWIgFXh3BgPI619zJBzfkRGHoo6999z+NuP0=;
	h=To:Subject:From:Message-Id:Date; b=Ip+hrT3QBVhrl/bxL2WCByJKepon7Jh8K2qlqNZuCydTEjZV145XAt+6zFSMAuElRZrIGxV2nDXAUwdon7by1eluPTawlbxbodN1WIxEdUF6Np6TtTzSddjwJc/NTrLIRnWTRgNVdIwccB3tk9XYL0ADEXeLv8UPgq029uAiS+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ld8nCzrT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ld8nCzrT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D87C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732749953;
	bh=fQLrvH7iWIgFXh3BgPI619zJBzfkRGHoo6999z+NuP0=;
	h=To:Subject:From:Date:From;
	b=ld8nCzrTSL5uzqU61NopnYVHNyhajKF9vHDgjiUXvikNFUCBCWoJyjo02x9oLZwF7
	 529qReTPCjI0iWZtQHFRixCS54Yo91GYze6gE0udWCgtpldI/Kp2uypZmVLN3r2goF
	 C+9RJW4ahhp22mRBlts2s8thQ7L2ipJtviPpmm87CIBgLQGlYWUMERzSbrlbehYTLz
	 rAXxRWlEUJ7VB32HSOfcO2Dygb2zxPReeRWFIRaEiReBxVKPVyb2LY1cyQTSdEEWSJ
	 z4B0p83FU5A0X/JdSjKRpvBIC6hdv/DKPdxYjIdXecm1BjFCPUzcagd/GXC8a/Rnch
	 czTlozJOG/FPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D6BD6D248
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173274995361.20886.7610748623306792463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc69dd1b32743548e73c635a19b608e4d7416de22817f567f910cbdfa783b53
Date: Wed, 27 Nov 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732749953
