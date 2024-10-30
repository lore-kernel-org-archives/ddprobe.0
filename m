Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A228197A99
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730268954; cv=none; b=ZJmTYo6Uld8+9Q/WB/7Kuuwow+geQaodq6yrj4VCqFLL05GL+X5ibcqcJTlwzZS8C2EEJoknnWccgFDB2DLEGEtEd8WctP0seg+rtF0kJk8qMHWhgE5wAxek8mv2AjgAVD294sqPo2nnOMhGAVQZ/OaQmz/hzfN5SmeOCZKtzn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730268954; c=relaxed/simple;
	bh=mAkIaN+XOSw1lNKAATF1xcydMO6wSwNS/DWUKlJWhEA=;
	h=To:Subject:From:Message-Id:Date; b=dMDhCPv9MILjwLtQ82GakTC9IANDbazDxnrfVla3ahufr4pxBSimnlmiRHIRGS2oLxd7mKh4A+s2StfPKrStaJdboYoJ7fHFzk88GoIO+7pwj5wDZoAuSgj9ekNaiNj2usaZdQr/23glzJh5MuskOeBm38kO93HfpMz9caJPh2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdvrKvf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdvrKvf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3CCC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730268953;
	bh=mAkIaN+XOSw1lNKAATF1xcydMO6wSwNS/DWUKlJWhEA=;
	h=To:Subject:From:Date:From;
	b=DdvrKvf6zkVumLMuRRBLmpPqfHr5uvvqJTb49sFD5BgpSR4IjYPeJHrImtdvW+SH6
	 kcoRPoWDJq/3nwxgyMIj5DauvPXWKNvO47EI7+e97rvQTtV0lTgurwmZR62pA5kTU3
	 zq69+QN2tuO9jGCde9nxAN7osAz/likId78Luvg0KdkJq/f4Q5xIClljr0/Pdpfqma
	 kHo4WV+NDJWzwTK/JwZO4+B8vySfJNXZWX46AfTfMdUI9eybdes1xrD8Wk7Q811kt1
	 wdPLAQl9KUMI9N7EmREFR5iF8ObGKZXnEPcPpwaUvm+6wGK8Eeif5xd57tzRA/NJ/7
	 FhELefTeVMJwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC495D74963
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173026895363.20451.1865472331861033370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9e71b6c938c7d50730da92e835059550cf536a9abc9d0776f7600bbacf5158
Date: Wed, 30 Oct 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730268953
