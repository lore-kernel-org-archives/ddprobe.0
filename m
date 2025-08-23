Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F4221A43B
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755938994; cv=none; b=fs5GQxamto8+Mi1lj8DHvhGPcdOAKQp6Sf39CFACzoNYnV+zMl9C7IV3GfMXZ/zue3eI3OvhtnInvEkbl7sN1MmZre44JztNfe2wouMMtGGj8uget7zlgopcXfyW3DK23TEIi8qHoHcsDDWUVwscbienGnmWVJzLFTYlTkGX/Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755938994; c=relaxed/simple;
	bh=Kslyhvs34ULLk7a+bO4PTQJQSom7cXzX0PmHFSIMPWA=;
	h=To:Subject:From:Message-Id:Date; b=P+FZP6jBFDrNeBo07DQqIHfCMH6YOdLbl1Wg0wYYigNzAv04eqjx3OngCD/sPvqpWCU9GrBDOVRy2xI/EGPg+i7yxjvEi2m92XcrvGjfcOpRB6+5TUqU5lVxHbvugPs59lRuUt5P3kl2O5cG6DyGP+rDvM4IcUgbLLX2IlYrRlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acRuLtJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acRuLtJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1713C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755938993;
	bh=Kslyhvs34ULLk7a+bO4PTQJQSom7cXzX0PmHFSIMPWA=;
	h=To:Subject:From:Date:From;
	b=acRuLtJ65P+E2O/swIVg/aV7J6L8q3sCgR2N45tkAbC11CQP3BcDCUIny5v8P9i6i
	 gqbrL+m3V3jPlIQWoCJrJKSoxfYleiuiyeMAAi7DZD+jIMH4K2TU25CO9WvAt3PtmW
	 Khk8mOJiOi3S2U/2f4GV2O58om9qiqUrEcHRCn6DnxvPmLOD18ers+eG9u6BsYmgcf
	 Pg1Br+A2BvutzGuPwJHzOzuvVDmYO1DTDAMHuM1VOA9madbSh1lpV8jCK+XRLdqDsx
	 vMD8IIyUNzGd/1o5gMKgWRpPVqX6Pk87nbx4pz1DYX4CGr/Hp4+gio3xQ483OcLd3A
	 YWybRxQohbJPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2B8CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175593899357.7176.1204484341952396748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 678392fa64c5ac710a419675eddb5195489ca47dfac2c76b218db0b2f9b6a324
Date: Sat, 23 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755938993
