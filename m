Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E894E385D68
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789196435; cv=none; b=i7cS5f+XwIKv7lCM3JFbQDs67Q9Zaw0hFcV3Tft30aCS0n/Q0QTJiLE1pZh9w7pWGCbQn3dnMPxJ43aT0BdFbVMzkLQP9E2KILsCm3CJXu9ied3MUYc9s9teK/CxJLyBmYJQp8zieYTvMigp9I7C3EFFBVViezYaREyZ17/k3iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789196435; c=relaxed/simple;
	bh=Za3tYeu2eHK99/Q4f5+znKGqSpMMv7Q4sW1B5bdMits=;
	h=To:Subject:From:Message-Id:Date; b=LwLH1yJ69u0F0S64rameqUttVEnS60AOMsf6j/AggszbwVcqcRIY0O0ATwRrdnnIBr7XTLiem/WVqceOysUOJDmeVyHJSLFW6niB6b/FGaT+M3tWuNH+KuBWetwIWZ1xLvF9x6SbgjuxCHdhLGCMRDUuHbD+gMi60p1hRJT4Djg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBTZNv5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBTZNv5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEA7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789196433;
	bh=Za3tYeu2eHK99/Q4f5+znKGqSpMMv7Q4sW1B5bdMits=;
	h=To:Subject:From:Date:From;
	b=JBTZNv5Pz/CwEJ0CFb0T6f/wmVR+zaVMQf5Ee9SHZf07d516JajdyyVXP7QihiRNv
	 3aRUb5WWps1ex59BuW8sEw7xfpg7Ky5joOxDGocMwF0pTUBRrcc0bneiyddDVyK+95
	 daLnnXioU9ZHdBhlwNACC2eoxQQOWsHmelGGySFrdD0+o/eGY17Dv2CmfS4CjUQDcs
	 4f03wwyOTywqNnNXbFyX0dVw8ArfOqNvVSkNhy0mB3ZfYoqIOi0XK/hgLILuOxPgiP
	 oirzlpWScRj6qdP/ROT+sKY2tq9VijfQo6lHRKSJWSPMw5EQAecUJochgZ6Suo/LZY
	 F6OFMv3+PZddw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91BFC79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178919643368.9905.8177682500783314468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2937ed74b03849931202965aba6dfe05d7149c38880d29b0e71f44e81e4bfc16
Date: Sat, 12 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789196433
