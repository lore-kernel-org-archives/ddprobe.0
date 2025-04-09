Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F1215855E
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744237195; cv=none; b=hF6VPDdVmaCfxvxsQq0q7QYLfnQUp30YBpIEOtjLwmkoKaE9U76aL7IB4GqMpTlNdlOUElMqTXl/6RFLqFFQ4nWECjquOZTBOJOqNVfMRKz/J3CxlNSMDURJO4cHPLwBmNrrv6wgcQcYAhnZgPSPDs+ZB0EbhNYQ7yQzvtdemFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744237195; c=relaxed/simple;
	bh=rbMP4Q2otcW1vc4a/lVY5onEgDFebbF7nXMGH9edUPM=;
	h=To:Subject:From:Message-Id:Date; b=JxZfM6d4C2KwKnJPjj/fE5x44/Q/O3oXBEwXY1wozWG1UqyAemiB6DOFi3U2OvLp93zhK3iLqAAvLqxt1UoCIqok7Evfu87Z4xsxlwgBNlStdBPU8a7b7uyS5Ym+4yidYYQwAuMNVzUGuY8XqTfpR6q+czUMWEsLyeu5rC9SJfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ix2PtA5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ix2PtA5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4329C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744237193;
	bh=rbMP4Q2otcW1vc4a/lVY5onEgDFebbF7nXMGH9edUPM=;
	h=To:Subject:From:Date:From;
	b=ix2PtA5U9/44KNi2UssfJbiQS4/xqbZ1CQbA463f6X7cDLX0G81OTLu2JdP94Ttj8
	 Z8Gn1DarQs3TX/y9tf2YtN203i3F7A0OSrZf6fTjEvCz0ogcR6z4zKkmz6cHodIVe4
	 tq6OFT0SqVZpNkmIJM2ec91gl3fnQBCkLC3GTGD5hXGfj1DRPtB8Wapq8J4zays3Kk
	 75wglYZafDwb3ORRCwjikAUwubJFOTeeDdKJ9J9ucslgxeAa5/RG6GnFmaSZqlmNga
	 m+wZeXoP48VcJFYKh9zP/gH1O2mYA8wp8EnJPuGl48gfX+Q6o5nR1O8X7cKh+ztF+5
	 RZmhcW5uEgHIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3B8C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174423719363.26888.10086213982719127219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da91bbe7d69ca36027d9e33401a6e504428c63a12bb72c61380ad3e00e33e50f
Date: Wed, 09 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744237193
