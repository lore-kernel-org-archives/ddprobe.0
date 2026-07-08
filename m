Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D566D2E7372
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783496315; cv=none; b=dU0Iqye2JcvypEWAYjPPYrVfli59vRRqt+e/KW80h5h81q9MSQ3bzu0Ek3LpDkS8RzAyuovyP1EOmNjLbRgVmNJjTjA1Gl7GWtdwN+ZbPEol5GigDfAYRpbsUPDuDnEH0z9CWabXUhGkjiGxuPlCxyHTBFKXItBk7pCg28HnrLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783496315; c=relaxed/simple;
	bh=AXAFknwJfGRdVXFl7Sw2E6Yx1vNAedqmcAe/PTGTUos=;
	h=To:Subject:From:Message-Id:Date; b=awFVX+wXen2ureTGeipRN+w2PCkE6uss6KEYDc/hng2KZ8jvdjIOMc4O05wnpOHpfqjCvVthzY3s4/qvrZ+tsKTs7u4+uqEYv2DQo/zZAbgUjvfEJ0D/bWGnAk8qEgu1ybRTQVUlNYeIdEVBkUwYX9DbYj1Nv1eXH2Z4/2ZCAOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7GLe7KV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7GLe7KV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B71C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783496313;
	bh=AXAFknwJfGRdVXFl7Sw2E6Yx1vNAedqmcAe/PTGTUos=;
	h=To:Subject:From:Date:From;
	b=t7GLe7KVOkBgnP1sJplqTSXwjwK7x7GyAQm9V7TDNh+qfahByynoGjdXBe8RQZ26w
	 Tp1/gYb9IcMt+N8Hk9tt2N70EiCwvd0Ez165ALIrLaUF/3/WGqTeAD/DTe24ToTjSL
	 voZn3IoNajB8nDzceHy9vwnqFRjDngPktvmWFh8dttJqV3epb8Gs/rq4oTyNUP3HWB
	 kVqrPk/d7ANh/C7Sfx1ViTCCNCowWPSXTczLFgKNq2HMEx21j8WcHOJSRaFV31d3Sx
	 u3vP2vjJghXyHbcpknh0YZyvUOe1Lmh8WZ3JZkljvIdtWNZf74cieXFkjYsPvzetg9
	 eG2YMZhxaTjvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DB4C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178349631368.22102.5747578914775929915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f35e80178e4f43b362a7c38bea98b39470be3a0f9c9e82cf60978745a12cccb9
Date: Wed, 08 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783496313
