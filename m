Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7511D9324
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755414595; cv=none; b=QSO9keVl5p0Gs9WAUp81vlLt3CjmH9FW53sbRV75tl6txpj9kcI7Q4cMohegnieFJsSJBE/wD8MNXAOq+1e02Ay0cGWJ8zewt8d0y5ey/Gk5z3GLRpmQKM0Rxq1NIL6RvxHZ+sRLujP2dYaWdtBH2hgKEB0Mx3fs34LVI9lm96c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755414595; c=relaxed/simple;
	bh=Z5blG3hL9pjPemxYwbWW6JjsnsHcM7FraCISESsXFw4=;
	h=To:Subject:From:Message-Id:Date; b=XxaS/0dM1AIW7XBJMeqcWT+I+37Q+hniMqFVmfYrJzzdvV1EWabzrx3TauMeOiYvcLL/VpHSmK2W3S5jAez51SNRz2yD6j6aQ71JPiRlly9dI4wo8uhjiOZIKHAQm5D41gHKVTsytb+zSiA7cKBw6iGHyz0u2Ntwz1rzEh0X4Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2szY3Ec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2szY3Ec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C1BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755414593;
	bh=Z5blG3hL9pjPemxYwbWW6JjsnsHcM7FraCISESsXFw4=;
	h=To:Subject:From:Date:From;
	b=t2szY3EcBm99+SzWpIDPljxuKd5vucvqkxeFzFXiS13GckUHL76s8WLmZt3echeMX
	 s+E4TnE2ot3VOpoOACrXMTFzennGavk0RayX2nyHukAKmqohiULIUwoACHVEj1gTlx
	 +kchiCWG9tf8/n7DdbFWz5amSZ+wuhNK0Yne3SlwNChYNcZpk/cPKoidtc62gUdwtu
	 tUztXVw/zCBgCOKAB3iyk56P9nFrzh23rCGHveHXL3efMyZj/S4Mir8ks4/q2Et6I9
	 Lc45lF8w/rD8wYEVdGDSCn0pbhbRDLEq3NJe/WdkVgKxQgFOrtz+6ZZzEq77eIB1tZ
	 jHFANdDEaBGpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ADBCA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175541459358.22691.13220921522846302793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a04836d3f6e428c77c45ec6cfeca6512cd4526ac359a45fdaa5a7e22170c0e9
Date: Sun, 17 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755414593
