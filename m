Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413D71EA7C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 11:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742039334; cv=none; b=EZ/1fSQ4gkCST4o8ni3jHbAgq2rSViqW+XHCm9r7D+zlexHlYAgoGnJmj50DAQoMY7vuWz22sLiTpoKPaimNGAGkQ/qKCeohZpPm3fHkUklwAXejtDQw4NFj1BLVRWCHEtQyeWJ+wPiS45Mh2bQaAJsHzIk7SSuJ70viNX2pc9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742039334; c=relaxed/simple;
	bh=afmV+ENNg6sDtuXCYCFK9kBwS1APi4pSu8/f5KkSQlA=;
	h=To:Subject:From:Message-Id:Date; b=ss49fwQlxSf+zqnL2acChcmbCHuSdKXAKGW+Gm/FT3nQC1c99slKTFM8APw4qZtNdr2yzRgRwmK70HvN7QZHLNNCqW5J/9Sw3o7uKsq198ZdOhjfIzfjT43p6YmI3wZmvSkEIglszGFIEDWqHmdxkI8WvsRFUtFK/QyjtKXa9iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htVRHB9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htVRHB9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC91C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 11:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742039333;
	bh=afmV+ENNg6sDtuXCYCFK9kBwS1APi4pSu8/f5KkSQlA=;
	h=To:Subject:From:Date:From;
	b=htVRHB9bc5RVZPHcYSsu3DevzFlinzqxpvOW90ibh0BK9R+YuGwarlMdLImkYhWra
	 V5wkI6wAvaakLU2Pru7AplDrZotggdDqK7pwFbmh0lkjTurKErT7VxkJlllfZXjbmU
	 Yp6sw4OJTYapz3NCfbOgpCVz7BCZ71pOayEOm1Iey9hz3ukvdgsO/htrF9yLGHDF8Y
	 srsKEzz7cQARJMW3wYnpoeMrF5nbpAwi3BQgY299Z7/j56VH2RjAxw3VHtO39X0yWb
	 eu5ZmHHAd4VCTCiDdy8g1HyF3WjOuBH/yidLf3L8jfKDg+ANqzHLGf/OI7H0A0qO/Y
	 jUdLuT3kLsmHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A52BDC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 11:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174203933361.20963.13623959971380960442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c43cc056c1fb27010c2c4661c08bc58ff0a42fd0b45fba3e78279101f4b6b1
Date: Sat, 15 Mar 2025 11:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742039333
