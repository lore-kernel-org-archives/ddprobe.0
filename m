Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FA3530DEA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790173234; cv=none; b=prZU2rE6Kor4B5kRtK2ZQUkfB9z5GvH8TdM665Z1jXwfWA9Srq949JeL5A3sgu4kJ4U6eyDvvi4HZJumTiaczw8RKl/A3zvGBO1S3ZvPotOyI/BwJpbyKd71KrykXHgE/pA5cTTNWPfU4icDIHL8tl+6a1uu0rFLtoLvk50s138=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790173234; c=relaxed/simple;
	bh=L48SX6ShrnA4LNL5SpEtvOA3SzvDUeKlas22WCu/dBo=;
	h=To:Subject:From:Message-Id:Date; b=CNjgoI+HhAU2ZZYTK3+n3179qJrnLWtM9HV9IemaF2/uZkczJMY0zCbmo/1Y+I7YXMGcrPA7hoWs4QpB/64/mh/nTvu1/IInjHwlJmvliQ7DZtrhDNuC6mdoIGM2Sq94j3hOvs5GDWFKSpsUCz9+qdENG5efK4IppcGlSZSAbNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1gKOMWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1gKOMWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13A4C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790173233;
	bh=L48SX6ShrnA4LNL5SpEtvOA3SzvDUeKlas22WCu/dBo=;
	h=To:Subject:From:Date:From;
	b=N1gKOMWrB+Zcl545IGt7Je5iUW9xg6qnNz4kfp5tgfl+GX6oagG3h6npgRbOE1Xyv
	 STMSfGoLvqM4EjHGbBvl4xvJILpgVyNvU35tKGxew16n0uaAdjVCj0eLFq0mEmpix4
	 jKO7TQwd0V5n92OKuOxTZi0AFga6WS0ndHams5mOxAcxw5S62GyWhOLyiagfvjajON
	 nozSXq9AWkpkawA+/Dr2rCUqHoQOUXb8vDrvaD0wKTFNo8B7L5A8yAHJU4060rD7KF
	 hKLg/ZRZw7vCxy/yExIvnUsWcoFNKuDucIkgOcjZKhnTvM0XmTVUfAJD/2dEQDoLVF
	 zj2F90X73/hmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEDBC98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179017323369.24886.8763784346744377125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306fd805802ad26101d2971b1bed7785f702e156bc26bac4b9946730898a73e0
Date: Wed, 23 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790173233
