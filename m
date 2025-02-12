Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3931FBC9C
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 22:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739401134; cv=none; b=gzGBeT13I9H0zyQNW83M3dBnojgzrSU50dzqT6hTnN/oz6Kl63fYCZPRFs7VC5GyfX9dezLJu/CbNN4miKenY/KXlAKDBljaujdQRg2J9UlfUWYjnEV+VFvTQDwSBcqNTL9b/Rz9uR8qmStbZbClmX/bvr/is9XKJ5z5PXLisgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739401134; c=relaxed/simple;
	bh=7Nr8nXEQ8pdgSZxfRqpPTJV5MJtrObUK39KJHUxJPk4=;
	h=To:Subject:From:Message-Id:Date; b=G4DYCXqdxaVevv8Koi1EcW5CyUXvu5bl2pKjTE2Qf/XAcRkWuHgAkky74DYPo1gUsAtTKV0OrMg03b6IHXi+nYwkVV4Fw88YhsrNfzKxP/aGsvRSMAbqqtl4u3T9hBYySok4yMVvVYINkHUecDDgrIq8x4htx1ygeG4A0eFKc1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAUWRZCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAUWRZCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1D8C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 22:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739401133;
	bh=7Nr8nXEQ8pdgSZxfRqpPTJV5MJtrObUK39KJHUxJPk4=;
	h=To:Subject:From:Date:From;
	b=sAUWRZClRdpXCVnwlOeIysdyDLhstVu1VgVi7Y+k90BMBDnfGpyRJYc82uaQsDfsN
	 ZTYlPQ5MfuSOKBEi7bbRh+vC1S3xs3VVCku+WbVk2nbEDH6s6FWv9uCqhiYfGIAZms
	 25GZxXIFELu8x8EvqZ8ZUUsmIu05q6OQqEeq91jKnu3dYOT8H8Vd/uaY2qo/zZdpkG
	 HMVIlQpycHOYAbr5/jbaJzNNj4RRzp2cjBiREzWaRZ4nabVhYQI8g9F4o5lGTSOTsk
	 prmek5ZRPb45Us7hGZxUIDj9caRQSxjgkx44viFfuIVWgb3Lxiw+yrShJBke9izmdo
	 obbI5mWcM6WKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C05C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 22:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173940113360.10004.7614347207679895186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2c7a314f03146283b5a3adc5a093b75d4ed41b058fc46b28a7c48c73f2dadcb
Date: Wed, 12 Feb 2025 22:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739401133
