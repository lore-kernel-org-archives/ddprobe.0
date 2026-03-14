Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1009942050
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773487494; cv=none; b=WNjvGW6qpetPeKIHV6Ele5r1c0w6OuqaQwBDM1HRgp+an/7cZGZLSwyZBG7eYmq2VObLf6jWxz+N9j8LfmX99sNOhFXU6gxuHs4NAxVHBTM9ZhIxi5ToXV2qK6CsF+v3FeEkZsC+1IIbRIRD8BABUheomF04J/hz66DcBhteKSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773487494; c=relaxed/simple;
	bh=7NgK1JWiCRiiD584wyfV5iy95yI64eaGF2o4bxOfHUo=;
	h=To:Subject:From:Message-Id:Date; b=oeWHJawLlsVT+Of1Np/2iF6fgU0C/kiJ0lsvlvbyFaiDMQDtn5TXKZw5kMuyczvqnmbos2BQE9RiTUv12mHPSqI5DNP4LGpTVcw5S2klkJfkRjxQEKG6yizfDjt9lI2nvbPK7ImXwfnh45wBAVBzbypdBLJ/UjaoWplxXISNFgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrQq0ct7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrQq0ct7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56F7C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773487493;
	bh=7NgK1JWiCRiiD584wyfV5iy95yI64eaGF2o4bxOfHUo=;
	h=To:Subject:From:Date:From;
	b=LrQq0ct75Zb21UFIdapcF92MyZiiSeHMp+Fs0s2jcBv/I5v1lxqF74Zd28aPrZHPk
	 qaNgDTgVVgour0/aFxqRtEkEKBW12TxC9ay5xIHaludv1Yi/0liHw9fxhjqaXcTkWs
	 VPt63LLh7eJ7oc1xLKPPtzPZ1XYnKpfnsAdi0IrTSi9VvPaSDNcAHJa85KjOJRc6xR
	 cAX0r+IyG+ztBVo7PwGolakixMQoqzoKvHq/NQNAvqAGRjLKqnECuWXgY30njLHJGL
	 ubgcznrNXQFG23UPDgyb2AXjkijHtMXR3BzOtvK89zyqj8uGK3Ak5KwwnvIK5kema6
	 L9UCv1tRe9pdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9302010706CD
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177348749359.15502.2826288616603551782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c9a569933615dbffc007ecbed58e2337ad54b8e8d55719c1a327b6ce7937499
Date: Sat, 14 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773487493
