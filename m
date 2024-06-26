Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47272BA55
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719364403; cv=none; b=XomQDsxWIfRehU/ZNC2R4SAyLXVHLq8yZDRsXDTyyQqlflLJby1yLeYsW4S9+6ehFTRbcUAzV/2oUNpE6/pNIEB9OJQcpK9bQvTcWXLIC6CTwqojRPuOxyGNBozFmnbifK8Y/lbiIlVY3ZDdNmRmG4NUjAMfI8/bPWRiO3gWACE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719364403; c=relaxed/simple;
	bh=F0035+KENZf6DzK9K1i0WDPi9oJ/8xZVch8FzVH0P8s=;
	h=To:Subject:From:Message-Id:Date; b=cu8utQpqSpzVI+23NU/Y+QTvRXH7s+CQV+FcveA86BsN1RYf0L57ToVIoayFo4wNJr4PfZfIkn/YsQndb9LWsWoPHt/+4ResnAQ+D9t+Wu2weemrQycc4BkuyZxO0Xsay0wHZVMGLBo9l6akl0yHpY1jvQS9v9UVbegzLxuJOZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Js5cV256; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Js5cV256"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE29CC32781
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719364402;
	bh=F0035+KENZf6DzK9K1i0WDPi9oJ/8xZVch8FzVH0P8s=;
	h=To:Subject:From:Date:From;
	b=Js5cV256YMbBjGdya1sQntzU5Lk6Fsrv6escGyc8VuARhES+RHxzX9BnGi3YoK4Lf
	 KeHDLfOSe7kBSie3LbrdhZ8HA/D9BH7gCesY69atPcrEqYCmZXia0bgL3LtVGektNr
	 Jhon0ouOnS7aHjZ7a2vZqrbe7LuyXka6H9QQnRDR/JwAll669xGhc0UAEVVDt5OsLw
	 N3yPZjWruPO4YPxexmk4H+G564qpcNI+LKR4pHFE2rqHasPK5Fi/H/lpoF9UcmUhpf
	 LmSQtd97oHmYcmnylX3WwkJlbBivehxID3NfGVJA6JQ0u6GG0DeZLeRfMh9yJ+dxfi
	 zC9QyneuwkSLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD0BAC2BBCA
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171936440276.24653.6146970440091072944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f951da457f1f087448e4a0b222b54fe79c52e7db9742b19b72281b80c6d504a
Date: Wed, 26 Jun 2024 01:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719364402
