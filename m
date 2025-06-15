Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3616126AD0
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749974994; cv=none; b=SofwWkOmTrgk8dHh+CR8nn49Bv94n64UwS24cKr+R55oYhIMnhwi/JMRo59iU8W0uYJ9uFCL3Oxgm9mLrnMLzgyRAHjod6bbiosz07H9Wmq7XtEixbH/3mkVxT1pENgp+QY42DOhhBilSabNl8Gc+98C4nq9rGfSxZLvv/gQ7Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749974994; c=relaxed/simple;
	bh=rZWN4NMSCephfd0+hqlPcO7piTau+/LN46QiG/5WXLw=;
	h=To:Subject:From:Message-Id:Date; b=myHZsSZeB8ku7xrF+ABqMpIxCPM0Wkvd+z8FEwtsHt4Hbgi43N+GcXcaiKfoJ00YWgMeYcKjJ2un+SeIHqv5oKXYUJ2JLQyy4bKdm88jNx7S/tkFuPlbnI03yq59SLe7WwAcloBSTUM6vny08ajyOSZim0zIKoqaVld89h6KOkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E223JZ3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E223JZ3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD30C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749974993;
	bh=rZWN4NMSCephfd0+hqlPcO7piTau+/LN46QiG/5WXLw=;
	h=To:Subject:From:Date:From;
	b=E223JZ3BISWKvc5bHA97Gnh/jxcEZGmuaoCaafcbetGxDmFth3d4uqkjcVStoQSuX
	 4roYSpR5tbRijWTWR97wuUvQ95gvYJnZRMKH3fyUAtM5SRM7ze9xfxCu8MMdg/QYVp
	 9bXe0ni2zjIf4taaxinlqLPHc9bZbmdRGqtFWp2XgqMf0bT7g87ipq/ULRt/Rgg8vT
	 RA7N1h563H5NzzMbAhVj+La868CmZOpO6vI+sdnhDnhty2ffaBBTLFvn3MHxOm+oSr
	 bu31qmjzdR+KW41pDMIuVUBba8V21g8LDb1M59gkUWdW/dYNuj47vjYC3K6fEfeAl6
	 90m9yI1S9xTYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E03C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174997499358.7705.2817568112622240750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13bf954076c8ea5f47b39b8aef3580cb451c15bb26c533c3896dfec71502654
Date: Sun, 15 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749974993
