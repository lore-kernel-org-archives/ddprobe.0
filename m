Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CEF19CC3D
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748209194; cv=none; b=hstisxX9aOpOfkCVrjPSsUo6O2OHlztSzoqqCnA6R7YT3Krof2yx8hw5sfYb3vC1dkwb5fNcgStVOXy25jhDTEmSvX826qf5kLVKWN/Owc3uxC4fhQUbwCycbkzr0dppW2de5rjGI/5Pa5Tk5jhM6kCSzvbojav5XBm+Jb2KXM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748209194; c=relaxed/simple;
	bh=PkZ0OlAv/w3g/Xpz4j9xWxYMCeRtVMsJeJyd2L2zhAg=;
	h=To:Subject:From:Message-Id:Date; b=N+x7luo1r3kyAJg2kd1gvrNYLrgluIq9ToHbAFq1lr9tmk2PLl8wMrHma8vRcYALLw3/RdXg4ezttnyJXZLw/BmGukhTsky5mucGaT7oykCJGoNTQymGFR1L+8fP4IiWgGyDEJaaNCyQXdXGpkTspzKdjfYNYS0ULZxFZEmd3wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=US73L/ot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="US73L/ot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA7FC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748209193;
	bh=PkZ0OlAv/w3g/Xpz4j9xWxYMCeRtVMsJeJyd2L2zhAg=;
	h=To:Subject:From:Date:From;
	b=US73L/otYECXLRdCIvyXd6wvERNB96ZuUqRaMbN2OTQfOpUrvFvD4nGc+kycrDZ9O
	 RBIYe7+udIhJVzWAf5dZjMAFNbD/B6m00xhlqsMmjzXa9cf+/JghROws+nLRGP9PzD
	 rPVFxhPAwEHEQfvTcvVSGUJPpZKA0SfblrbLFcQET6LtFZeyKCPsXNF2JfJOevKeyV
	 yVdlLHAHb/dlALqZqNZW+DvwR3sunhNJWmMehyEqdBpi+KiBIzdh77iz4F9V6ymsIn
	 IWGpoR1OJ1+RRWVrctXLfOoyz9cU4vgtBF10i4hcTJFGCZiLgsDheOQ0Dq7mRupeiQ
	 SmzvcS6XmI1jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A9FC54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174820919357.14607.7113269190713846264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6f4c79c32d83ab073be9f9ba49a2edb1fd5314d2d2eb021af01a528e51e7c3
Date: Sun, 25 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748209193
