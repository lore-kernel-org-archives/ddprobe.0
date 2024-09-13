Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120B81C230A
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726223154; cv=none; b=aE6nLFms6+YBZHzyJIwD+uVlrZTAweU39lQd8mEOCAF3PQwxA3Xi9/yzPIVnnW8+ovVFAE28uvUedyl23XEmWnO6d6XCdlfhJZAkEriffXuYCYEftbmwRd63HUl7TRBBMBaYFGtAQHeKBM2y2PVzF2BxFz5DdPETtyRAhoktGVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726223154; c=relaxed/simple;
	bh=3IKNJ1g01kMph32wf82AbL6wGFmjPcAZfm1zN03y5QA=;
	h=To:Subject:From:Message-Id:Date; b=igmnYldGQeVqmifwP9/clOHuSP3Bed+wUK0ZqIeVPDZESRzxs7/X95aGzUAiwZTkNLzGpJi2zhVgiic457vh+Pzo8YVtvu12xiz7qDrPDfWWURjTe8TZhA7i9chFFbCOE4x6k8sLiw0CzKG2UKOwn6Vkb7qWAplIf3QS8FfjQrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJLc2Gyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJLc2Gyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA68C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726223153;
	bh=3IKNJ1g01kMph32wf82AbL6wGFmjPcAZfm1zN03y5QA=;
	h=To:Subject:From:Date:From;
	b=tJLc2GyvkaMtyl/dXpilx5kkxUI+aD2BCbU6XWgBwf614AfOn/V899iQp/qndwdaJ
	 XQxEJHtJFpaj4gti0iLFVPqmP9erjg+lB9pAkg5wIsIAwWpCU1oGzBW/JKxV+Ek0Nl
	 CKS4/DgpuMKDf6zjjpL+CFL3234UUYYt+E3ecsIelVyRFt07o2NJoG90uTJwgc63U0
	 clL7/erA9zoD9cEeBjNbbxBNg1WjrKMsH3/UAerEVyg9s/7YOjDq/pZquzgRCCTZvX
	 EO6j+bbGIB49sYZG2wSOCCa1gZ3Mwu0u0a6CGbJcOtszwKwwKlsGEK6tznXoK665CV
	 Pav1URJSmL5dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991A2FA373D
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172622315361.2142.14249904639057772156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b980c94fe617ea369f71ad6e0f251d72667945175b4e50875ab35d6a0d33b961
Date: Fri, 13 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726223153
