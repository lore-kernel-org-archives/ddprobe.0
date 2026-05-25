Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F5336493F
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779705754; cv=none; b=PGOeEs/kWrbf1tUo6W2tR17Xldyphi9XDM8iv/B40BI/Cv+fLYU8oOBVYvJWTcjx3ctmlY7J0WMfosm/KyZHmCaCpDd39hHpG+J2pxlqoVV9P0hWAFMrsvNh2ureX6lkkQNWPaTZ1mNAxQXltE/QPxetwCUE6+3lo+htG62IALQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779705754; c=relaxed/simple;
	bh=LvPwDI7NXZ6UvfViVkBv2i3+57fQEQ2bdRq6WPwZFgk=;
	h=To:Subject:From:Message-Id:Date; b=thuoWMz5pMXWlmvC6Z9VJJamOB0UpUtbJ46jV0SMbAhuZZoXzQRI421u1Hg1+BOCaJlQDLHCrWt7GtP3VCh0Jp2DNCy+vNWTeNjeSIg2YmF1pne9hgoFC9jlyruBafkcHjq7uI/KtzBI8ORg8prIrZsmjok4M00bxIa60bGvJIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IW/rmqkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IW/rmqkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA941C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779705753;
	bh=LvPwDI7NXZ6UvfViVkBv2i3+57fQEQ2bdRq6WPwZFgk=;
	h=To:Subject:From:Date:From;
	b=IW/rmqkWpcPf6OvR7B4dqFbTZOv1h6XCJRml422MA5NFYGOAgttLzftZgPgIJlzdV
	 HwmAZHJVVRgpACCbAAnj0r3t7l6D0fUa4DYXuS/eZI4txPQ58DyhEflr0OEyVehgoX
	 212pyJA2biC7a2itvCw5A3K103WOWy2fYZPcKmjzXQ0SHFF1fTWyBSjjsSXKajfbI7
	 N0HA7SlRF+yqQnM0aVkfbTY5vzAEfg5CKVVN5xRtzGRMv2/bECt4R0JHP67wDTDaxS
	 DvBYxMfPA8hflCA0usOPqFWM+Y5W9aCJHMHeS8WEHq7RWk/+t5QMyhf6yHPP6Ixl7K
	 R0pQmwj6V09iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA0CCD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177970575370.29061.1591212354595660659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378bebf5aa7dc1220a08c65ed38e0c973b00d5131a76c1696f03fd2e4c7f2f30
Date: Mon, 25 May 2026 10:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779705753
