Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0941AB6FD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732106754; cv=none; b=BndtXFtZZE0huZ2eLY2PfqeGq7zm8gI167wYcXiydoavfTVJG+n/OaT283BXj4V3w+48J/vL8jIuMTs/BUo6A3si6KquqgZ6lbko/qYKDGLWtpI/7oNmupI103VmHhHhA1NEV+HvlD+8C4EdVBh/pPNGAR+rGmSAfLgbu1nKXUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732106754; c=relaxed/simple;
	bh=4J74FWcfqOb/36yFu+IptEWDC12comIQt1HpQ35FU+M=;
	h=To:Subject:From:Message-Id:Date; b=Vxhk/mf35BDodnr+AeqFrUcCfxFB/Iv4+e6YnIHpwyXYUf0GYH9nKGDBx856nzQBfkgTbf/TMjgRMDC6/OxiWCnwUx1twhssW67HOCsqfnLkhfG1MOxt+rqcNKNk8Z+iSebPzFPwZVZATvu05GJqkV4cASGMz2UEMuhAd66xM2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZssDNGky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZssDNGky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70CBC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732106753;
	bh=4J74FWcfqOb/36yFu+IptEWDC12comIQt1HpQ35FU+M=;
	h=To:Subject:From:Date:From;
	b=ZssDNGkyaZk4byhgzY2HeYt/JDgPB/mCjw1mJ1f5xTgKKaqyTUAvDrdtWO/4mDHgv
	 jjP2v1xy58PhbHNV7ruhkbLt87zResUXSTq8Vwa/n0yewvDPsoojg/+wUlu3vDk5mY
	 isuILqPU8qldUvJWeX4oZWE82Uc3m5a+mCjGVnh/sUFhSO6RvW2GWWzq5eKU6Z7KwL
	 33yzksxK6nO09N84rdKLyMRXZbUGc0XisRRHrgTCqriSrfIvDIrsNr5MqTFX0pPAzH
	 uORjSAKsSG9LFzEmgO1KeDGdOH/r/Gdz6sWFlhhHhD/ISPXLv4k9cn1G7q7qPD8rXH
	 nSyQfD7v0xNSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99176D63933
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173210675361.30382.120225885852629592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96dd1475ceb0b85b19a9ccab94996fd2e83a9fa4ae4801c1a07ddd2a02aa476
Date: Wed, 20 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732106753
