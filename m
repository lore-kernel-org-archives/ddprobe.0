Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AA72222AA
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768628634; cv=none; b=FSSHebLlFY0FvC8dt+jPo5oqYE1Swh0TPZKNRt+mJga0JLRtE3zNjCZzuKt5SAi2lPTGiWWLtaVlCn0VF+9gQr/i4GpUSVmsnYUFrV4ulx4x7F+NC4uRtrVRormTjUb1J0rMOBLEBSnxhdiwq5i4g2kXsPceNc1ZI9yuT2sKt0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768628634; c=relaxed/simple;
	bh=nhrzniy/9qWoABwa2AXWAahPBGjd8B0OOwZklWBTynE=;
	h=To:Subject:From:Message-Id:Date; b=J4/pEqnLSmhVrWxsTBElDq6Rhp6GS3OVdjVZ4/ivjh8+OytRVvpBUnTPBEDfwST6bYkQIWBgr1Sq8zNFezl942ecbczeN6YBc3kbJK1K4ey5wjSMSXj4uzmrmk4rcixkpGzVmHKDyd2PZT4rvGamuTo1CLlQb4Wpr6db80dtf0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrUIbCO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrUIbCO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECCAC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768628633;
	bh=nhrzniy/9qWoABwa2AXWAahPBGjd8B0OOwZklWBTynE=;
	h=To:Subject:From:Date:From;
	b=UrUIbCO2Ma5TMRia+gKsxLrb5FMgPVYbfsLuH09z5mCBiYmtau1cs7I+nC79vtqhW
	 AR7HfHhtDmFKBr1vUR8VFdUVA09F0SzpUfPCn0MHpde753VFg2HOJ1wIB3PMezh2uC
	 ttGeTd8gg6uwfOHhOA0PXWlVNxOhimA0XJ2Qm76aMMS66C+pfUVQoDYWIvDPr0FnAp
	 haCcdfs9hvYjNj5IEAWWNWzkHexi9tn2DXjGFVKlT3eCsd6tPQSO3SmMLNLD+KxISu
	 0L5csn3cEGXH8WNrP+LF3ifZOQPGN1F1kYXYxH8gN3xcFTmag8zWdptyRfFBiE5coX
	 8+7cggpPZiCAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE13D4A5F5
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176862863358.5086.1738855581722317342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b261be957aa2c165a33844a7ce31b6a8a8126b60881c2e43df6a907166c0eb6a
Date: Sat, 17 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768628633
