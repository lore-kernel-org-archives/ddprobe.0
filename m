Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD8519048F
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722328554; cv=none; b=Q64X5xqSoiUbN713sSGtV2xZWipGicaaUZMR72OWYBs/3bjkwGnmOT/KAPyPXRKKZ3kdFhOsFdGDd/FlJytPwBpoxTPqTZwW35mj2sdpH3aLKrYyXKqTbTGoHg0Dqs7cazBkbMVSQHWZHtiOF/LaJlciw2NBIwu8BFn0L/321Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722328554; c=relaxed/simple;
	bh=R9IQaFwtwNiVWFddPaBERiJoosS/ETN0bgrss4E/i/0=;
	h=To:Subject:From:Message-Id:Date; b=dy5P/kY0FnU3dQk3Z48ptCAUhompY9IDclYbLfwatq9ktg+FtMdPRJ1bg6Yv9U+STc46H/WVha6HBnPfhUEA1vrvqrhprtmHBHotkG+N2ZjoF3gFgeLeo0lwRvnRp+2zlZICW5FAaiD/YYeO5N5tgn1UwzuAGUh+tkRAGtI3xOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0X/gEN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0X/gEN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDF7C32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722328553;
	bh=R9IQaFwtwNiVWFddPaBERiJoosS/ETN0bgrss4E/i/0=;
	h=To:Subject:From:Date:From;
	b=Y0X/gEN4sniesQtzjFsmzR7Nv6e44JhuIDfPb5nm9fb3mjowlnZk1O0OMQ52zqb9j
	 wUQbf9U0ICdlAVe5f8Qk8vmC4r8PBFJ9//f3R6nenT9PzFSnbHvuNxHCPwwCwz9g5h
	 KJZcI1sRGMLDWzG8LH+aVjyYFQfOXgOCHkesSq4dkAj+yGcKcPYmQt9hO+CPMWCiN6
	 3M9eiX9r6ijKvSc+8FTjclgLBwOjvhRIVFxSTDuk4b5cvUmqGYsuVupazUUMeSyQc/
	 cnU6qPz9VeQ6tNzN7MHG4UEK3QIwF2AFhuKYqrbMEoXhHCTeIysbvcomRFuHIhYPnE
	 CA5AjusWbia1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D8C3DA61
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172232855358.8578.5179336231004383080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d939b8c0d3e2a5bce195aa15063f376efb94dc0c59b839a6cdbf48fd3556fc31
Date: Tue, 30 Jul 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722328553
