Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3516D4437
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730256954; cv=none; b=nTodEYAxRnAaM5OdT5QVXWz/+7CE4GIknD9U8ysHhmd6Ort+cz6Zv7bwO2IUa1PnVYenegQ38BRtIytH8N5vG0n0K+a6IKUJmG4o+PKCdWP5/8qR6cqxsX5ofLWeidUaf/9qZi4OTz5+ighp/UtN4ZMyLjbuPWnFogI7HSIBdnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730256954; c=relaxed/simple;
	bh=PxZwMLpDvj95dRU/7QCBWviLOhKVeao8CTpkpl+GAI0=;
	h=To:Subject:From:Message-Id:Date; b=Ky0Ig/Qpyx+9KWtlBVqQqBkOHIwGvBnxDu4BskrVpMmvQD7ruvDPk+OyNUUHH4quL/tLYgRij7QjqoEQKTLvbrTw0H/xyNFag0BAbGIuTPnNp02h0hfgevfrM0S3PQS+brbg0NZ4ybawkGryMpSm6lxZ9BKuBUbjhPUMCEsz84g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlHDRiMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlHDRiMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8015C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730256953;
	bh=PxZwMLpDvj95dRU/7QCBWviLOhKVeao8CTpkpl+GAI0=;
	h=To:Subject:From:Date:From;
	b=tlHDRiMmWTGU3KAr6vRnAC6pPCitGUhUrEqYD4D1sMIxnQLrtf9L4aYCylsZdRTJt
	 fjvAJ5iVZrLWIJdk+fGs6T+7mgaAfqHZnTZRJdedz6i1N7/fa5wsq7QbBxdyIssu9k
	 x1yqKk/je4AUCrPLYBbqZKoQLjDxnNgcPfD4ChyUPtYL5ROKHCe3aPSBTSA2DKw1wZ
	 3ihZn/UQGF1r70t1L0QOayB4VGKBoDM+cTd4jnYi1lmutWQa9sm4uJ76kH/AJMT8MU
	 b1MiH0lTN5q2czpMfJ9gpGRwMf3NUhokNls6AU66ZxJbB405GZdUCbCOXGCJKec4NA
	 4Unp0vUXJzo6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3649D74957
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173025695365.28686.7739789291051796171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0b9a3db4d1622f8163731a65ee89a31dbbc30afe3999df539f04fbb7772a8c
Date: Wed, 30 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730256953
