Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552E516089A
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 11:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719399803; cv=none; b=OcePqtsmXmKC9qwnXInvSlBu32bhOb3tZ3pTSyhEhLw9z/Jby86EDM9/239l3NfvybSIoke8NGODxcALWmoblJPH5qdvDr62KvDFv4Yh7TgwXX6n7YtgeGf1p/lfU+zzoWNFPr5rr26nliOQml7GxDODTJZB1u8bo1rvKGkQeJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719399803; c=relaxed/simple;
	bh=dj71jPlRAvtmYjw1dEOtVG8iFOhb4Kt2zjWs3Wob2Wo=;
	h=To:Subject:From:Message-Id:Date; b=cwVJXJW9qhPcQcDVn1gnA4pLdoGCv0hmh2nqJe9ckjE+14ealxYX6cLGY7ObhwGGoMe9sr7s+EQ4Cgnf2EHOIXgA89MkUTojLWEB2BTxUa/Y2JfYg84mkmPFsPXZEgWoHBDecM1YJNkI/7rBLFQd647iaDXvgJ9utvfta71QsVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t65c8rWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t65c8rWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81D2C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 11:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719399802;
	bh=dj71jPlRAvtmYjw1dEOtVG8iFOhb4Kt2zjWs3Wob2Wo=;
	h=To:Subject:From:Date:From;
	b=t65c8rWgIxa+g8Gxjtcw3Xbpj69EZcSVIG8qmiwZcD21aj0C9Q3SOVYWE6kNhh7T0
	 r5QJEonTbXsRVipC3hwJQW8IEEzTRrhrPEmOo0UzE/yhCuffl9rq3M/Wfvdb7Ga1Dr
	 N5JAmWqjoHGMXCGRjFlU5BBSksIDinYvSYrSdnZ8i1Tc/bFSNDdEr21qnyb6t8mgJ5
	 PP4j4jITyBX6FRt+0WxMfVv8IVLyNBTK39QIQpx/lLDqiDdbeIKBUXiRq5NUIZ+ssM
	 mqLHvEq29d6cPyis27Ok11zSI1igKESYCYO2Qn42aS7953vGKpfCtqfuGF3PUfmZoE
	 SnM9K+ZwdfCqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4BDAC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 11:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171939980279.12138.6720526512460730360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c77389efb712ecff5319df729d424f0f32df5e71926fc1b3cdf0a0ce471b737
Date: Wed, 26 Jun 2024 11:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719399802
