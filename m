Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C1217BCA
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767773034; cv=none; b=c21oLiTTQCFoEtm5X6OlLHMTZf20rSyJhGiHj5t+0BpEqah/tPxzYwbLGK3mtu8k8XstIsEyyVz54KZwlqmzNC4RG6QGlBgNDQkohSYJ19q817YLRmbgk1+nbTGyKxMJEJe0Dc+4ZisMenyCNKDEGlSJIIzXTuenLlQ+vY/dl3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767773034; c=relaxed/simple;
	bh=u9+j2K6r0NIOxgqujvJAqJ9uMReaTsycQZitjKR2zZI=;
	h=To:Subject:From:Message-Id:Date; b=rXblQQ8JPCnYysw+En6OEDcIoSS+9v3K4SO2rLZCXAgnsmG8M/nMmJBesLmfHLt55FRx1rjuezJ5ZF1uOwwJZlguDNI179484xbq+bERWbA17cJJpH2fy6AGRZ7CcQEoT33/vxUhAY3Tf2utyktI+Rox92ydIW1ePEyQ8EUOgvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HL6W2iJy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HL6W2iJy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB82C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767773033;
	bh=u9+j2K6r0NIOxgqujvJAqJ9uMReaTsycQZitjKR2zZI=;
	h=To:Subject:From:Date:From;
	b=HL6W2iJybumCmGpBYUIi8qFEmCDtHAdiwehI1NzmtH22U4GCg28APtbwAX0KNjsfu
	 UKmwlpTiYg8kXepoaiyRGqLZok78JEHmlP1AoLLgy48eqb85o/NjEsShClvsc66qxD
	 oqq5wcKx6UpSwINw+Jc6bSgV+czkg+OubWgCsCtguafxfOnG0WuMjNnPAujp0mgUkM
	 Os29sNVk5Tz6FFPYwhakdd2nlUTBGtjh+WqrfEymZTLTBjeQSkwIrS5/ZUXfAUNqGI
	 5PwUTDmYxYuG4z+rmJSynMh8ugIp6asrcYgZ1Oy2a9caSvJXv9li139q3RpdGqeDWw
	 4ak1NmIMKp+Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F496CF6BF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176777303357.10154.6186182042469021415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c2e4a053ea22d6be05fa62158ba96de52f6e66ec1d5e4bbc421fd35a7e94f5e
Date: Wed, 07 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767773033
