Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3871FE46B
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740222534; cv=none; b=bt/vjy1zDymjLVoOSec0884JPVCMkhxRGNTvz3J3dwzvb6GhDWVEEbmxTkOwc1cjs0oiF9GwFZaGFDTd/wVmBhEK4sw1jyUwUfZPIVkM3T6L3FlsJpj2jQOosPVTqECnhU3ExKaNBnKESJxOT3jyAeBW0DxwUvVDPbuY7p3ul3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740222534; c=relaxed/simple;
	bh=olIroM6wNkYRTRQsjLqnZ66ubMkzu1C+AbpkwRr36J0=;
	h=To:Subject:From:Message-Id:Date; b=Cro/5WbH0p80JRXB/ODLONyKcjctDSpqVeechpoWQwiPKQgs3n2pfXL2BLKAreJjNop/NWZdQEKtyBdNR3nc+PRtEAZhvthJikxBzmwbK4nylXAHqWeADyraJCVy9dlib/WS/hNd2ao6mu2SEFXYgYt2iMfSo24Bfjug/xrGn0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpgJdIF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpgJdIF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B34C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740222533;
	bh=olIroM6wNkYRTRQsjLqnZ66ubMkzu1C+AbpkwRr36J0=;
	h=To:Subject:From:Date:From;
	b=GpgJdIF9e4is6c07iCoNWGnXN4hxuBPFvD/jq44NHfNxwO92/qmfw50Br3s+gxVGf
	 MP4FghPBhHBHbGp1JVgjpCuAHWQb45vO4ghwrWmqJfVaZ/TDB0yk4nn3eNEd5qPbj2
	 ycXN659owgPdQ6eN1Ba7Gq4KSdmWjoUrs7GjHnenq+bYV6yVKBq+YNnV0fCFpsiQ6W
	 NfpLntDPBCHNLQlcGutJNM2nr3YnNWsCh2xuzBqTeEWeYMtHaEbFHbYWZtMsmQOVUQ
	 nF+JsIiUst4n7laWlv4bq40puQ1o9n6JzO0cTNV3NeldRxMnza84vR37tU5PHq2gmO
	 SG7OBeUB5CszA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD6AC021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 11:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174022253363.3731.11460015391231376117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d38d104ed35750c56e10c3e642ad775d9433623dfd11378a5ee804ec3d31e41
Date: Sat, 22 Feb 2025 11:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740222533
