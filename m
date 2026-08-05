Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2363DDDAB
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785912034; cv=none; b=TwlooLjm6bAg7FxXZ0mHQgoI8IKDJa1xXB0MtrnyP64kAedOyMGZDSL7GMBxgJWrNZxeenHdW8rEndaTMO60sEa5/gHr09QE54+vlUW4Co6myT8Q8jTSwubFmHumtfC22jNaMSiPRJbzZ0D0zlH7sYaDoz1slKgfaTbK1Dq2aCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785912034; c=relaxed/simple;
	bh=Y1u68qn85u+/OXzS8dH0JpEieUXGZYZspBLTFPnPifA=;
	h=To:Subject:From:Message-Id:Date; b=qkPs/x1wGyEmA6sclBuAZEVSnU0+rBAo5XmhG4vr6l2vTzfUuE+f0fPoNkjGUvqT66bPnWCs69Ro6j+0psAh4t8dIE2xcRbvJ+gtKZdTOZa43fObNipqR2DGS0tJYO8+8EDXyNObYVbXVEWSlO6ivjMwnS9QV6PO4l/gzPH1b7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQSUiUJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQSUiUJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A8AC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785912033;
	bh=Y1u68qn85u+/OXzS8dH0JpEieUXGZYZspBLTFPnPifA=;
	h=To:Subject:From:Date:From;
	b=TQSUiUJK1WD9IvYsd0SmMrLWh+ouNPa6pdcTwIhjcxuH/IG+qAUc8X/3o3XGKcpoH
	 Jdcd0+daLE2dXAdQUtgo0KH6DA27vGh0ByfLaCePmjKmR+dnbmTjF6B3rMzpAMqM8Y
	 qxfzqCW5Ctsv8jA21Wxnz4FQFSj+OEnwo/yKwC5tuXeLvKKOiLaZtFyf4xP7e8dXDQ
	 hDYuRc9DMPO2emSR5W6LpQx7O09tHUsQpMgQCPyjHpBPU8Y8wzoosRVS+4a+7q89PZ
	 VaDFTY7UD2NGPcmnB1BaMD7ctUrNWdb6/MgRExpsMw7cXVSwL9lXDrf+se+354+V4K
	 B4jmrs6JhFJCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE93FC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178591203376.19487.5266064861664572144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f99598824c8ab7ee5e52df90b778aea19fae3d5080d7994522572f928a0ba52
Date: Wed, 05 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785912033
