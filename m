Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677B613CAA4
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 03:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715224343; cv=none; b=kdK2TzLEg9iEoASB3wtvta4rIR4sIbMVjETklGSJ6uDmsX/GB5g/LFgCuMNUpKtu10PMMcmFiXCCStppdRN2fa9TRWLpmHENhj8vbI6MPnA4tRGCC2G6iYeKUPFzkxAh37IQ4EIHUYnDi8/GwOSzrtEGytO5jEOXg0FeSajMU4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715224343; c=relaxed/simple;
	bh=3YlalubpuS374sT7HgqiDbiLRdN3w3B9TeeE8dmT5Ys=;
	h=To:Subject:From:Message-Id:Date; b=e4CDYv5P+WrdZ7wy+lsGbbv7FWpRAmyAzMoSjRJ/5hQbsbPiYrNwUkP81WiGbllNPnojvWgPwP05KWvwJOR0aWvChjFNnUjXx1fPECB0xBeApSysIm8Wx7fCN1NTaUjAwGCmD1iHkxFtHuR/PZD3noD7r2xIDRQjgW50EneuEyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=heZ2lDl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heZ2lDl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0F4C113CC
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 03:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715224342;
	bh=3YlalubpuS374sT7HgqiDbiLRdN3w3B9TeeE8dmT5Ys=;
	h=To:Subject:From:Date:From;
	b=heZ2lDl4uDyiVqtZUD4fU5Bv/ONtuEsZGqgfAuqBNzEENkWa4GYaKXe39LeGJ6aDO
	 BnFJzjEw29Ay0AuMBNMglVrwtvoXudIL2RzUNR5dB5DkPiKG6RbznRtWfgie4ji5EB
	 nt/v3QC/J+E43HO23vYFj6H8+GnZBnn5Naf9xJCxcHcQPV5saGbxaTdSkAp2h49EHC
	 HVCNGXLTe5pGDyx6JJ7I1Hpo+0/RncZqQehDQ/gPiAgn6Gf2x7gVSTgm+pw3X7ne/k
	 BthnaHXKusdUicVzaYysbzz1Wup9PkxVh7Xon9q5VvO16Kogaos+qg4o1UaxtlgyvU
	 HTFaCrvYVJC8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA183C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 03:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171522434281.3115.2630369929975609074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4db2412fd7224c12fb9e9e0ce0c1fa6f4758156c276930e67e9b2b3f76e3249
Date: Thu, 09 May 2024 03:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715224342
