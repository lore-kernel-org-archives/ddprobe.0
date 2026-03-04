Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B9433688A
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772584494; cv=none; b=Txpl32GkElR48AtSle9Jdm1QgH68TOIfqnyQXu56OJlpnaxZKExX7HW5VzD54KIzeiDCKLluPBH31eVXO2LCPN06ysInTv5yVcYnJTur8H4GAfwHw6cG5e7hU/QOhmrDx7WcWcXLAH7lF2+Oet/6Zsmkm+uscoJwol69kFMx4YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772584494; c=relaxed/simple;
	bh=ZmSKE/oLLihjuqs1Z1D8LDzN5Jth4z9eStVP8yzaq60=;
	h=To:Subject:From:Message-Id:Date; b=TUwJ0MQHfD50tkooFarizkEouR1zCI3/6KocgIMUL57wbAS/cHN0bmZVbx3UVzNdzsyYyGD0+KJmUaj59fBPAcZJOpG9goHEkF6joGZes4RM4j951Tghe+QKtS9nkdXo5TaD4K6Q/0/piFF9H6DRxTisQXudR9tpBpF0izIGzO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWjHT5y+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWjHT5y+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BA7C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772584493;
	bh=ZmSKE/oLLihjuqs1Z1D8LDzN5Jth4z9eStVP8yzaq60=;
	h=To:Subject:From:Date:From;
	b=eWjHT5y+vWnF6ePLxwjxmNrl5R1rJqmsjcKtWG26621andFypPOcg00xxnKxl8+h8
	 mDx0cJjWTQ2xf7KGwfPWtcZ1C7qO0qN/GgPJOnVT2vt8HReTeh08Wofbsh5Fe4wqEH
	 Qhc2b8FGQugwcoBCBoE7oe/ffJT9kbzPtiOMlpCUMDQDrSZjGDw6xZqDT8XvS4oZNA
	 phj96qa+VGB9sfVsGQJhG71Lu2vr+tTlnEG9KOgAd2CzfyJzBecGjRq0wV9gCG1WtE
	 Z7hCSC98rCO6CDszKstC3e1Twuq7NKR8+CXhfpgUf6GrWLa1kjJmdLYoCVUbJRILo5
	 8BIIhZ4920+uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D17EDEBF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177258449358.23545.15913866646408688098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21ec72119fbd8ea8ec62b52190c1387c8933c6d48d1a0ffacc71e32dbd00e52
Date: Wed, 04 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772584493
