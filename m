Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29987248F5A
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765385574; cv=none; b=h6KibDx/GgrJVIoTkb/mXZn8KzDWAsD3o9AhQtOxBShdldZaFnCai8ncLkKdCnDx9oOblcDMrrj9ZMbnlPIOFdbTPUIlsTQwceFXb/Xi9KqXwEvefVzIHQxIVxa3V0nC+BgpOP3nbAuwvMU/i5Qih1syEKz+CpjoueDBYJVI0A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765385574; c=relaxed/simple;
	bh=1tVXb8xn9+2HgMmo2uhMB/crHjKeoN2Z1J9Gyre4cq0=;
	h=To:Subject:From:Message-Id:Date; b=RbpRP8cs1S+C9s22F+WuX0aOIFywXAyeOOAao0Eztpnf21eIULSQ8fl/N3rr8kLus0iL2IqVvEIu5T58t7VUJfaj2eAYZKFcCJRqf64by7vwHZwMge+JK0CXs2glJE2mcwNd06KCRwLaBSEAfqVWAWf3+/FTGSHxWfuk0Joz4b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GM2KUSQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GM2KUSQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD39C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765385573;
	bh=1tVXb8xn9+2HgMmo2uhMB/crHjKeoN2Z1J9Gyre4cq0=;
	h=To:Subject:From:Date:From;
	b=GM2KUSQMOm5vWTtZ3NwaUemfLKiAKzHTa9cVmbYUTTSb/nh5pnsq8HbGLLOs7dcDC
	 6sOH8+qcm0EL028tRgXKYKyIPDAV1mCaZ6ZBjGRvXsuIh/Tkm5npR3qTsSZnnHzT7R
	 DXsaxGvNMXUHP3sYz2Dgp2jSHo+IHrEMgU7iNrKziSob+M9DhBP94HNNEGSb2E0EcV
	 2J0BgDMyJtbUnGKr4cPtMvxzB4BlYQCox4Gd7fjTnq8lmxe6UJgep13rmU0y/b/KuA
	 Bf6lMvWABFqCs0FsPhDOIHuEXnXzqRWzzvO+iwsTZLH/cbvN9YX3HhYxvUmidlpRZT
	 24dlPEs6fZACg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950EDD3C92B
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176538557359.15195.15199094017335478770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c034d085a769f243eecedb131e927c30ffaa69784229257910af4390bb8d10a8
Date: Wed, 10 Dec 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765385573
