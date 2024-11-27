Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B25413D89D
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732686954; cv=none; b=r5LQc6xcJUoXiDOreg9WN82VfLRuKcwYSpkl3LvHjnrFx5FrjZYcp91lg9+TKq+pWlFOxRlEnCery88DcmKIoE8ekkhB0Rir/ejJxaMe149szLDWxRaIVIInCbiClneeh+Nwl6chOBV2YwsD88jEYEpdWCPIwMd62nNA/xSE450=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732686954; c=relaxed/simple;
	bh=IrA70uEaUPiJahi2CtsdJrxOAsSnF5EqvbXaBIFNHxg=;
	h=To:Subject:From:Message-Id:Date; b=vE6qV8lgdfSlNUmEohNBCzqEejoz/vt18vOd4qjn1A75CjVm2h+kdWQT9jEfHxXcVwt7ihvYXInzIxOvKg0N+1YeyIozWVlNGsJYJ6QDnBCqAPTyZjxkUKXeSrZ5KpK9lFpHIwSHaQdDTO2UVqVmZf1GsJblSBSp0aSfr7GUnSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKwqp/Wf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKwqp/Wf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82D8C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732686953;
	bh=IrA70uEaUPiJahi2CtsdJrxOAsSnF5EqvbXaBIFNHxg=;
	h=To:Subject:From:Date:From;
	b=AKwqp/WfeBXbDDv2J6WWWI/6u6wjseN2RhpmljiOIzwaCJ10mHA87CV+FaWjBuUwi
	 7SVr8PCCiWQbwGD6LGNc1N6mco74EIjW+JVXTEgt8j8q1GJWcqNOMYS1C9UDKrRxzJ
	 ucH4iVH3Cf7+eDkc/KYKe9EgVbwYBVzQWw1Q7qksuUY4TzM9zCDPDrq4SOyBEuj5S2
	 OGiRl84BZNqxwpccYHAsBdT20VJFQl/rDmy0RHKIFvcSg62fsZAb0z0+hrMg1F2/x8
	 t946upSMpyy+VVct02QE4ukfSFKxyIAoWMl3TNNm+kWxbzYluD3Sx/SJ8n8Odh+8C2
	 HLAZmZU5t0g5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C19D609A0
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173268695364.7691.11408279642722047743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b2876d3e8a42357d02953d8f58ec20246c3098c0403d1145aadf1458ac17115
Date: Wed, 27 Nov 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732686953
