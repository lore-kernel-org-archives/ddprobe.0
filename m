Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495223BC680
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789092034; cv=none; b=k8bb11yzqCPWwP39Ks+rSuEmFtRqPSDGoqKPSbkq2gqfgt9gPOg40FI9OUWvUobP7JE285FE59AvR2yUVFzduDsJ3I3/+2UKhzlvIeNK7PILGA6LK2bRKELDTkE9UF6XkkxsDaFJ+nAbLvpvlORGvj3qif37XcL9VgnraF1R8ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789092034; c=relaxed/simple;
	bh=6mZ4G+N1s89nLfAWbA0zjRsjpGmBQyGLybygVMVm7/M=;
	h=To:Subject:From:Message-Id:Date; b=Tcprlu2bwBGKJFvmPl0BxPsocSvEgYXhJjF1HGd4r0dMYsV7lSN5ZxuEPPU/Q2tFxIG2GSXrGSFIS6hfamAtLJV11GqlzwWADZe1JwaRYQmAGUlHhYHDPXQ4iRWyrCobmlygXu2XtYf8R2otCSjFdA8rXyzmUD2IjI8pbeFT97c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgEwzfBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgEwzfBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE06AC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789092033;
	bh=6mZ4G+N1s89nLfAWbA0zjRsjpGmBQyGLybygVMVm7/M=;
	h=To:Subject:From:Date:From;
	b=VgEwzfBDl8CWGX9xx/kTYj/hn8MSa1jIcBqkmCTk1dMmyPFj4zdX6T6jQGJ6WbhTH
	 57xz4eEIMAQjb/Oa0Y4tzOWi9PdLTcwXZdCRyMbNSf+hZ4q8duZ1bpA5YJ2yM7XeEN
	 +f5Erin5+VdN8tgqpOzEARtLCtO6GR4HU1Y2sRPcEzlivrXu5jiudbW3mGQoA0yjW7
	 3deLv4RbMW0D/CvZfdYLdvz6IgywAzG8aZ56V5W/nVRNdbjGrTanqaUUh7VVv5EfxM
	 rqwLySk23ZvgwZ0Lp1qtDV9NhhEvnk5CHSUUfeQzpdX/Bz+68HHAUHQEgI+Naahf+j
	 VdFzAiUP40rKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5A2C88E40
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178909203369.12451.9609887477812250513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8bae8c4997a3f85d2174bf8ffb6e448b68a40fc52625055e379d39e7ce6f0f
Date: Fri, 11 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789092033
