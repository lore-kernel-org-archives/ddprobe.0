Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E46A2848BE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776136654; cv=none; b=OGec3iEINCRqy82snXQxD9A1hz7Jp9XHViF3kSfvXHaPL6kuWiVjLwg8l0Cpcs3ZlBbQtRJHFZod5RlNcK9Z8obbua23J1fJo7VzsRIAVgqkgA9+yBe/vY90Iq7JNnk7oKP2R0S/C5UMvBnTk+A4YN3vpJ1YqIe0X8TgEq2hlUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776136654; c=relaxed/simple;
	bh=xVy63MZ5TBZbBZThQp6tGlEI+xOA3lFsDqf+GbKKgzk=;
	h=To:Subject:From:Message-Id:Date; b=rXDJPgpaQ1sZdgp9Z1cusBpHnqrvse+4hl6uFSWuuSInN7o1jeVKHQJWOOQW2Yt3XrJpqVvACS7Nz8iNwh6Z0TTmXlG5H4w4B8rYvm5Eh7p8htX9ElaY5UjLFs60d0Y2mv7nS3WYrJk7GzOeGvcxl+FTyBz1A0N81TH5vk5x59c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLLTcYqD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLLTcYqD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF7FC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776136653;
	bh=xVy63MZ5TBZbBZThQp6tGlEI+xOA3lFsDqf+GbKKgzk=;
	h=To:Subject:From:Date:From;
	b=uLLTcYqDt3LrOPTmKK0Ln4kAVIgj+FDFHXegZMyi0sdZ7I1KQZpwuv7nehtF/F5ue
	 7cSqugn87WcKZpGr5C1azNUPjLjowG0Z9rq/u271dwORmPQH4UaQnDPUoJT4R2K1hG
	 TYDy8QWuxG8vcAphpo7DSJtLYz+SUVb7O9zGowX8KR7nvDXFw82wVNPmfHHKOgmJ+q
	 ll6xcq2Oe/Y8G8kir5NI9Key9qfdFfuWzVevfHs0ic1oBBiJcYCmrxwghIEYtwkC8K
	 MvMw+UFV+XAXgKVnLdX8elbmByaglFElgbeMS8VJKy6R2pkavJ+1KIWw646cKpDNL7
	 z/Cw9ezoeMMew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB04F531EA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177613665368.6441.12848290654261722893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d342181f74267ab05f443f79cf9f19113adc8f53b62c9df7f66f76ade6e2c7
Date: Tue, 14 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776136653
