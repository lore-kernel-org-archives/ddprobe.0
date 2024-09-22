Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197086FBF
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726998954; cv=none; b=rUBsB2Ze5qW9twrMtus9/C0r3pEzRgWuHXbLEO3vCtVR3E6RE2rMhcbWKeTqozjszYJW4qax82/2hRsIWi1zuuw0c1BzjQ4NQxJvFxujmYyASJueBWGC2aqkYzZEdAORiLIyjFG9YL5ruoM2yMivg3uQm6fUpB0YV2ZavFX6wus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726998954; c=relaxed/simple;
	bh=x+8ISNPftsSA2RvjZUZXXjkLa8glMZykmbuSWtF81vk=;
	h=To:Subject:From:Message-Id:Date; b=MBJmtKNMlpfXbnHHKIMLJatZKW43W0rOdQQxbwbOTj6K4jTn80lnCf/k9xaQJ+lgqv4bj8thIrfoyJS+0XBpL1Prwd9PzNJRl91E76jj0xcdTxbMf3Ug1FAr357nFFwOSHroZSEJhGYcNAj/YLV51/52bGGxA7EupdJ5Wj8iqnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6ZClCK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6ZClCK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD60FC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726998953;
	bh=x+8ISNPftsSA2RvjZUZXXjkLa8glMZykmbuSWtF81vk=;
	h=To:Subject:From:Date:From;
	b=G6ZClCK3as5oixura3rPVB7pBTQPswIjFkGLVUfrl9E7Q4Z0sJiH4JM3E9RH/OOrb
	 J8Myzt1n4cY6xfS3a2gzMAOgJyEe0w0FdbGpG5dJSLT8bUGk+kHsBuIfUXgXovppK4
	 qqKFq6nlCSpyKMXzQ9Wh3rYI40jIjahzxhK8FVl6SC+hh/CE46+AWAa0LfGFsP/+9K
	 wT8pTNmJorOstPV3TphzRAi2FkZqG8gjCy7wGORvGw2ofNTqpD1neDdcmRZtBoPW/F
	 caCrbFdChH8ZuYiGDYMxz9LpUFJr82wiseL2l10MS/A3Z1koUjyUXfnHzZTMCByIEF
	 7vdJgXOxVuFWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990F5CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172699895361.16884.5813752377307496095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6034937acddff0500462eaf88378b28e6d03a5dfb39c034387ae9b9372710549
Date: Sun, 22 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726998953
