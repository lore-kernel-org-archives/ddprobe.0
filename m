Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCD01F4181
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769571234; cv=none; b=U0lzMu9NGI3fCgRoBo9rW/f/H+TWDzc5fNMn0iLbzQC64XXhU60KLHlrtAbev0sUBxC3vmip3FDyTJfXpjYwdkwlHDxAhYuutoUBAiTxAxovtYkKVDPIwNpV3TR/NnmGKUJDpoLVngG71BAppjT5AVCrMVy1tMtO5Jh+xOEJ2iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769571234; c=relaxed/simple;
	bh=R5Ug2Y0Tb6Eu1DEkVvywvC3TjY5/ziP87dvzXkrLiDg=;
	h=To:Subject:From:Message-Id:Date; b=r/CgLoYJ3OdlHcSr/uK2w9ICJpkABquhhFR5s4ORGHQlWpWi/lKo/DhnhgG7DENlnD5uLKGHk4AvmOHBbQzjjTs/gGXGBwUYX1E4yU8Z+hgg476qPWtrPYppLidhbnFd5x2IdUx4rbpOWoda5amvRODGPq8KLFxDjKiOr+qikM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KmXs4lI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KmXs4lI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A519FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769571233;
	bh=R5Ug2Y0Tb6Eu1DEkVvywvC3TjY5/ziP87dvzXkrLiDg=;
	h=To:Subject:From:Date:From;
	b=KmXs4lI5WQShyPmD3iRGstJmdtaXG6vgN+98GT7LqxQuaZH4BNlbGtd3UBxkUtzPD
	 5/kJqbunRzap+QTk0hpJaEouUSoiRw/ZhlrYUhKa9PfgGrb7THrJNFz5M6+sIdcYOM
	 IF/fUK5KGx7JeWu136te3mhTtJQEsj7Pkh8JncTZWLrqxRjG8bIPJ1z4jFw41olBHg
	 0k2bax+0+RFKl8nLxZE0W8SwAFElFo18k95I5bPHvFB+w7tOsJ5hFYekGB803ExzbN
	 JJaws1VTXCD6VNxcM1Becnnbd/DFaOlwjpApDOh0T0I0gJ96454crNv4mpM4a+8Qgx
	 uYpaYw+vLFXPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918A9D35668
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176957123358.23432.2595053565525235375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77aaca8a6078155836b83aee2ecfc5a65091a705cbfa6325348c3ee47b7f2ed8
Date: Wed, 28 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769571233
