Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4826740F729
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787222434; cv=none; b=rry5HOMtpQ6aMpErOeEzMZuyrteza6jna5BvnaAwqgLEUHTb5Xu8ObZchTLBQdH1OQeF6WEvw3qXr6kOEjA/yWR/Np6sabKj97TZM06ckEsxwRsWOdWVfTwnL44fHQNZf4uTGndGcgJ2XngTf2ndISd7XewsT/xUGPxcYIbjlcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787222434; c=relaxed/simple;
	bh=XIbZ+1nJPlBsuNb2FP/v2oaHHt0s3cRZEi/BiKPHgXg=;
	h=To:Subject:From:Message-Id:Date; b=gy8ukOi2BmUdiBxVJUALQWpVXsDVWxUoXn1DiwykxOBCBUQQV3p0WH/KNlxwzmxEuwdDTpS2sf8kiA3CIi/GR9Lh0I6WFxaYSQFG5xIEygJVK0DI3Q4xZBpRY1duV5a0VO+UV2QpokrtcYAMH9Wo/tDYdxOhLgeYgZoOdaTH0Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmRx5spj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmRx5spj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E06C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787222433;
	bh=XIbZ+1nJPlBsuNb2FP/v2oaHHt0s3cRZEi/BiKPHgXg=;
	h=To:Subject:From:Date:From;
	b=XmRx5spjSqN7g/LJMSLT15kTh7++DxAuy10rtU7ixKhZNUnWboUmJBDR39vAbOGPS
	 aPJdEN6dKjp5IkA9k4kvN7IK9BmZjgbFIalTMXt5aa4y+sjMYwLjA8bzwS1tVT1f2+
	 OqwtGKFX1UzraNXAo+yzJcTF3jnacdBUrcvH/pylrRzKKhO0LVxKkVsXW9rOe7qbDI
	 4ZLOLTjArrNhBoe22LfYqhmctYQj99mxfhg50+GErOHw5h49rWaQgz2u7VNHBpaIcM
	 7GYUuBlr8WqgNn7NR08yPeQ/JECJdMzG7jAEG3iTIoK9RM/L/QjrDS6x9TQoibtTtb
	 yOjBUgv1Bth6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2A0C5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178722243368.21569.7744671857102531486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4958ad58c0ad6c0dec9208c344c6e05f719bde7c1c3c91d940c943517f57278
Date: Thu, 20 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787222433
