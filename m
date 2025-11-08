Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEA433E7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762617594; cv=none; b=RWDmMeQtmg1En2QmiyBO2bFRvWAJvANLaLSVKz7SPSWEl4zyBz47GTy+GIXUVHc0u8sZ2jK60lq4D8MOM/KZ9KNPKRla9s5XlSMvrHVXrCuZRZkMgCsxWuPsq98ud2CvNaldn14zzITTF7eij/gbl8tIfmumh8xf7Q9giMOuV3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762617594; c=relaxed/simple;
	bh=AmZdtSIa8C90MFQSUnS3Z0btWweSFJ225tBSWKtqh+o=;
	h=To:Subject:From:Message-Id:Date; b=qgd5+X2KsC2SgADJqQ88a3nOUkko9S3u2hAbNU4WpxzPzYkdIzYZ+UTZjKEdDHNP8Q5TD1UT+x/WGei/PaY7MnDd90+KqNYyFoKACoX2v1GtnWAubpr7hEPHbMEpt1/vISnG8NK++YE/db4/XtWm6OZ8RaSb1nwjaUgA+lumnDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMoJED/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMoJED/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09E8C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762617593;
	bh=AmZdtSIa8C90MFQSUnS3Z0btWweSFJ225tBSWKtqh+o=;
	h=To:Subject:From:Date:From;
	b=BMoJED/UDo0xZQbDCimkbucxvuaaqvOYVPL9BI49bt4nlCH/FgfpPuNCPSCODC/sY
	 jK1xztyhG2m4mQXloD9u4Vv+enf+DfdHRoESrhS4bcRzWsQzsCdirHadpxJUQ2oTLk
	 o4X00E4zy8Nn3+HfuHpcyuGobEDWiJcrJ9atM/ktmpWtFcnmxInoaXS6dZ89OE9xj9
	 jURV/kCEgt4Sea7MYplzdd2k5A4PVDvxujGCvEX7aXxqyajHnfV4OeDfYdB5p+RIzY
	 PJirVM7HeUxWeMaNtGAu69hSU8p1PH51+Htx4O4Mjq9ErurMeIQJDjP5TFISvmEhUl
	 rINg2IWf6PcQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91919CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176261759357.5944.11783115117161892936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ccf629f6112199831a8e2189ad86ee74e1af030bb021626a7738b7b0d2b120
Date: Sat, 08 Nov 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762617593
