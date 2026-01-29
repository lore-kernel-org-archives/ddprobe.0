Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1713619A288
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769717634; cv=none; b=L8c+brdzg591LBUsuwvhUNN2LBxPjSGX5Eg0EDuxSTTbZjD0Mm5PWwOMFfWka1vRqu2cqmVd11O5ISLAnRHxhG7mFNyDn5g59XhgWF6p3yOMMCOyl2hECq0j7VE5nwW7Fs2vidGQH9ugdvwCHCrBfQ+QCgXphmNyEjbLS2fnq7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769717634; c=relaxed/simple;
	bh=21eyY2O35czJe6nz0AHOGRpWYfPUmwFcOtDGBwNwQs8=;
	h=To:Subject:From:Message-Id:Date; b=uBY2RxEkqWSHicUa4lFxIlZRx9K5fM4rmw8Hussax1/bsB4VWDIwRsn4VQ59itwXEI+Lw3NBLW44/YpInw1uHbpnabZNkmVDPR2lBWXLThGq4+/FSyErvB7J6LeP1kw2NtRl8GcCSN2CgNWTZhM2DVuUul6xRKpd9bKYJWIQ26k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4umciM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4umciM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A569FC19421
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769717633;
	bh=21eyY2O35czJe6nz0AHOGRpWYfPUmwFcOtDGBwNwQs8=;
	h=To:Subject:From:Date:From;
	b=t4umciM2fL99DElr+MqsL+41vukz/VFHuwfSa7CCpAltMJ0mJw6HkyOkJ0j6SMrBe
	 bd2iFtbgCFdZqMc4K84izkwOzvXhbNttOXursZZu+oi+oPzW5oZcoKIo9nbM+0I0OI
	 /LdLHXRXbxOujKF5cnkdpXwsMYU2rgX/cUgc24YgU7OOdSCCZpameQHt30ywUx1Fga
	 j2Fmw+peAG6xZlhnXINmEaTh0U9YOkFwMSq03UzlKbXysxjUuSBSsHs0giU+KeQPt3
	 4kDTLw82k1sSHzgLW/pdJKs+rzGIHaduMkszye1wsKUm1V3wrOvYbmi1EUVZu1nVol
	 T0izVFXxeCuxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C15D73E87
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176971763359.16006.7064496774846859603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3561de3f8357ee19a55b47eda84f4154b3ec87beb66d7f661f9203a3bdabef2e
Date: Thu, 29 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769717633
