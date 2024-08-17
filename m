Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ADD79CC
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723936554; cv=none; b=pgIGHYlhEz+dG4m1Ohjc2UbRFjymMKBIMfIAaKi3G9mwV6SL7tZKlwmsyGkE1RL5vH+ZBfKtIm7c2UzCrgFGAL8kaF63+Z4VMtnPeG7vGVbInikpezeRtGq4PNSPCI6UW1GQ70BERAhUitsCsztZoRuvVAHmaA//U6+jlTLHcYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723936554; c=relaxed/simple;
	bh=mdvrAV+iGrjrjyaHOfdx+TchKB22sYa/jUkGT9A7e3A=;
	h=To:Subject:From:Message-Id:Date; b=i2e1fpezAZ2E/8Uzv5TxVb/GqSHMmJvlzEZPUgJH0gv49ei9DHnpDDATqnpySG6dV5jPVVToijTfHkEuoZFXQ/Yy22PQ392PHeY1hVFjK6EzSajTBvClP+g2AqvsoEA6BnEq7AFp1jDPmW+C0Mvg2kclJBooMtPAp+kpW4EkcqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajUEh9wU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajUEh9wU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9318C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723936553;
	bh=mdvrAV+iGrjrjyaHOfdx+TchKB22sYa/jUkGT9A7e3A=;
	h=To:Subject:From:Date:From;
	b=ajUEh9wU9xFGynCnD7vHOUC9dTG7OCVla745QrIl/gEBOeGd3Qx5NHhFmqWDqCYXE
	 qsrv38CifhZqAA4w7kf9H9n32t/1LpX9P9SnIvpWExW1aOe7dfr0XxJZebFfgTaJJu
	 VT2aXyC4JdogqLSdiPgtt5Pv+m5/gJRJ5Hl3WQVicWkLL0jCNv89PDEmh8R7Yupljk
	 od8iiRsX18L/pwFsmyk07HAnE4kjDxCj+05Snj2qSvxTjSENtZl9+ozDLgfVHLsRDr
	 m5YEtRAoL+KRw6fB4DglIJS2Y5+QECxIZnEfTDDbiQVRi9veXgviFt8T+wJyxvXaSg
	 ZHen26cFinDbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9377BC531DF
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172393655359.1872.1162978244276753183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ac2c3329bfb6d05dbdb7429d2833ef79a54c2c931b1477108b8d668496dea6
Date: Sat, 17 Aug 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723936553
