Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62A41D6DA9
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786224034; cv=none; b=HOWVopA9T5UCC6+69zFpRasKjK5WdEVsi69kGg+QRt/Z1u1jFFCeb3zApfnzColAozDQKp02bk9jYGXGIgsqeZjkL+9qJGmUIZCszn0gH0fydW2BM2XkpxhXAwaumUQAPRUpEooFhCVxrDp/VKghLE5SkoWSRI1IajQ2onhzaiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786224034; c=relaxed/simple;
	bh=fZs1w18Skb25YlOETCnhF2msasgoO2yTjduIMz62sdU=;
	h=To:Subject:From:Message-Id:Date; b=nmAr6axNBQPtRklP0NX34DL9PXYQ+EqPIEgH8cg8ENj5Y1VdyyB8+9erTiNd/fzCDLr0ihJxXFwq8OK2SonL56OgyknBV0DJl9UtHIMaFRs6rLoT69DmBwIR39MIhDW0w7QhfZAaGQc6iRrkMPPn/uuEnAKD6QVtaIM/qMPXkJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZtfH4WJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZtfH4WJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D5CC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786224033;
	bh=fZs1w18Skb25YlOETCnhF2msasgoO2yTjduIMz62sdU=;
	h=To:Subject:From:Date:From;
	b=aZtfH4WJ+Vjt5EYqzlvXtxV3cF5iE8egi5yQYBrSf6SUZNuWkYquo788f4Hk8q+hL
	 OW94GK4o2enYwaAcC311NHmJx5A4JU2cIuKy9zKmqBU0idpifwhWcmrbyVzkDOuHS4
	 sS9Zcenz+f2R0xsnEGjIo8NnBsuqBqFKQlGGRMMDKNVo9T+IUJHBrpo/ah5pd7/+wl
	 si1hzYGal05T82CTFzEPX2DXsncdAmYA7qQtfy6L91BpQlSXIEt4MryWt3Cl1KIjEE
	 /OqXWYck9P0Vwn9Wfq6WnhuNVR4l12piOpq1H4knsAHTefkEuZnv5Pu2PYHATz58xt
	 rQGSEs3EgIsEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE53BC5AD44
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178622403369.11426.3817508003221509643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d34e14de6c48c144be8a420e0415c80678f4efcb4500da54183bc154c2e8104d
Date: Sat, 08 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786224033
