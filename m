Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05310B676
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758196194; cv=none; b=uVLJ9KVKcMU5rr/aOtoeNkKosxfJMhhcl+Xo7rd6Sm0a5j/enZusLSsA/KchUPzONLbDGVRB8TMli2bru4Quy+NNcyreVUL4ZWQblkWOukHY5DA23RHVotpqxDgrxLSbIf+YGv2AxpKolC76+yPQN0jVqoS9qPOv3JB7kfujkDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758196194; c=relaxed/simple;
	bh=bx2vmVQga89MNcZOVEkNLdu1cuZ53eStPz2vryy55+Y=;
	h=To:Subject:From:Message-Id:Date; b=JDPc9QPS+pw94pKElgb6CiGp/ZopPEqqlA0DsVR2JAUaxa8hefwocryIaFB1OxxrFnWk7aPy/NstzQK2Wi+WIeYYdgrgO5eOA2/Cfn4yZIh9iRRiOwjpoP92jgFJeiLdCXZXahQDWlKOOrHPwlTTyphg2XryjRCk9RWRkYdPrbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAncS+1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAncS+1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A125CC4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758196193;
	bh=bx2vmVQga89MNcZOVEkNLdu1cuZ53eStPz2vryy55+Y=;
	h=To:Subject:From:Date:From;
	b=ZAncS+1cWGeWZxXfO6XuNovF+5crAwbX0zUeXgPiChrC61GnZ7sYlZpVpNh4az+gX
	 mHktpayY3xSbWyciG/CyOJ2ARmTOua5oLzeBR4Q3Bx4iv77E/S+DKKmhdhPt49Caab
	 mpcAdF4rFWNLN0Dk0MpY+INQSn/o6/1OndMgVQdYpr5L1Ipv8os8ViWB1O1B4Er2hS
	 s4lkY2kppnGahwRfuyb/P3Vv4OW+fNq7FQKbyPv9Tt4Sb8uLD/A+ra3jvbi3+hIASl
	 zbTkOi1bmrS9w1TLw2cNqbl068xJqFjVdSIlMLFL1ziwQlaEICLFlXBJy4E7ZphmdE
	 X/cDosSplvn6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA87CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175819619357.30848.10932563553004799240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4c247ecff890cf1f19f7cd648df38ba7da6c25d673b1e40ba4b10fc9eaf63cc
Date: Thu, 18 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758196193
