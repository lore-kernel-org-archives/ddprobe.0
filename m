Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156E7346FA8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777521454; cv=none; b=t3tNLUbfZ71OPosOwErHHFbOYKFQt82w422oPysWIGrUUmEY8hpJXSg38/Gk8i/ars5lSyTw/aSbw6smhpnLVaoDfhUVGMFGgIJq/ECG2IbDojfe0z6fLZx0TdjXr15/gbzVNvU3pRtS5dO4a85rtkjrSgcl8XHfWf4qV1Dra3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777521454; c=relaxed/simple;
	bh=EdTu01/WbbMMVjJ4pZEVFhscTVC53EkVgFZiZhK7Dv4=;
	h=To:Subject:From:Message-Id:Date; b=pOTtcFZ543jkwf1PHv3g27L2Lc90LyPv4zUczVywvkc+roMgjNQbrdNVqzUY6IVYCc8vnpXyDSp2CavhNcSuMbnDOvJxfOQVfAhh5jQD4qLEeWKEvT2XE8PqpEyFGp1wuDTPshAmnW8cM1SebZimJZeey123a3UTC3P0lQQOGXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQpncv4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQpncv4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6399C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777521453;
	bh=EdTu01/WbbMMVjJ4pZEVFhscTVC53EkVgFZiZhK7Dv4=;
	h=To:Subject:From:Date:From;
	b=uQpncv4Hzcl7OdPhFadCbfQIAMAjrgPswq1VSUy6iOcso5ORBUEnfSEGw/frNeC4J
	 rVdCCPVRrqoUUgt2ScdC8/Ehshh+QNrS81v9rTi20LJ3bynTYFkR7SK2V+N09pqonh
	 ZuOL3GPwiOghIo2ByS47mSF/uZD0tHONqzxoE2DMUwv5RqkggmI+I/3veYuDuWKuZc
	 AHonx44AF/E33xgh/vfwV45jI4SFgIwnUMnC+PV/2hxwgGH0n/J9W/o1uAcqgsMdVP
	 4/COItuag/qa8N2l80/jsFf+Yf1iPJpSnYow2Iio8tahSq3Udjjudsuci4EcRSj58G
	 139KMdsX8R6YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA420FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177752145368.3713.1190057718880722681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb52678cdefa193db3eda5ecf8eef2d783d143d305c67480cbd1e3a9c248210
Date: Thu, 30 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777521453
