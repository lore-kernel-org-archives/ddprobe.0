Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B57026D4DD
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756649394; cv=none; b=mepa79byRd0orQzQb52HrBIGsnyhCvtLby749S38ZSy5bzL9q307ZC0O1M2qe7REBAt2IAzjvK7QYqaXJhAe4YnUguYAPukEDD8MuQvfeHvBi62wpO2khFLnM4GvpCFPPhRurjCeN+Dvk82zWqJRC/24Zpodkr57hN9Q8kKuDCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756649394; c=relaxed/simple;
	bh=yjQmU4SBGmYjjaHUHUJI+UiPZ07Kshbi0kzhaIv3Wa0=;
	h=To:Subject:From:Message-Id:Date; b=Pd0+hUzpsllYtAYuXGkO+sDJYJtiu4bydyRWGsEPlfqi9vg4Obo2abD8tAj6a/OB8v4hKv/AqRZhi0ejIMWTP5xMJ+PC1/lLlVi2aXeDm7gt5gmzs2JOrODYRRWNt7K9Htybjym4bQ767GIRwJhN6/JDuAwVWM6RAKAK1/dhZQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDL7ry68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDL7ry68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1990C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756649393;
	bh=yjQmU4SBGmYjjaHUHUJI+UiPZ07Kshbi0kzhaIv3Wa0=;
	h=To:Subject:From:Date:From;
	b=cDL7ry68F4Opl/diE+90/PBamdXatUqoRitKG/TjRbnjtXZc98RJjCpDuhIKkNZj0
	 v7v2fJ6EIsKhFMDDNqPjHIRmT7ryBMY5Jv8vMXsRIwMmPA8GB1Yj905jNCfN5GOJZb
	 5s4VuG0L9u2XzKZS2t1HGNmqjV3USXd3v6SYEqvTvQHoS+yetHA4kNIsB55DDWoo+8
	 7KkGKynUXb0ZG8umfZhZ/XM4HmVHWo31ZLoRubhTU50MpyTycNrryeOjvvhOrIQXZX
	 yDNgX6OfnPVgnlsndh8GdgL9Ekxtms8YNxpBvyk8v+QTmLsN3MwW7tuQ9i0D3WFLKE
	 cR2kTGxK1btGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEFFCA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175664939357.17049.6918766329143403518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c76ee857cd65b955c0b9f8a516840f498f05553660e51bf84550bd9ade81befc
Date: Sun, 31 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756649393
