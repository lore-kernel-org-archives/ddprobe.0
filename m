Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C484D0A01
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792159834; cv=none; b=Nhs9cL9zVxKnSgggPvGV4N0854v3H73wNzj0KzPXzDBFH7oTCsjC4/F2fh2UHoKB26V7grF976YGOmOXyu8AWS4iXItWhu1bzGr4YKozj7qB3yyUJNT2LYJWSL5H1C5i9uNVaN67kUdfAvSiZ/WxVykhU0O8ilzE6si5azrpDfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792159834; c=relaxed/simple;
	bh=LHWZ+S7px2P85IbUbFJ8qskje83f1XdhthRMoTM3HjA=;
	h=To:Subject:From:Message-Id:Date; b=Qn6yWmLKVD2UTYK47hjuoeghZEL5Yznf+zzKo4Uyz05NRiyja5qD19MF5ghbntERNfvx/8P8nxswvICn12uCMEusp1BD+XOOS7hVUFOcoLRvCEuQQBfe2O4Q9sXVrahwS9eOjBOkZAz6BFKTe4HCYZM0q/OYl8H4WyY0FGVEkyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtjKWIvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtjKWIvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E401DC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792159833;
	bh=LHWZ+S7px2P85IbUbFJ8qskje83f1XdhthRMoTM3HjA=;
	h=To:Subject:From:Date:From;
	b=AtjKWIvpqlnrAFLTZk98zUqKa6JNFoUCqdJbAhtMtelepzWCrV6bFBMR6J3sK80Ir
	 QpWZMmtDv9awjctx8Npyvsiar/9kHkmRM6V+1pbZSjVk8M6vzzZMIDiMn4scXmfQl8
	 bBMPqSEfubnjiLD8jDVk/KZUY8eqjTDF8xOWFw3osyonnCr4eSyX8OzipfGoGr3VvH
	 2GsL29Yn0tKYjzfETwNLt6faaRTEOGiXCv1416/G3cpIwgp4dVtGI04dINBumwqXCQ
	 yQxecVZCVHwZqbOBCwICKDUcer7MvCcI6ovThOJe83Jav5mK4bSdNB69WNGlNCkWnL
	 LwQ8YM9YjgJzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E32CCA46C
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179215983373.28000.4856000273994496171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2206173f361106b44020aeb3b2a26ec17e6ea086fd9f54d5a3c37b992168280a
Date: Fri, 16 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792159833
