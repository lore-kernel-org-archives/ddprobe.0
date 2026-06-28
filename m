Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3728D32D0FC
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782662914; cv=none; b=YlXSeoO3twWIuXztDnkSQN3Gb+dA2ObMG+yEgyFyhFlPBAF302nde7XdatkXzxcTDpgzehmmCmjDrUzXecLWo02fir+WgwEofdtqkBl+cSOHfWj3wdZmmAj+SSnxBnbTRIEnEtXGIEaM6shsbcXZZj1R8MtESrLC007/HZRoSrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782662914; c=relaxed/simple;
	bh=46hZhaiOGzTjbFebEV0ifP3WfekE6HtbgIcZX6f/qYw=;
	h=To:Subject:From:Message-Id:Date; b=gM1HvLXDww1+GyFRrN1MVfMVQ2ndRV3mhpqm8qMac+Qf9xwGMNE/H1n83I6dlVBmvpgOVcXbYGw4vZkljqAP/7ZRMYCN7iiTVMFq7zy5W7V+A0m6XnXjEKEHu0E3dRc0PX1JvII5K5F4vbKC52UC+VGvZPunFLoh05thPrFSRVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAwElvK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAwElvK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7AEAC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782662913;
	bh=46hZhaiOGzTjbFebEV0ifP3WfekE6HtbgIcZX6f/qYw=;
	h=To:Subject:From:Date:From;
	b=oAwElvK8o6N72ywOrm5SkFAFx7fLBbrCmGLkcbjU3JC7i/oc6FCbgdOYUZAQFVPSn
	 vHdTdxp6OtsTSiXtpwUGIlHow35TzDPd2DNoyRqY+o3d2bdM9eZHDdESH2Ekj4yj9u
	 kBlPkaugNEetlAnM0M1ylgvjsc1hJ5kxQ7tdTeS6Yw56EnoDS+grb4wjj5Y6q9DBSy
	 DfwzGbC9yo6ZSx1zMaLbKjjj/4fV/TJ2gUtLtObTEcDtdkEsF6tNaf9sjKL4idYmRT
	 buc3BJ7h6si334FBSm26ps1DwsrKnHpbPzgkhM/v83Y6wBnLJXLZAl6JkRSYbR8kKJ
	 +J4pRhiOG9HPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD928C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178266291370.29817.11456789120234187470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04eb257ee396324ebf7617d15115f1ee6ad19af5acab36cd6f1d18c26fa60e9
Date: Sun, 28 Jun 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782662913
