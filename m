Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21ED513B797
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755496194; cv=none; b=k9yf1o7iytLT1rHMdjDduHNcbaXalLtOVAGwk/2h02HeF0PDiRfFLRIcb9mYuk/7Gx3/BoadiaL9AZaJO8nJSTNSfZfaFKYAl7FyNQY6SoN/pnOBukVKOuAUFbIyBURCbPCT7bTMb8rGjJX/dnOK5NYvTq41Fz1SuATSSj6CjK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755496194; c=relaxed/simple;
	bh=JTZsU5OueNoKIxfhmlSe1UPTMTfSH9cRLW5bCdcel2U=;
	h=To:Subject:From:Message-Id:Date; b=ZpwbBWkKyd764ZC+4kBKFX60E0IpBviJ1l24mzaJ/7UslY9IcteB/Wl4vkZulHjIddbEa1gtqAtLk/fHhfH4F3Vr3jB8VxugcfPjpaCZMX1WJqYyZz4EFyCPOk2wmDCXx/1wegVHQsThcxzDTHn2YmW/6a0JccTnNFigljQ+lzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ls2KmVCU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ls2KmVCU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D377C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755496193;
	bh=JTZsU5OueNoKIxfhmlSe1UPTMTfSH9cRLW5bCdcel2U=;
	h=To:Subject:From:Date:From;
	b=Ls2KmVCU4ADNQPyehCPfBnraj7OP8sakdp7TYYT09MLnPNtHsA1nsM2+ZxcMWz4GR
	 HLfJg4HoD0PcZLLumzzqBpGxcuXefx0GF417XOtvPic0uGRG6h402BM8/9fpk6oNgM
	 Lja152uyM2ew1iLYvoUeRcE/Cw35NSpf1MA23BA9fUCtk6InmqPsMM9R5cccKBT1Bo
	 BH+UcXOjfHCINQV6MsJ4Xyx1R1GnSMCIS3JX87J05NjVqo1LaCMHj/OMuEpbTcmYrL
	 nseIxJ8ZouwtBNtjMY9aSYR/w1Ej3pvykjA4nlOnlwPpgw82Pgfs5bKWN+N1DaxzIW
	 fz6Ct/Io2BT0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBDCCA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175549619357.4442.13534219438541432495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65d1081080bd967ac3939c70d2c3bf7f39bafd3b5820c4e90c7b91fa41cd6cdb
Date: Mon, 18 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755496193
