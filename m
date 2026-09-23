Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF1828373
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790137234; cv=none; b=GNa+5YR3HlCLc7XAGzcdqRxBC0pvY20qCoZa6PzJO8eu2mdGT1Gc4QIQoApcS7m5hlf0jZajNwpbb/H0Yr217Yfr+tc4i4bqV/ckD4Q4+ymG6WXQC5Bf1JOSBtXiOOV1xMTdDZNVcR8DJQQwHB+ZWL4dTvZmwSBOLxO88zF6hN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790137234; c=relaxed/simple;
	bh=97Lbwhbsu0a1ekYGQNtMWp+tM9CV5QP5ztwt6EYc8K0=;
	h=To:Subject:From:Message-Id:Date; b=sSqdGujCXNWtDgW4x54nFE1tW3Gj4c/CxubWMV736NCoOeaguLqkwbPcGWuuUiTJ2OCvsQbPcETLZf8iVb/KKAaGgnpGJK4derIFV+Irlan2GeFzRTGF2eWvEOF/0QsJZ0xn7TDOS+sXXxIEa+Eau4EYQFoH1e6wRnVqKatWUdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tdwt8fJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tdwt8fJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08F26C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790137234;
	bh=97Lbwhbsu0a1ekYGQNtMWp+tM9CV5QP5ztwt6EYc8K0=;
	h=To:Subject:From:Date:From;
	b=Tdwt8fJaV4unlHPfjOTFCJO1S5gKz9K8O7REGLawxA8ctv7eQ79fZ/zXgQzHWnZY1
	 Dq+B3XhKnI0We1GUb+eTGietZ9ct1/26NJyZN382g/xCSuxpnbpdW9Bq1e5IDwB9H/
	 D4SNYDenbucDfNHo+7oxhBSLXJDFidRMaaDa2LkFlTe0MiQjBSFIHvJH+QhWkJDopw
	 FTNGi0moC3eKdnmmXcxjfTohaNbFd/dX//mwFZPVGTAQ7/SSbXUG1JDWn8k8GZUbaQ
	 mmgqJyUlD22lWNVnqf92lLpeysZAq2JJvukFQJHnZJsuwSFM282pV32v7M76hVLFgJ
	 5df8X9QjAvygA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D938BC98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179013723387.22043.15746889643678007574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b905f3768d811b939fd3a135a5e759d3be72de0511b13a99c667a1ec1c131ed2
Date: Wed, 23 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790137233
