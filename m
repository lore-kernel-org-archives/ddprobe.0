Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E163D76
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726619154; cv=none; b=H9BECrGh9H1KbxparIufY3cGVwiFkQPDCVXyULsOIgOV/QwrpEj7ZEz6OVWOVHv4XhqxePpTMSQrXZl9o77rbuHp/9xsN2zjsksBhPQ7uxDzN8VdUYE8rxtPd3Dy/5BQeruNjKVLRb+T/Abf4rC/y+L4RIAV7nKDH+pZX8PdUcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726619154; c=relaxed/simple;
	bh=kMQMZ0pwH3VgEbas9IXRvNlXc7g/bE4YLYuH3R46+tQ=;
	h=To:Subject:From:Message-Id:Date; b=lOP6wn8fMgFxZW0YAyS5Ec1PDsAct7YbcccCrBxzxwbRXGQuxjDXPDw/xexJcpFwZI65il32TUR8IMrhkon4CiT3ack5ZXNf+/no9/qRbsGBrdtyAviDuRso5WQuxdHPpXWvgOmB1/OWpct4AlmjwNHDjIz9AM5WUzrC8ysVY+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUrEcCT3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUrEcCT3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52CAC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726619153;
	bh=kMQMZ0pwH3VgEbas9IXRvNlXc7g/bE4YLYuH3R46+tQ=;
	h=To:Subject:From:Date:From;
	b=lUrEcCT3t8SnSWvRLGnnidIYvaIJ10D/I24SkGdMDLRYmvZUmF3l9uL42Cxsbk+NF
	 8D3/2EIIm1Ip+dp0lBtb52Ow7Oh4dZq8eolTBGgc3NZ791n3GBEr/Zq+pANMmMzPOt
	 gTjFXOI2AvetCqyrSvK2t4avwZAS1jZXHbQsXcVOI0jYDVGFmLsuFSB6BFfDYF6UXA
	 kBbu6S8YYP//ApBC/2o2r6La6tE5HefdcQ/Xjm7uw+pXpVeoR95zgnuE52NC09WdLN
	 MBqgwHi1eZd61Y4q3YgVgYjGTst+NEHizQPPgHan/YTsL6traTeYf6xygDWLTM3y4y
	 5iu5QP8IgUZkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71F5CAC5AC
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172661915363.20445.18338793926758147411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4afecf90e5a26d1f572dff7bad1c01bb2d3c6bebd6b2bd1bdda0bb65b523dd7b
Date: Wed, 18 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726619153
