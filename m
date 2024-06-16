Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684AB6A357
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718539703; cv=none; b=a9DL8pR8Ono76oVEE9ACOTtr2yWyVXZgnXjZO1SrovQ3XNMW4DjQfnABhHVc4Yq/aIub0tZdeL/Kkix/s5pvf5gja1mg5UkQkbT5qzJyfbPWGswW0zFgTy5fJMeFGiWz2fYeApuHsFuIC+RHv1CPle0FNXjP5bQiIGX0UdXDYpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718539703; c=relaxed/simple;
	bh=VUcnOiNV8SL+nk9h/LVtoSi8OoAZO1951NrBXpDIEac=;
	h=To:Subject:From:Message-Id:Date; b=ewpusJytX1f9UZ1tn4HALz0xGjZBQZrlPMtoTKwvO04NVCtBkZZAzEd6BZ6kX5KvdpyLFMiVWbFO525R42ghZu5ki9jSn+bl3oKZExairuf2uKhT79un0Xr2mv38QL9sOpI5TKpTWLc7Rf2pfVVyvdO/TBZ9RTKBKXyb/Kg+/aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZXb7QEr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZXb7QEr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECD47C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718539703;
	bh=VUcnOiNV8SL+nk9h/LVtoSi8OoAZO1951NrBXpDIEac=;
	h=To:Subject:From:Date:From;
	b=aZXb7QErRlPPfvQgmjdCpCOvVMJUfCZxWlP1dtwDhQKk88NG0yk6tuXupx991ydPH
	 mElJfPCG5qkmaNmoZYJ6qn64O9FlxXMBHCNIST8e5WpU9sj9awd44/ZO2PZBFDGxoM
	 oj2jUFd5LQoWc1tMURlAnOZPkgHI4qHDQZCwbgz55ocHDK/tXF0UUpeDoJuSAPFfkf
	 WwA5gNRjydELtWfstbwedC0lfVgBJFUFq0pFCqkFeLeaE9Ecdq85hZItf7sXZhI0Eg
	 X1fVK8tRL1PqhjAfMFHWIDipD6mkgghlpGGyNuH9peBu3s7VGj27HiazmVeXjLGi61
	 GlWthB2D8R+7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5E93C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171853970282.7960.11602562544251284140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e676292dc02c9b8d2d810c0fbc3dec4975cad62d4748c876f810fd4b81e636c
Date: Sun, 16 Jun 2024 12:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718539702
