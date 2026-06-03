Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76F2B439009
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780476874; cv=none; b=aNJnvuWfa3jNnLH286zsCKejWrcZo1UB61dGAJKCD5oIHoahA236TtLYAR6HoCyhL6j6UjmHrDUOIko7zP5+jwLMMq0G0axh3cEju9gFycKnI1yyJzIPP2z0gXq/k1RwuadgbbN6hVsI5DkiQR3+1wBVLZEruyZ8vZKX8p0MBOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780476874; c=relaxed/simple;
	bh=rPQgKdXtHdj9OsF58pl/xWhgzbhMo3WW6HcLkmsGzTE=;
	h=To:Subject:From:Message-Id:Date; b=Ga5A5M5OkB3kc2N9wA0Z4g6Agozpoc+dpLzaCiJBReKTDAjvR0fad7yp56oOe2OHYXBeRnqWSzE/6NxLNd0Zhpq+8kf1Bxk+FB6LiL8qUyB1ILV/aljh8gcOqq09ygyo4rGP1IMmoyd9yRRjJHIWnPbmSF7s0ajlNuKuVy8602Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwS/ANrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwS/ANrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0563C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780476873;
	bh=rPQgKdXtHdj9OsF58pl/xWhgzbhMo3WW6HcLkmsGzTE=;
	h=To:Subject:From:Date:From;
	b=DwS/ANrdP8MlGz3Hobbm4TCmnGu6bVEIBniyahUMXEcTR0MEO4h8jLHJdAjm/AaCo
	 BGxdewOxK1ayvKINE83CdW3HL/smjUspUyuAvCHwEFZS9hxvzSabYUjKes3ChRtT+d
	 bspKYxNgIKsoBZwsXpxAcabzKsoQSMOWobpLyjxK3UZeQxT/J5nZmyBTRagdwErJO7
	 FfEHPVPGJCW6gX59BXdvBryJbiQQO5+2Fwl3oX29f7T/FuEHOPyYkMwPgleWqnyv1h
	 Ci8r152lD4t2/ID//5To8+4GP8aQ35wIUN2JMUQ7mTaV37SLxBgGfOmp9VQ3+HWRaO
	 r8i9nSVBM7ofQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8634CD6E64
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178047687367.349.17875880297358976644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a63145fa4ed023b3e0550f58439d4f11df0c6628982f729c630fa99e60f5df4
Date: Wed, 03 Jun 2026 08:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780476873
