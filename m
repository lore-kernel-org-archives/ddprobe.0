Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DE14431
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754455194; cv=none; b=YOXQCSHTKGeHTxWQvoLv2oCuLVDaK7kUdPpxJZbJBlUGlOGh1uhqDM3eH5Dzs8Cbg16tkSHuW4r7ioKxtTQWHB95vq/3BuHa39U4nWfYqHGrk/pdiUGhrwSEda4EWeM/cAAnM234gIxYoioh1ZCKA7VTu12UAt6kWMHYt/vNCCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754455194; c=relaxed/simple;
	bh=1lL1JehdWOwXJ+CBJAlTKhSZiJa83+rAGE4l9Ky5tag=;
	h=To:Subject:From:Message-Id:Date; b=pPK9/e7VfcME/8PHH5hAbwhXS9g1n2UBAoHrITxdMklUumKuwyRm79k+QU04P7GpHyTzuFoP0Rad+yf1eiWsrljK6DX0t5a8Q4fjwRRA45Qf1KJ/RkscGTnYJXm2jCLBahPGfZURTpTvGaQPqcNiYt3D3EuVgnj40HTDqO0yock=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6elvuw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6elvuw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E27C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754455193;
	bh=1lL1JehdWOwXJ+CBJAlTKhSZiJa83+rAGE4l9Ky5tag=;
	h=To:Subject:From:Date:From;
	b=F6elvuw3JDWt2sZyM7uSajCwZDe0mHCmBLuI5otGiie0J3r0BHFFVI/GLiqxURIyL
	 oakEopelS36dB2TRiR+hqi0p3FD0SWHGCa5prjydYtyNW3rFM+5eDQULdyWQbR8uhz
	 dE7GnQtjdsg70RPwBKv1rx6i3wwLAAIJ10daHIyaCr+zNUWyUGAF/XN4FJ4pG13XtW
	 sXDMzYW5RxE0wSXcA9Cikk+HUpWPohV+ZbKPOFoQanZ0JcbMcR0wJIeGTCNEYugTeT
	 lDVkWjzaAgGuj20YiHLSq9RuNSN6P8+NFRWWQdFHKE+u7B51swbvztAwVmas7FjdIJ
	 w/hgEQUoaE1hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9485FC87FCA
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175445519357.23326.9636977359181139445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2eebefae5c1d9f51739cb599f0cf905e7013f0d7a49d634c3d5c1b5769a610e
Date: Wed, 06 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754455193
