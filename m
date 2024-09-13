Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218C35811A
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726249554; cv=none; b=RRHHuueiFbLdjvoOqsoKurBn80bDKjd1Zp+rHd81tqG9OvUMh2/HgcnPtL+yS05NBXBANRaTBPduRMPGAbTyKQacQ0Zco/W8aYrLRZugeE5mgRJrLVnR4Pe1g42jA7Xv7DsSHWZK1RVwmkfLAIIpCffDhfKDC0oqqcrJVsRewAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726249554; c=relaxed/simple;
	bh=BwVbpmva0ANeOazeGABUFAD6xGU0dKcx8925Oowao4U=;
	h=To:Subject:From:Message-Id:Date; b=Nyw9PGEHWLDRB1pSbKq/LSTkXRnSP8O1akYI96KLf5M1kbGk7mjEF6BI/rWI8jG6xdUi0VL/hSjj2VRt734F8bNFP26nW1hUkoCJ5M1nNYad/l64v7LFodMVVovASJJXrxJN7VYmwOYLycyD6fw/iXwG2VmlterymeP7mbB3LN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8v1rJw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8v1rJw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCC4C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726249553;
	bh=BwVbpmva0ANeOazeGABUFAD6xGU0dKcx8925Oowao4U=;
	h=To:Subject:From:Date:From;
	b=u8v1rJw9KLhy7sQHOeMUs7dRJ3qq5jfdGl+wc3EavFxUFZ9d2VmSV7VTov0jAqrly
	 yvkH5FjSfSTGHEQ8N4WUaebvtj0n80CTR9WLNykjtXq+MZggsSXdAQykGIcG/lgo4w
	 gaZ0Q5OPMHVz1bnyucZ99cLHd+zIgXYjHRBuzTzZ1SUc+oDxbvs5uDDsR/7YOJXGOY
	 U04zrNworHjthT8MEUn1XVltx9hreCJzG6Z6gl858j2Yydbi0hCevnePtRpaArYzVu
	 UpNn3uvEVKjI0Tu85o7BmZ7llGDJ+0Z39JaWwuxq8gFNkUNNK+WZYi1eAvv6NvNRk5
	 GQXaDfSeI4sjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD12EEEC17
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172624955362.24689.13427658739692331131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7d1320e035c6fd3f867a4bef1195086832b3cbe7aa61a6e1d5426e14b02dbb
Date: Fri, 13 Sep 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726249553
