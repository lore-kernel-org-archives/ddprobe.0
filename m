Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EBB1B87C2
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737453954; cv=none; b=h0rVP53/nLaR3bOI4OGjtT07asvhmRJTsjN6BsEEWV+hfaHA/RJQmXTc/UME9tmtApUeU0wgYN3Ov6UM5YfLKSf+Pcv/4qPJHV4ELRJgpNu27QLQljgKTnY1zBSKUPMEL9LZrzH9Jf+YRAar+UDmiD73nV9gTWqAQKzNzT1n7OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737453954; c=relaxed/simple;
	bh=JJwD63xrB46bdMNyo7dVdtgBBpk3kx2UTHrlqd+VuCs=;
	h=To:Subject:From:Message-Id:Date; b=RjQ6BW6fqCjC/j25lQkWh/2b7jJbXR/nD7TwT3HWdsRaAI8jpdT+46XSyvJktI98SRFYdpty/LVd11fzHxRP6Fo15MLYyfxnh8aiLcnshz2bWFkT9i2o0Ar0DKMtnvio8Hj83Aw06w7aJ21m2bWfjxIXpgCbU/7yJMzIibnGH9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8+/RsEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8+/RsEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99C54C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737453953;
	bh=JJwD63xrB46bdMNyo7dVdtgBBpk3kx2UTHrlqd+VuCs=;
	h=To:Subject:From:Date:From;
	b=s8+/RsEnBrg6VrCxOvV5BeeDRGYsl1MaHr93mBYR8tq5/c/Lsu90UotNNmdtzc8G0
	 zFxpoVQsem7Ev7tjxmx7uxnH2lzbCG/WaNvcxyoBw1PtQFwydb6j3xWZtRpcK39d+r
	 yqO3CK3PLdDdeGiIAHmdBepkJMsL6v/NhChgthTwEZ8HPPkPIOsPWVxOUQSZPRnF0U
	 qjxK+338+IWWBbffP25y9EzuoGJm87EEblPznQBAJqldZohxBVnXX3ZsG/0qLH6kf0
	 zkn/e4JkEq+GsMUJpw2+yAOWeiReX+m+xtVbLqQRn3OhFI31GLxXVJbgn5mR7bvEXU
	 4lM4Nu4qMcocg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9222BC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173745395358.22927.1420696610323821067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b148c9eb51b5ae9a49f0254f4319a731ff488569b2a7b0b5531be0d502f801a1
Date: Tue, 21 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737453953
