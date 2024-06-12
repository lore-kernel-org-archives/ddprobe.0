Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5770516F299
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 11:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718192303; cv=none; b=K26RYEm2ix60ilk2h83wXOS6MqWvjAetP3h3wRFgEKGAHscyzqBhN+53NIsQs3JBR0704BtTCwREYtb1JAfuqG9C9KKodLKrGodzwQNLrKn/2MpJR6rJzJfJ8eqaz+S2AEY6SZB7DF3xAMp14hdD2Tl3FimlHAokIiSkiyJ4cYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718192303; c=relaxed/simple;
	bh=fwjxp4u8DUj3EfPUt0XlpXnC86QhqCrLhTu2WGIK/nI=;
	h=To:Subject:From:Message-Id:Date; b=XKzUvA6Jl/fIINuMVf22YbWol+C9yEQBGwJhRK5fheG9qyxfP8hbLQx6118H5ZWAxtJc8/q4WO+OejInYltFj4B+kRjh9h41vBXFVx8bZVhdJwrogSbucjGD2a9y9X+4n5jVW1GeubgnMY7CAn2ry2uqWWCHoTxYLw7PWLuylzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goXQmRoi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goXQmRoi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65AEC3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 11:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718192302;
	bh=fwjxp4u8DUj3EfPUt0XlpXnC86QhqCrLhTu2WGIK/nI=;
	h=To:Subject:From:Date:From;
	b=goXQmRoieZWw6r/uczfCQOQegst7NAVBTrLXc8gb7KE6wywqTcWXWs5UneMU/Mh2J
	 n5LtiSVlI8PMVJYr0gV2BVSPpotZ+d3kG7/hAsBakyPEjQ8j7KPL9mu+euO/VYduGH
	 4Y4zJqqdJujYA93T77CqR2duv1cGPj+vX5Qm0BYUzlhlEx22twNqdmPW/m+STOvW3Z
	 jhynNQjLsjGFvDdNE4iO1FiZI3mjgsRKNyYN9mGxe+U9fNxGq7KbeWximkPGtrOhVS
	 Q3P4dvSdv5ZTlz0lSeM2VF86l2MVhivV2ZUImgSwURkR0BdlT8x5LqS65FuHuy9jOP
	 ubLRKP5byLE0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3501C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 11:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171819230278.24494.4904351959721542464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782609bc9c834a5ae0fcb04b7cec3f34a9e8059cf6484aa9c0be267c060cdbb3
Date: Wed, 12 Jun 2024 11:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718192302
