Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128BB161321
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721578554; cv=none; b=ssJqmEPKoDH/DwHhPJlb8l2uJeCv0u3Lk/WCXGy0/gaSEvqPTfVbfA+8FJWQ5tyYr85hFlyG/aR15giMufdHgJ6PH2BwhrCde5UxVRD8dXQ4exOhyyZztC297Kn9vtR6C6FkmyMHRmjjBoOwB/O1GbAFrnY5GlaSJH4boxwrZlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721578554; c=relaxed/simple;
	bh=01r9YPvNAf2MpUTXxdavul/uVKHYZs3/VjNHkFDxXUE=;
	h=To:Subject:From:Message-Id:Date; b=Zpfrd/1db9IQ42T0Zs/DgqWueMGmL3NlJxEgm2428/hq9YctYCytO6ku6Kfmn24kRLJoqskD1N+3GkBLtnPnRDrX110uYwqfUQg2LQRAjDGy2/LB5nYD+SN7/iNspyPqQxeZAxnCkdhsmrhh0AsaOS7R35J579i9Fj8adYgB60w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3KFJS8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3KFJS8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB308C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721578553;
	bh=01r9YPvNAf2MpUTXxdavul/uVKHYZs3/VjNHkFDxXUE=;
	h=To:Subject:From:Date:From;
	b=d3KFJS8wuoewtP0kjNwiJUV5se74BLFAPCt69BDy7g4pK8sMC2sLUsevoGi4F/m4B
	 FlSkWltKY054PPoqMhTNgx+U8VqKHv+uGGkT85Ku6NVaGRtXswfZvRJ645JZBtoxVT
	 K7MqL5ZPO7jwEiJO+ck0+huLHLKWMRhlODDrw1WilmXPyWJmpWybcE0Ku2kNPE9tpr
	 mMXayw8lG0+u68VRLqBfc9Qdx28IdG+waT17kmYe4uhPKI3Ax06hrBdiJlwlkUL8xf
	 y/aHwMahI/Hd64EGcDiJthJktsmx+kYektUBItjORY9Os39wkd4AW1E3ICK+NMgP2E
	 a0vU0gxxa3Tbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BF3C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172157855359.15592.3433664992167868160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1167a1ef2ce69894f27cbd0a01db201813308f5e612d5f340d308e5a034ff540
Date: Sun, 21 Jul 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721578553
