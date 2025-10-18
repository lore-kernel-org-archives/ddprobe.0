Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4421B10A1E
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760762994; cv=none; b=bfD1Zr0/B3RNlhI/dalkbKVTUNcjwOxePVYxpXsug/eYfVzdUyot7RCy7quViuYzrPk9i3SC7kmfWDAqRaN0fl9r3vSqsPThF6Og8bspOcnFNocRCw2HJVZBWiMGQ6CaKFHnVHqfEFxmQXaWwzMZiHt5kmHP67F459isjCTXV48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760762994; c=relaxed/simple;
	bh=KStkJzhInjSMh8l0zH3za9h5BbAFEbGY1SUNexPoeFw=;
	h=To:Subject:From:Message-Id:Date; b=Z7E9AjjXM7A6MrUGlZI1o3RcNpWB3PQV+wvcUvD4q8wkrBf9S05wHKc7GUjvL6kYOK5wfwwidSFQAZUiJuAqe2NJV5yU/SCHzm8lsHm04hc64jEvILxgQz7RQpCQFWXiUdxQ+JIjoJH+MXpnnuT2J+wizHtKWaBuW6cgbI4fdHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jS4/B+Q/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jS4/B+Q/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6621C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760762993;
	bh=KStkJzhInjSMh8l0zH3za9h5BbAFEbGY1SUNexPoeFw=;
	h=To:Subject:From:Date:From;
	b=jS4/B+Q/AgM04BbNCzhvuJNJTfDY/3+RacU/rE14aq+24mL7hFvix+6Hy2hPJF7J+
	 yHxgAfcz58y4nIfPtKMFX5nhP8yKuBIqb2+E9adPcitJ+Qgl8N2SnqYOojhBDwydmZ
	 Pi83CYNMv9nweXlAx1/1eVy8uoewCxmNhwmWPQK2RfyvahSqzXeMLEueKuCtJRJ7aC
	 Sw1cjoGzNSq9GDSsGfKTEXnN+lEjlcpblbLQDVBUjld6XaGAdL+Z8QaNNzZ0DLL3fX
	 NZ7QH1+s+RDLuVBOeyUyJSkskgkJwitD4zi2wLA7awV+VW3T0Wm545guq/DBt9nOBW
	 UGIf5BHFnIUBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C85CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176076299357.29841.6417024543460577923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4312d39a40f29a265a30810b786c92dc1836b9089efc505aeab05f5c5f0d03
Date: Sat, 18 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760762993
