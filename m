Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3269C4C6C
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746148194; cv=none; b=QuVRk1m9Ffveg3tqe9hHIh48IerNgNeJOLHYdIKum2hrCKpkZCiMjrWQOY4Pv/U7Ih0NdbsVDMU/Gcu/RiG20LWWP+3cOQbfS9BvszZihy/WJc4xlAUor2YutJsHxPOEdUnObTHNZ6HMcKfFt5mDKektJWCmDq9GPhUr9HjgIkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746148194; c=relaxed/simple;
	bh=3ORl6Deelqr9lmTyJuDQdDb3NAGofqo5pOHTLa1U4SA=;
	h=To:Subject:From:Message-Id:Date; b=tSuMwMxmeIQRptB14N1tWVkwR46jCNpCCZNFfBB3u+usznWsy71YJKGw49rEtN2v4eUraqqGcsN/GiVwnlT0myX9M2ITMZeqa2pdcOaX2lqpbtOWF68YHEFupi3TwtbDVn25SGWvtBe69+t0QOm4L8UgeMF5l/ArIb+e4IEVMgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gj2ENblQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gj2ENblQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A379AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746148193;
	bh=3ORl6Deelqr9lmTyJuDQdDb3NAGofqo5pOHTLa1U4SA=;
	h=To:Subject:From:Date:From;
	b=gj2ENblQT7VZf3dlUP6PH9OK15rAOv6sjB3qr3+ErrEdCqu63jfDg/y1BJlRob22F
	 Q3EucBCwWazb9Ro5+my8G9zCUaFaTtDP4FhKtDewCgMRGCqxAmkKG3pmUPoIfQmxnr
	 tDTqIX5ABY9BLwUCR/7NVRW/InyEih5iIshCvCqvcpYMGRfgAxZYBGsDFhe0NvjNBT
	 X/q0Z6KeojkyGpRFL1PqCw1Q30ud9bwtaLkKGODpDmS1RbleDs716Ha55fB+yBGCgX
	 hkiGUd2kIf9Ws6HKTNCD/KGCqZNUQMhD8XOScchAO6FTwPKV+8/c4TPgrU9WeOkHHB
	 dRTL9Hh8hqhVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95243C369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174614819357.23697.6028376027739046576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4200c6a54a8d71859c5fabc628ed1ba7ccee20f0c43a8313b7a5ade85b9ad03
Date: Fri, 02 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746148193
