Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B92B1F03D7
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 22:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741127934; cv=none; b=WGHcgHVQ2R+/c6ewJoXgPX4g0lLF/9l1Y+AGZtFD7wteIK8snsDrvd/8pIRjfFYj/6HlHOpgt3G9qA3Bl4q69fupJIzo1b+AJxVFEiiASKM9Uh8xTAPpBEEkiP1i16ee/1z16TL/H5r5gqpI+qZpnJhZgPNFFGlriIPukWdgruc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741127934; c=relaxed/simple;
	bh=2zmg5pChRTm1BSta7c7XZELf99gUpRIekIo4I6YkikQ=;
	h=To:Subject:From:Message-Id:Date; b=CyH5y2A8NvxRfxwE1ctxgdoIlSL/c3vsurt5Gr3l8/95G/n4+jICsNO8+KM9o/CAB6MAvCCLaD+fSlQLSvQHzzhObvilXyaRowECeEXjYvcZqv48EK3v9v3awxlO/zj898jcO6W5PCenfo70elkvjpCiPkE3MqMS0JEddaUMGoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ad8Aooy8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ad8Aooy8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC65CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 22:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741127933;
	bh=2zmg5pChRTm1BSta7c7XZELf99gUpRIekIo4I6YkikQ=;
	h=To:Subject:From:Date:From;
	b=Ad8Aooy8Z/dRKJx24NpztFEiOturgXwZereWbbd6juVlzwZdg2GvsdSf7StE+SgUD
	 VR2WudDd5bZPTGdEiF7h7QOoEVFkDbOX0lknSC0DVrf9JkmjELFQ98nr35KixIYsch
	 1Iodeu53mP4VygF7s3Wq9CouomcirTyO07QgxyIra5uhmMDaldr+mgT25WHPxTzI/F
	 cbc45TQgf2Nwao6AlR2Y7tGKi0RWoRMW73Q0okzK1/1DyoZeDGrn066gtVNEWVEYv5
	 pHXKWsftxhdtNsANe4kSpnox2gGly8VQLFaoEebf6Bm+mKNDJ/wImWX+1NFdE1lIw0
	 wiY3xPmUJPsaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B7DC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 22:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174112793359.12452.8548148551437811597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d135050bd5046d6bfd208b6098c7872fb0e613ba2dd3674048be6fd6f0cfb5b3
Date: Tue, 04 Mar 2025 22:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741127933
