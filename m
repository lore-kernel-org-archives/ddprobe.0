Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC5454FDA73
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790784634; cv=none; b=cz9l2cakhBsDftMFwrNSwX2wAkU2kPqkYR6IX3eg1hgdBpcdr0eyO19f9fH7RFqwtgkOvVs2ImgsC9sfATF4OCASt86rde7yfSE50wfNvpV6Tpa6PxrnWqiuLq8WcSbabQaOB+JdRJX6mM+hNSUKa0WAyp3ZmJlxN6eT4ooVoyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790784634; c=relaxed/simple;
	bh=JDnonxgdxsenMYf1Qsc6xbp9MQOt11QHopdHqaQCdwQ=;
	h=To:Subject:From:Message-Id:Date; b=PpRk7fMQaI2EOw7Zx9KwSlBX5ApmyryCYEcCtSYhGscV9GIkRS5y9SkspxA1uy/u7gLIs1pdN97VMQbZGxVRGBu+yBxELWsHa7sqDJ9S0frKaxE5Wd09oU0qYTTmtnysU39x/fjV6HZK33owTJD3tROrxEF5v+blRGZjn89Q8YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AH3Gt5Vq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AH3Gt5Vq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6B5C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790784633;
	bh=JDnonxgdxsenMYf1Qsc6xbp9MQOt11QHopdHqaQCdwQ=;
	h=To:Subject:From:Date:From;
	b=AH3Gt5VqFLR+/75p2oT83GJwImnqYj7ncD5VmnheVfzPrnREU5nttOhIKWM/uARSQ
	 bBZXSPQSJ5pGm0P4jxKr8eBZXaI2TY8ZVaQH58FkXLacO/8xNDf+jAQiTzZQKwDodf
	 Ah9Hm0FuZNB/MpwAInyJLpxynKSHaf+3dBftppKaT1gSqaDvysla5qzYdUdrbiWxby
	 maZZOg3kgXppFrxGNJkQg+zxyHP0S7h0mhh5p9wLDIx++6+oLat8EapWAHtVgfFBp4
	 bswfEbppcK7ydUdK4nSrgBvHZL5pxbN+yVGp+mitUoVMH/4iKo5D2sRXpdQxv7wimw
	 hw29/nPV4rlLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0ABCA5FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179078463368.1212.9548912572886102398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2327313ccf48a8192eeb0fc4df919a3e4af2cec0c46955925a0f81b92c29446a
Date: Wed, 30 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790784633
