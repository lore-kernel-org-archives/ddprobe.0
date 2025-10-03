Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BF128507B
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759505394; cv=none; b=qmhBOOxAA0rTd7o+6XWQo9WUyDy8C8DDsCBlk/whAUhzQ1Rq+GWKy0nVMXQlWMK9/1kM7SbJt+A/kVNrYMQgA2TfGwkxuoTyPKxpuHSAq/nNvRZRYssETZFlqcTMxXabRMoWKJrTB38XjOcwKrI8MVXsqyRTzW5dxNL4EfMuMd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759505394; c=relaxed/simple;
	bh=p1sU0146415UQlDZ7NdUwUbeYWxEdhDtzHFf1kha4pU=;
	h=To:Subject:From:Message-Id:Date; b=Qd7dM9oVM9RWnN+IwDLoCKF9tE+3RP8zmzMDw9olrRiEp0u/9VKoIFrmfIxxaCEekpP4fB/+4A55pIrIrIMvM1tpIA+sEH0ZhsR0w3SvkufBjKCII4oUa/EADqeONQBbjJ2pNEgUUiOZwLSQdsfL7ROTR/X+Guch4jX8HaKbl84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pr61JMzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pr61JMzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A08C4CEFC
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759505393;
	bh=p1sU0146415UQlDZ7NdUwUbeYWxEdhDtzHFf1kha4pU=;
	h=To:Subject:From:Date:From;
	b=pr61JMzf8F6eSBHFqHXu0yvXIU6VvK6fRziZBi0qgSTVbBevaDc9yo966FiaAmqxu
	 0M7B+XluYk6TQ38W48kLKOXHlUDfWGPefjlr1TN1Lj7b/ZBVLVM7+Cu1kb8cXOfRvb
	 wRPOQMkknlycn9eGVdxJCKB2uRjvKjbyc06ugvC0LAFIcvjqeqRAdpLhLAkeruSxVD
	 VLYwEQOD1w2BtkwcO4q6uMQjKx8CKBJyTOXxzo/bezKvDoypO22qv4nt9MDk6/7EOK
	 AoMnC6dCH/BB5X3XCuCPJiwaNIlBHP2uybfkHB97lYcSOF9RorAdGDayF+54tVrxTO
	 Jj3E6bW5QtS6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914ACCCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175950539358.10829.9306932466611602369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 483c5ea6c1dcb0e05b82d0255458d6baebb59b1076009f1a5a950b975742743b
Date: Fri, 03 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759505393
