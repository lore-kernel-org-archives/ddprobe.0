Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5A721B9E5
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749802794; cv=none; b=Io9aPafR81OGX0WGrlTAwfGz9anqU31za9RNFDzeNAIX2Xz88Wk45zYAeuGq/Adz31R6fnkGjcdOq+Pp/CgBAroxDTU4qt3VbmYyqOva1bAMPqRSUL8tc8He86niHqSoirGTccCKaT/t5ScSLK6BCa+oaZ3KHlkGe2TnM2hbv5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749802794; c=relaxed/simple;
	bh=BeMRMECYfFZAa4lkhVCDnsFha67Htj9jREnrgef8Nhs=;
	h=To:Subject:From:Message-Id:Date; b=oUcWcsD7yOivjpiaaJfNcRaIE0MdSOlqO+6uAxhPFfWZtg/RWQ2/HgGTiApKSJbLVxsGGtrlsUaK9g56HtWHpE215vRF1Y9D6V607eV9D6/xJHF3xU/9/pllFTDUw5vhMA3Bp98RBNkmF9WknQH1uOAzXK7B/a5EJy57OaN11nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNYZpGGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNYZpGGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C3EC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749802793;
	bh=BeMRMECYfFZAa4lkhVCDnsFha67Htj9jREnrgef8Nhs=;
	h=To:Subject:From:Date:From;
	b=qNYZpGGJiNRE50SogUejbxPrVOS3SVOQU6o0QRAUr4KdVdTCUy+T/baln/aNzRMMF
	 rPrxOr1R5ZQngFVUIMd1qMrkw4/mxAhHqU8vuGSgSifepEdScV5Ngp0+hEOqxWMD/Q
	 4Gc1O2XlO4B1TR89bCilkiosnBgQKyf4elfxR6joUkMZ9T59fDTQsPc0yLAlHCDEO/
	 AWYK521N5BeWuwb3eCP82cHo7vfpac/lN99LyqVFbmL3DZP2t1RDxl0V+lD6kHRdlY
	 Qq95HMMPg9MU1olWSN0QeGykz54rgBO2s4UtlCPs7cq9ZJcazVPeEXLsVLYwxKevqE
	 eGGvmpgPCGAag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C6C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174980279357.29480.11511197652669680574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b4985b3cd58c2ae243730712fe15428d2c0c8c414b8de9b0080b04be497d99
Date: Fri, 13 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749802793
