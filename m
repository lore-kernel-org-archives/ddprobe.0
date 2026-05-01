Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7FF1E492D
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777601254; cv=none; b=EDLMmObX/0Rg0vhqEOiCzBJyWtYAzEDu3Kosb8cg7MN7dx4EUoH/zgLPLCNVpP4A5000Ixl5mlTnxjB3LKdimzZB/o9E94JwF9tCVlICu8ut84fKp2fTiNfsWzWPMgUU8RBZLIT1MPqvIGutLvxvuaPKzUpLmwkSeOk6ad2r00w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777601254; c=relaxed/simple;
	bh=OfeTT/2iJpidw2YvUHjeOYLTpir9VgajoXj+3Z266EE=;
	h=To:Subject:From:Message-Id:Date; b=Ozb9AluMdM6uKSsJzsE9QzA8HvY5LqqLcyJ9MAqMQrLP0W+SdIJLoQs498B/ecAMOSz9FGoNMyveA/l42dwOF+H2DHACUaG1RFc77snprd1MAYKDGtQryPGxXvTRZCWYoBSXKaUCExnZGVAGaJcqG4PoH/EwKoWS7USLoE+/KPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gurj3bm3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gurj3bm3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4F2C2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777601253;
	bh=OfeTT/2iJpidw2YvUHjeOYLTpir9VgajoXj+3Z266EE=;
	h=To:Subject:From:Date:From;
	b=Gurj3bm3ezXr2mLcJploRsctE3IdI/nnSjcXWsERNIkNUyjWelihGPfWiIfFXg6wW
	 jhFxDV9VFE3AmT+zErN+N80b2yX59yQ0Ux6rzfdONPWzke0VnvSheAz1PSDGBrm0Id
	 9C/ECP7yVkV1D6QaODyYRJAu+9RCffdXtaUHrvvPRGAUbmMxQqCw+IhAQxoEEmGRpY
	 Jog76qa68Onl1B5sR2VW9EkTKkflqoCQBCozuD03Gucdx6vFPluUVtmvDA35vhNOPw
	 7bJv/nVJydkM3ULGhQ40ZvxztDdWJYT7JvylqDCb9IAHt7Go8dU+tPkPAigC/HPAHm
	 WFgCFH03Nkphg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFA6CD13DE
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177760125369.29493.18417067446618983906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8606120bf94b7b933ad5cdea02649627611701133af1503b59bfe5737e63cb29
Date: Fri, 01 May 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777601253
