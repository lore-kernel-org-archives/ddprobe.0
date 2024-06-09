Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E69DDA1
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 04:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717906643; cv=none; b=hYCv8kpFxLgSN0weMjFn3HuGE017UjtZOkU70msN4RhGuk+mE8U9jiT2RC6X+4pycxBgc75NrZyHakuziUvUhqaj1D2g/dtZXOqhCw/fRQcQDS+HOmVlWkH98sMHWH/1IL5rS4eBaGhaLI7a8lBjd9T+4QzlBQR/nzwvnbKSejo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717906643; c=relaxed/simple;
	bh=j5Pqz+j1KaiooeeBiE2ZIiKk4RCFcQPrrf/xJFq6paU=;
	h=To:Subject:From:Message-Id:Date; b=HaumT9SZWhRav3Q3EliWFDcsZMJ7t7cqW/KAS86C8lD8Feq98Wl0rMjfj681ISeT8JfP8xfn5Z15Dj90fdnvlCe3dCKYCIYDbcPN2J0VGgDWdLx3bFV89S5fq8Syj0LtYtbqxWxZKI66gWb487MGR2nnRcF8dPnhGAN+EDgGxac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMVfMxns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMVfMxns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E22C3C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 04:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717906642;
	bh=j5Pqz+j1KaiooeeBiE2ZIiKk4RCFcQPrrf/xJFq6paU=;
	h=To:Subject:From:Date:From;
	b=LMVfMxns3ZQ020naFEQJlueiwAlmvAzLPqvix6OlUiwDCMkDdUL1x9Hua64IcuUJv
	 9X24ZftP6pB1kuPGBUF4JoGub/F6o/jUYuRqefgGROmka975TeNdXUPbyKMpEfc6j8
	 gR2Rs8j9US36hAZ7Q/VR9p0ISSPXu4cjNKGukc5Gc2hIYM8PkhK640LVHh3IJsM9/c
	 yRLObhSFwetL0w9pAqYvgmI8d7x/BnFMdKXNY2TUhpf52EDsXcVRkPW8DD0WwLyPjT
	 +gn8H9uykqvRp+42r7L/kNR3MQhu/oCvsDXzjXG0T49orrX00e2GeqG5k4M4eZCARA
	 AI3rnbnaqKPrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67A7C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 04:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171790664279.24522.11261193675006531801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 423e3f97daa32b0c8faa8315a2a118ae668784dcce1ff751dda7d2f27543a2c8
Date: Sun, 09 Jun 2024 04:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717906642
