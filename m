Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6923B16D335
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 12:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716898463; cv=none; b=A0HUonlBbXrs1h+2TtKdc75rQGXifawaBfOQMBCP4mEiM8mE2BYwpaIg2ommsoQt6iXF/bLiqlTea2EHQ2C9bkGopFXh1aSzUj1NYn7MKlsZgyxSQ+rzwhCgJ4tcbVExdUl79EEj2oibLNw7ye8whdwWk3CzbgjcwLdxu5aqspI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716898463; c=relaxed/simple;
	bh=aZIFvvvdwwP7LIOBSz57QP8qRqU0eQiPXUslKlTPaoI=;
	h=To:Subject:From:Message-Id:Date; b=Hqsfl+RbbDcGadQ7q/mix3h9Wi69tnkHYVhiClYv9PJ9pKl0uzPCIDv0e7J2v1+7WFoBS3sa37qkr4Sz+8xmYB/oAXK2F3nWKqcihnuf+RBQ2D49okW4mKlWI9gogUM3OEwwFNBxhKQN2SBLwSpZbWkFj25jiBgFr0ApUyiMNxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHhaUOGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHhaUOGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52D5C32781
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 12:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716898462;
	bh=aZIFvvvdwwP7LIOBSz57QP8qRqU0eQiPXUslKlTPaoI=;
	h=To:Subject:From:Date:From;
	b=AHhaUOGeYEr742/u0mbtnxhWnvynjyyNiSMiJzuDkogwhbNW94wlxKlTlCV+Udqv9
	 9FE7eQcv2Ow+ZoA5NJTLjlefyICU7QF3dZW2Z1Uz6fyvko+0lyZhvrF0Bavvi1tSkj
	 XZc3Nc8ng4EKKyaLhvsCPtqvJD2az/UtvpzUYG8H7j+6h3e0Ms4VaDFSJFU6inxaiQ
	 fExnB0oIdOojrJDumQf+ktzmNwMlJI2n4DMFXPqg38Mee7WmUoWr5gdbsaXgVzKDiO
	 /MOoZQGpUFT4qBLL+bW2ep4ZDqi0+joT3dOZhz6IqWH91ePgwaX6B67ZmijHQBY73m
	 jxeZKv0VAwvUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2958C27C44
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 12:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171689846278.24576.9174537659997640513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac938e9b8dfb64099dee630e316897c90f8b3a25c6ba7aa3ae476e3f322c748f
Date: Tue, 28 May 2024 12:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716898462
