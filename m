Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CA5239E8F
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746903594; cv=none; b=Iah/lLgUyK2tssKdRYapt2xNBUEXyzR1P+ifqM5m80zdiGmOwjxHLiWT0unFSPHPLArwGj/tsAdpPG525+1tPyDBmzB5QNAEH/ap/zaTsnLVMDwPCYoBL0ms6xuDBRqczlj/FSrmdv75xIWxGX6VLJ7+ccMH6E1rscHSPoX39R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746903594; c=relaxed/simple;
	bh=BjqrmdBZoHIG07fUlM1Gf7+GhNPHnr/s7oNjdxKMUnI=;
	h=To:Subject:From:Message-Id:Date; b=Mz8jzZNWbx3EHFfxpR79lYgG6d7/8l1etasScvnAzdsc7UW2EtJiJJppGsb5jYZv4EtdaaciD1kBwQnyoyEcd4GroqkIKumRaL0egwVITenpaLv2jdsleMPCQ1muE7LaB+4GTeM95WHUPxAS/827hVJQhSDwqOFq7OTQoHGKYSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpFL55pq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpFL55pq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60D6C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746903593;
	bh=BjqrmdBZoHIG07fUlM1Gf7+GhNPHnr/s7oNjdxKMUnI=;
	h=To:Subject:From:Date:From;
	b=kpFL55pqClZKUTSfMPkBnyrbuk1r68asMlUtVYquIU7CR2Vm7kW4FY8TOVpBS1LUb
	 pf/u0+P6c6EnfRd7j2lIGfJVtcqm2Yaxf8UqHhXWXE8nQhi1ssglfov/1rq8w4xzBo
	 y62UN6Cx2+SAHKFE1aAYHNqCNulB7/aTc9aavrhJAf2xt/VRQCdFjjNdQZa4TZXsgm
	 e3Uuer+iQUG70Awn3MewBXqYH6Q2TqYKFGAGQOMtIm61/+h5HHc2pquGAmfM9BMXZ4
	 Op3bpVqb6WeRq93gVVfNBVu2pHC+EkRKGyCkLeOPucq34xmyweh1PjXg7tFIFZneGZ
	 uGSn9MWCwRGew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AC4C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174690359357.30146.10132038060964074952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25745f9df1697b64c0339996a6e0c4e9054721e37e22b2fb17c2d349b40a7626
Date: Sat, 10 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746903593
