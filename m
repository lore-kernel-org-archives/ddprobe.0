Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139AB2FF66C
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763229054; cv=none; b=rgtMMTgdOeJngL7j33IiJ6RPIaa6PfThcpaDQFfMWITNNnfxjrxU/l0H2L7QL0tk5IDP9fOZhVD5Fs0PWsQY2AXBEo3GXAZZh7hgoOC2D7VxYNwp0LdjQ9ESfSc3nRJGISHVoKgN/i32fb97jpR2KnGn5S4+D6o1WbjGmJfw314=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763229054; c=relaxed/simple;
	bh=ZRbJsipRfOR8ycXsGJO4jHacRlV6s8oALFGYvrwXgQ4=;
	h=To:Subject:From:Message-Id:Date; b=CvzxJIQnN/2n/STj0nkJ00zrMUWypRLgXhaBvD9WWoqsatmcAm2N1qZ9FaG5dbhfK1Uzx4XtCrcGdWaMHWlFt7/pwVfji+SruKPd5W/p9KCcl9II1Ir9sxO+RqedPMzq91NlN+tYegYbpRolyhd8y4vyqziPPQi8xCYyURXKcww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SY0V/9gB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SY0V/9gB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A477AC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763229053;
	bh=ZRbJsipRfOR8ycXsGJO4jHacRlV6s8oALFGYvrwXgQ4=;
	h=To:Subject:From:Date:From;
	b=SY0V/9gBXuYv179+ObcMOj5DRRftwPr8T4Sq+8YC8TgaKuRQbmUikhdQlSdIqYlhM
	 WzrSs5Ci9SUnsHTckHgC+QNDy10upPtkVFDG8ww9FHMboqtGJ0xpctnbcjLG26wPuq
	 +omgB9nN01QxR4tGm3Hv28jgGrr4+FsFTseFvUbZiPeaIPr9oYmUCDE+eLJZeWp6xk
	 5mUYDtdrZ7zuX1mWZ69OitzYKwoY2isLpmfWX4ihVDaHIx76zZtMAMMNhBk+6s5TOp
	 n7+KF4y6EifQLULQLv24Y1pehr0wAIo+G9vpF6LUF1DbHAMSh+gpZYkRsea9oNOy4K
	 CE/v006vFYhSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9606BCEB2E4
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176322905358.30568.5887226980783384870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892e85ca878473ce2b1c15296c613e85d79663835521c1e5451c5d250fe8acd4
Date: Sat, 15 Nov 2025 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763229053
