Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACB2635
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728629754; cv=none; b=PxKU5xW3nY1gMF2sCBde78vDCbL0bhMhl9guY8T483tRta6WGvzo2NjySxgAvSvVDkIZTOrCh9IgyLvQCHk/ZiJV6YiklQj0nNf2mWLPUGEjtZ8BLu1Lr1ailLRGLKBLTiWf8m7oEpI0ub8fpCb9tjGft4NdthJCS2hgC4/iuV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728629754; c=relaxed/simple;
	bh=U6/rk5Cy0Q2G/Bt5w4QqC+XFhjYgSz6gYryAaxJldL0=;
	h=To:Subject:From:Message-Id:Date; b=V8li+C7BE/TaW8y/ryGgDLNbFUSN1ZN1UaKvsdlhyvN5e0uWqEytke+B9pMc3v17ZGXb5gEbWOeLbp5KObceFCsTuX19YUMhzVzJI2606JO7/gSMasAJxFzS4JVpqXuo1dhmrkWpW3oWp5IquPuXAzSm+Hk+brdSTrV/Wti7IkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkLOsgpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkLOsgpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA76C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728629753;
	bh=U6/rk5Cy0Q2G/Bt5w4QqC+XFhjYgSz6gYryAaxJldL0=;
	h=To:Subject:From:Date:From;
	b=GkLOsgpnYpOrflTJIEWqaarvIOSXImSKAf6e8d8JlDmX4lSjUo4xah+Wh4Olp+4mq
	 kp66DB+kClL04LYGPoIwbLyiAIlL2lrO2PvpxJj72IEsW70JLGl0DuOt/Q3JsPSz0G
	 OTZkgLGqqGlob73RIEbXdSZNPNJfmvEsFgcpz+YYXVW/i2PDl8OI6itQ08gUYqQPq4
	 lHQiSepDb9ye7NGXWacTV1P+vQGKsGOVMrMYOJdEFZrABUO4CWb8IoKGQI2ZMtzA6V
	 tVNZf9Y86W+OCE25TYyqUTElm8HbmfDB7NourPNu/ttMC7DMKNOAaMJg8dIlb3gTRC
	 inMapZlV6S1hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991C3D2447B
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172862975361.30150.14066026089225597620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f945c7b3702bd37b60587da2d25226c8d55133b9e6c739655dd352d53ace02
Date: Fri, 11 Oct 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728629753
