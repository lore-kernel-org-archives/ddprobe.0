Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DCA46425
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706878097; cv=none; b=tDEEb8O82R1QEIf+i+XG2L6CGUF5iHf1ABHNlFAqAU64/UZ3NCp7QxdZG3CpAEIjN858WOT/6GnnYuI2ckylAuLHYih5bSzXhzu+iaYxrofnX4T7tOO+2XVkwAPPsFSkAOCtEvf59v7H5HSkIZUrOGi5cc2lTtNU7VECFy77ARA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706878097; c=relaxed/simple;
	bh=OTWl3OUfCw/Oi7iAWufiF0ExDZSndnQ04GMB1m0DUVc=;
	h=To:Subject:From:Message-Id:Date; b=dFnrJuI+Jd2aVfnG6VowL8fcntQzZQex0SlCIkqHcOPby51UbdDZykjhJEBZ0aDoRPwtF4w94tRfjOHj39Hd39BLCYQxQ4MKD1jt0LHaudSLF/Tub/4o2d5cZJP8pC/S8jSslTbB36MjajbSGHKAPbMo1HojNpPJKXDwmBCzuDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKPrr74u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKPrr74u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D2C0C433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706878096;
	bh=OTWl3OUfCw/Oi7iAWufiF0ExDZSndnQ04GMB1m0DUVc=;
	h=To:Subject:From:Date:From;
	b=rKPrr74uCOmWuswGt8FQGXm89OZhhd0fQs5oBFoVyCJBiF2ORsbWPcRJqID3spa6F
	 JEwRT74RbbrQEOLqGGqLnTT2fiQ+D/hoFcEqL2Wmb1uVqK5uqFVtmi6O8BxD3mY5Qj
	 XZPVPncpiw13hjheZoPPf6dIpI+UF/YpAmeFcSdnqJqa5Oe3+vJqltoapfYIODsWN5
	 KSeaOQpSFVs0ZxwU12rPF0K0/AEx2mw8vOQIhuPEev1mxSMME7CxdWDm2CRvzevJay
	 Q2NufiezaAmTU1gSCc0u32VqTYyHlARCgLTlw+CVaQAPBzoPNmSyu7q2yHArrzvubA
	 TRAbiQjDQ5j+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 605EFC47DB3
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170687809638.9212.2184381834710233453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eac649c1aab606d7e0c733307c4052036baaaee9a1f666b94d5b152b7adeca7
Date: Fri, 02 Feb 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706878096
