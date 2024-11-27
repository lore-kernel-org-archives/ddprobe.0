Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFB31FF60B
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732717554; cv=none; b=B83lSWw/fsNM8T93tS78asAiXj5tkFFpPUS0dCa5nt2Y2/WU2htDpblSTcL43fn0+c3wK3/ayA/l8uFEa+96pp6CWMW+j/0+69KJEDl8tNH7mXidXLC+A/ZnL0K07Q0aOJlat4vCVaQVqj1rxu73AvZNHLznk12OmRyD8o15u7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732717554; c=relaxed/simple;
	bh=G5Ph8oGetsxZ/hGpxZl97Kofz2BG9cdULFWVsOJ3mnw=;
	h=To:Subject:From:Message-Id:Date; b=YWvC5fFA8yDYaqHLJ/ievs/W6pg31AviEzJp82LTVT4exfHiYBS2TaAFrDqD2j8jYCGyBBEPqSAawPP7G2k7+bVLIqIDW8OCAK4PXUt6wB12g7/tuHnJVZoLvll7SCav80A/hYzx8xHYy7/xQf4VknvA8m3uqEmBigALDFBDchI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBSV+Df3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBSV+Df3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE516C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732717553;
	bh=G5Ph8oGetsxZ/hGpxZl97Kofz2BG9cdULFWVsOJ3mnw=;
	h=To:Subject:From:Date:From;
	b=sBSV+Df3TT/yIipNRFKC9HR1Rv7FJc3ftJB1iIhGNp4H15mPv+vBlsQCkenfjUZ+6
	 zwrwhDAlSexdI2lk48Bv4WZG1P+6OQLmgqgUlPBeO83d6L1QwZdBuXhxXDTfF/0EGe
	 qwbCtSmX+VksG6jwX62OSbrVfXnRG66XYsULd7fHRZ6EOjAVUqvXfYJpto3MBKpvzk
	 UXlryjDI+n5NT6X0dN0RYGblBorHVVH4COQfemxLLWKEQPibt36B5aIFW58udPVvNJ
	 iGdazcElt/Hi0A2yO3CFAgiUW5hRsB37HlLvbi6mk/iTMOF3vVKtWzO4Eta7xuBCSD
	 lGaxbiNcWRWIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D586D6ACDF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173271755363.21818.4763853019713430238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92e557cd308ad89ed0d90489372d6e3168c424547e5b76d9df51f31e49959b5
Date: Wed, 27 Nov 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732717553
