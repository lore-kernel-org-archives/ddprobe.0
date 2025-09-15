Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2540B1F874C
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757903994; cv=none; b=Ak3VELOY+YsQEhR8sOPwnTSXGLJawSeSscjhQXtv9eVWn3na5fvJ2IbcWJcnBpMBqUXhx1tBxyf/EuTlqTvJw3qbYgRuNVXlwQI3HiJyvWX1ADcDYPEDj11zO1Vf9yr+Wg6mF6b0Y6EAcWliOckPhNokvTYp4wGDAsRZYQ5eLs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757903994; c=relaxed/simple;
	bh=OFl1rN1xo/RW1CdsWD6QpS2m5CXEZvLnLL2xwZFDwM0=;
	h=To:Subject:From:Message-Id:Date; b=V5ZeKOiSejJSkgnAhfX5xVaUM1kld4LzpV1RoEEDF0dEbiuV6+hGogfN84mXVsxjbHTpYUlY//PNh+2DwBPvMRFgAdyZ9rDCGTBhSnKOChbtm2aBmTgvIWLwndxhVZ3u2tHCh6WsvwGBwgCmhXf7U1Bz2NLfOsCTSObMzYma6x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ti99srff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ti99srff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F63C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757903993;
	bh=OFl1rN1xo/RW1CdsWD6QpS2m5CXEZvLnLL2xwZFDwM0=;
	h=To:Subject:From:Date:From;
	b=ti99srff931m+v1Rbi6fig+mBTFhqUU3qT21vf7iBge3plm6/xztMMIgy41YC7Z1W
	 RQVJgSgnaWmwetCQASmzjKdQ0eOaZHm0Dua3dWqljOYjEweyrvY3TFH6+d1Kb6NhNw
	 wA1bE4srJXIIw59pO74++1UKVM7aSgyFE6kl5s4zd6mJjdQNX6f+SeIevcKZg2nmk1
	 5eREtntt6OyF3GQMy7coKDBwf1PEWkS5L77xAS1mKaDRloXjUxF98Y02KTgXqLfeAb
	 sK8FNUp557jvUOlylVuOWYFKWbQYZ4BWayf4cQFhHupJYF1M9laOSgDvIonK4QNii+
	 R6FlbyeyWA7eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F355CA0EE8
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175790399357.25880.4820674987651591725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0ade7ca040c5ad663293581bdfc8d116745a8a52869bf97e05f15128f46005
Date: Mon, 15 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757903993
