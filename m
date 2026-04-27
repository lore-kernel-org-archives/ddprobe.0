Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D85E245005
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777259854; cv=none; b=XGn0DjZ2UoGjwQ/mpyarMmmPAC5yM+ENTo1tIoWZB4PwsJlzX+THBHdJILZ0IS2OPe6Ukz429D/tY/UfMSMQYbF4qUkOUOV1cHUa6B7hNrZ1gY2We9J3OzNiCfYJgiy7mYYy5MiMosXVzGQ+bDDI1Q6YLa20Wab4kOm674wCpEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777259854; c=relaxed/simple;
	bh=vr6LFq+x6ePYciIiroZEapmxvXtz2DgvOqniIKpAF18=;
	h=To:Subject:From:Message-Id:Date; b=WLgL4thUsyRJGRPXAs7z/URkCnNmvXYhFbfGYT2dQ7Yvxsehayf5XeFMwW/+a1JU4oa2GvBEDTwSbWl7zI8ekOIvtZ3PT8MFIpZmCz1aYgeYX8xyzX+Qozs6T703nPI5OA3xjQXby+db92x352JZnS7NSCZbZbyjMEendvQ4Gxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPjnEgZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPjnEgZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8530C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777259853;
	bh=vr6LFq+x6ePYciIiroZEapmxvXtz2DgvOqniIKpAF18=;
	h=To:Subject:From:Date:From;
	b=GPjnEgZ83mFUKLbQ8Z4SeMhcn5zDkhZrPmi7Y067B+tzRbODhaylJ/hOitKYrXR13
	 GkLonR/UURx4mzGZyStCkUJbVL4VNKbKigqn0kHNgG+VoTADXZ3znYqUyLdMaAM9mb
	 i7DSSH28dXnxARx+3Yx98pWiMf9kvDkxN9W3dZNlddJo00pw6apMRqIskg1XI9596j
	 H05WHiK0ukjWHBY3uymnmbRIxy567FwN0YmX6mzVJifSF3phyFN0X7SgoZoiAwNO3G
	 j4gL5+5T4FYS9JPcxpcN3zChR60UsCWMJFQWuTpIPdBbPqF+uLz6ubaa4IETZ5/bk2
	 jCr8izGZ9TCvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D9CFF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177725985368.20729.7409549265815608126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8435c3a1953eebba9fcc727dea8d46fbcc11136fb25eefeae723fefa2f8998b
Date: Mon, 27 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777259853
