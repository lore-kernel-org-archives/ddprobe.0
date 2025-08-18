Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4DC25D533
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755489594; cv=none; b=BKKZJeiEharJ0ifwQap/PpCn510i7R5Shx5h1veU6luUWcVbhyBAe2sLPSXmTOa23Zn2DktT5OFw5JJTRIh3YpVpB8HKbXjxwfbWdFFjwvER4y8HqDSYj2ORAcAFxbO0v+lUiXzdKDg5Uy20s832W/hippTJTiqXydPgBvyFagw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755489594; c=relaxed/simple;
	bh=MlTs7IUZSFlukO73VR9e6+VqtyeuFE5toeR6QlX5gpk=;
	h=To:Subject:From:Message-Id:Date; b=D7Me2ixcPPy9cWJ+PHhahG8aEqKVNeooPWtD0PW2LLtD+ktjaOQQPWZSSkt9ne/ICMLJEbiN95KSenFNBXq2ks/LmCkasYjCQZTlW3nI8q7+QiVh9/gODGis5Q1+whsGp37KktvWyIrErS/1aboV50PZFL0VlL7P8GvVNGKFlDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7RcUuV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7RcUuV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9A9C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755489593;
	bh=MlTs7IUZSFlukO73VR9e6+VqtyeuFE5toeR6QlX5gpk=;
	h=To:Subject:From:Date:From;
	b=K7RcUuV5xEUC/Ann+6huD/Jvsw0BM1suOV+rvdjNnkB5GKsSq37RfSG9jNw3leYg6
	 A5R2YJAeZtF6Jre/Qiqb2uOQxmiGqswgT9kWO3+K646X9m/JpJnfgqN+XoE3+nlYaM
	 oX0AzF57uUlDx9O3Fek0PlNi8HfwAdO2UO7hiLw8M5FsomKW6Rq7ajwxGNeQOcqdzu
	 Y6mvKMBnaqhGqhkDymoPetyrDPd0I+3g7jE4Qwmwh7PWtEgADQpmxkifvnFLGmiAhM
	 7tRetI7EKh6UXghRiEgxcgr0nWwW+/YTegOYy4lutfZyYGgw5klJzsOTxbz6e4DDHl
	 mpqlC8J5+HeUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D1FCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175548959359.5983.2090151127910108704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c5a3f99b3a30472bccaeae76bb2164f09e2e78881448e8bb687c69ff241174
Date: Mon, 18 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755489593
