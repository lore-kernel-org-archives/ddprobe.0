Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421721E3DEF
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745016595; cv=none; b=Jihp8RuvZ9N6OAhJ/uQzimYoQIZiGDACOt+iC29QgRwfDsIPoXc5qmE0N0GCs+jdLl3TuHWl9J1qxXBOMqUTi1LX/6s2ZsimyGpjZMrJAlY6kUcck2Om/P2KfTKqCtf2rrkLWZOPC6qn2f4feJy1JqnDP5Li++J1SzH5HVwv0ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745016595; c=relaxed/simple;
	bh=8eYTgaPCAVwYEFO1ZH5ZJcf+gWNOUR7RHi/1Gzf3rJ8=;
	h=To:Subject:From:Message-Id:Date; b=Fqe4uhXb9364pmhRkPMVvBwYePhKltNPyF2jPq4I+HO6rucp/NVla0paa0PM0Lm1S1zFACw420CiT/20/oZDQWd0YZgAiLVpgtQxRxO/W1XK7vOa0cesX+kSQpWteHuS4CT9fJd29PKelo2XUnASzyEqnl1MRI5HOJ6Bf2V6W1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qu5hrcaj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qu5hrcaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23BEC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745016593;
	bh=8eYTgaPCAVwYEFO1ZH5ZJcf+gWNOUR7RHi/1Gzf3rJ8=;
	h=To:Subject:From:Date:From;
	b=Qu5hrcajsvjXsZR49KleowxptMmrn+RAQ1Mx/tv8DZwVzQXAjtcKo2GjXPpgLWu4m
	 SaAy/AzVYbKJUluU1MGl7lOvn6EDqJyX1KoYt8uLJBA2bJyc8Py7TXtQDcnY60953I
	 9rafKas/OEibYnM0AE81B/s/eKcCvITtqqjrVeO/KnGzYj5lvVRQwzWvsHctUu/PVd
	 3tZlR/PBd1TSJZ9ZEirpK2OE9U3U/rk/SUC62udazY/qMtY9T+ypAbAHMbLZqXuD2S
	 /CG3k3p3ezyA0arhq1hJ1SyGmii9bEqHvmCvbT6K8eEeBuCg1c9rm0AdviD839BP8q
	 qaWOoATYYtEhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B583C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174501659362.26869.13586335728744873275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48705d04a2a9488aba0f10fb7117e429a38aea042302bb7e4e2a72bca5408657
Date: Fri, 18 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745016593
