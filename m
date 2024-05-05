Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC65EA4
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 01:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714873343; cv=none; b=CFGGnhzzQVqV3eO7sSCwxcqYCm834atxm9RhxVSgi/mgI22WnMwk2y2e4OxnbCwfM+VnmNyZahBbGvPRtlNE7g2Ys9f63CHF+aKmn14Dg/SOrXFmjCUcgrT027UjPEagVzRhA3Pe/gMVEtoa1JBqtP8ZrfrYo2UnoqzyUCps+Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714873343; c=relaxed/simple;
	bh=qXVpsN3IAKCjztEX44ckHKK2lWWLupyQjJDZIuvxY5s=;
	h=To:Subject:From:Message-Id:Date; b=giPvWHOtlh6GJdiOee70JubaEDr5cYl20MDjSs5mzINOjNvaQJrXj8Z2JC+GC2uWMscl0B75BX7kfMwNmBEwbyv7RDE/arYs1N0aMBqTz3H8ta7XYTY0uIeQ26o00zTKSZIpOdpV7Ouiz4+pT7Si2ROuXhKmQ0EaPL1DpLcMxHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5FUO+De; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5FUO+De"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA16AC072AA
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714873342;
	bh=qXVpsN3IAKCjztEX44ckHKK2lWWLupyQjJDZIuvxY5s=;
	h=To:Subject:From:Date:From;
	b=V5FUO+DeUZujoxnijtZf9Q9PCa9f7Lxi0iXOZ7AdhrLKVdGxH7Opzy/aZYyBrgf+G
	 Y5FWDhWbMGGFIeFRTjmYYYkcdDEMToPBqhzzBUrvI/PqfVOanaR8tKdrr/5iSCbQKR
	 w9gDJJaLQ2l9Q2rMS9s54boIO/aga7NPrwgpCh3cOkbVdoViXw0NOlUOQjfkV0aXWk
	 ohAefvimr8Tp/x4k10mAT9yWLzE0/ARGq2sJsqM94bTAzWJcwCkg/h3oZElI3d9fYZ
	 GkQGYUW+lyzAK09OEQKD0/xtdoT9zv/YUqOFAfzNeiPo8DVQEKLH7IAg3nWoGXKr7p
	 tbr6OOhpMeYEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2810C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171487334277.16193.5418258363273972546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 705209e8c508a2610e22813a8ebae10ebb98b60a4e38962877d105a2de062990
Date: Sun, 05 May 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714873342
