Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479E617999
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 04:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718772563; cv=none; b=hm8appiM8BOTJRlijgcpAw41wg/DrEFOMnIqujQkoWRAcpo3dQxXAcExRBHmH/wGQhnJpYCtV/qT0P4HJCbtuwqbqRABVD8pjqvVotzHOv3TKvaEEKU18QGOolXpSCcWmsGbknDt6apNBhNN+wiy+YTeZEwFV8tWrMNgZIQYkFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718772563; c=relaxed/simple;
	bh=1Gn3F+vU5otzCTFDGMD6xdltKk40EUVWbPATAev0G3Q=;
	h=To:Subject:From:Message-Id:Date; b=DzW+tkfUoSd/GGuzXWLH4wLeXUEhFf3k/VkT6+k8FHRgN+E5ZT8YChqAAAjAEIvkM3k1KF4UzxLUBFJUGggkVHK36lzaE8FY1H7QQAwrQH25qVVetvIytTkqPasJ7vaybnibbib5hcoYUml8ZkFrB+lCVZLaeJow0EYQnrn1IZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+8AMa4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+8AMa4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA03C4AF1A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 04:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718772562;
	bh=1Gn3F+vU5otzCTFDGMD6xdltKk40EUVWbPATAev0G3Q=;
	h=To:Subject:From:Date:From;
	b=k+8AMa4m6PZYv1fsJ7NPRUV5BtAhujx7brygKB6b5ikJKEJYfH4JJhKGj822AMiBt
	 f0dKeuPsThj5L+6e1JQxv1EAY4N/ay9FLKICfL7ZURd5VyCBqajJJM/dzOYEp/gEVz
	 x31OZLypB9WvA2yDvV5V5qrmoehrnjGbU1EaLX2nvVOXK3zP9Fp0XtmYluoeroavJv
	 zU4FM1uZee5+IF8FAsqHCD3MV6zNd+Pt8d3BvtEUMhOJMMthJfHcHEVwhZSIFbxn4Z
	 ZCc9Bd/m4xmG4TF8fegld0XdWxGPpLjv3SoFA2URkMQTyyp4CjDj6dq/zA4LLP+lg3
	 dAizCJlc0dYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC611C27C79
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 04:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171877256276.14581.5843341547491652242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 005c42c740e9414314ceb95b0f6eb29688d82dd2671470389c39979ab30e386a
Date: Wed, 19 Jun 2024 04:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718772562
