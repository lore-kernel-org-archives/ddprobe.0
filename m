Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201273EC2CB
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782848914; cv=none; b=DTxYGx6y2cDwx51TCsXAls0CiNy+aWlzi1dx9Mh7hXE9e1L/RpBvaKsh/lzZ3D2DtfuxrQ4ZkWiQ0WPxyTE6e9DIcC5VLIxAYoW/HeT0YPtmAFIEar+FYLqx5iZXd1ISi9xLwMs1g0EJtVkBL4jm0kNb7v4azMpZdhgUk748Qlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782848914; c=relaxed/simple;
	bh=b1OoIhhwLb0WGlgna9O3i6YogO+KryUrg3Br7ALXyDE=;
	h=To:Subject:From:Message-Id:Date; b=Vol58dsF5ZFsK5bI+zafTSyo1eVXHH/0pCRMxUOiajC1xUYNmRtAcdYQSaqcp5DJDiCQ+ioI74kr8V0UkqSpCDUsNdFl8Dy8qQoQPrIYgcqvZLbCJxDJku49jk0hwxQVkzEhl3uOt21wkiL99KjM0zxd1WwZIGcE9u/nqyfkiQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ER/Iv4+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ER/Iv4+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB1DC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782848913;
	bh=b1OoIhhwLb0WGlgna9O3i6YogO+KryUrg3Br7ALXyDE=;
	h=To:Subject:From:Date:From;
	b=ER/Iv4+zW8ye3Ue3GTMnQNVxzcpZqmu8x7EjL3c5ep9ccQYhTQlGhgOhx6tAYgZjZ
	 I30hufzT7Ko+/R6t2iRXPzF2opdLQG4W0YeSThihF+MpwNcQodCP9U6WjoFBZ4ejF8
	 GktT8nIAdz6cwF/QEczvpRjwzD+E/O3bAcltTJ5tQZSaL4EVmZyhVZl5hIuSQ9seBP
	 Ze4/28WyktNZQNT9V5NB51yJlWKY6jFCC61BQ9UTkV1eDzOAJ/do4UYUQVhinEPiUR
	 oWqw2mxJdDc5/4ulUHQFAQXQpemCbLn44ONFU1hapnU5a29BXQUtsLaSIZwe536msY
	 kawR3C0QRcNPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05CDC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178284891368.11375.3039907801863324125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24dc87dbb821d33d8d37c9889c613e14202309b5a225c5a29a8b0c5199dab00d
Date: Tue, 30 Jun 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782848913
