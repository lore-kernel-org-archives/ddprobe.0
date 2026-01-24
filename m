Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B8D1CAA79
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769225634; cv=none; b=pO9Lp3aJczmEEoHll9hn4+y/5ADYA1MbTmCwv8hfvmSQQQJ7fIfJppcVWKZXt6KP8ryfl8L0TD4ljKcj0L14+NG9oXUMQwejTGiL5jnqCluhcwyaCozW+YU86fFCgdhTKyhBbZOx/xuzA+ndzmHULmAoSamd7EXWFXfdDQoDVZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769225634; c=relaxed/simple;
	bh=ZbtwTrGm9h3SCEzSjWsbUxNJuzgjQDc9Ib/FiDjgTRI=;
	h=To:Subject:From:Message-Id:Date; b=XzWZ5jENEygGSiVrR+bMFN/YeAzDRuL35uke7gNzLBsdUhmbP6KoY5dwlwBiJr2z0gPnDSLFQMVifNlYce3vAH9de1wCunmlqxw/11n2NgRlk0celOXS2jdM/Hz1a/BO7AA/0oL6KRCcgYPYq0H38XE8wEPCiUzedZEpGTYRlOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZWwNNFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZWwNNFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7023C19421
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769225633;
	bh=ZbtwTrGm9h3SCEzSjWsbUxNJuzgjQDc9Ib/FiDjgTRI=;
	h=To:Subject:From:Date:From;
	b=eZWwNNFgwbqNuRqsPSiwAtGd2XKNNys0T2tu7IZnXCDq5A6nETlztTR1vgMCypVGg
	 bzorUsI6XMzsKoi6PVzCyraJXP83heUjhtY5b6viqTBPmZzR9sWILhjWTVbCR+Lq2B
	 4QVfw/vSB2VrAb1rdNSsuoPKL6Ci6jhKl9V+fBclwg94wz9QD6QrSUmyUZv6cd3Nlh
	 93CYTsxuPiTlCRoFC0f9cIqJFQHsxxQ2rU/zuYIcRxlgsIOZoY/ebUdX5mUueQ6ZW8
	 DlqqSjMOwzbU6FMXBQel3q0SuMIGlMnam9MNKMps9BgzrfiDZ+esFJQFMZr3SapY5Z
	 APQVBX/pU0PNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C65D77898
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176922563358.30202.11624592387521132474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6b53b39556e0598976a1b5a9614bcc19e602a6545fa0452d461a611cc5cddf
Date: Sat, 24 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769225633
