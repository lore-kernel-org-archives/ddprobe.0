Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B56822147F
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733415354; cv=none; b=sNbDGzvpt9fcYD6clBtaUX08rnQp1NV50W1stN0HG3BHDcv1ugJPBMXSV+sufmG3/TwTJV5xNurUIZa8mjW0/MZPqd991wPhBh+mzhlzkC9Nw5ZyUW3TwbUje6wiVo6LBdFczeSiKFlaOlMwbhglX2hf8cSwptSntOy/+h3ZOok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733415354; c=relaxed/simple;
	bh=/Pysckiyz95B3rek5wkb05rIFzv4+72bSLX2OeC9uAQ=;
	h=To:Subject:From:Message-Id:Date; b=e4o9GrA4YQ0zdHEYTl8e+dsrArEmU0HXdCEZV+Mp5hgwXPn0ROhgKvYzODsUp0QWCzzJRfbVHcB4yt20ntgYqM8UYqRSBYxYT0nTUIbgjpPF35qICqe5M2T9m3k64XfxaWlbVlr4o4W4GXZKM49NfDtSOOqlFfagpOu+rprIv8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqNPJvM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqNPJvM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A4CC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733415353;
	bh=/Pysckiyz95B3rek5wkb05rIFzv4+72bSLX2OeC9uAQ=;
	h=To:Subject:From:Date:From;
	b=JqNPJvM9Hk1RgaNh801NSPQS6YNJtO/0U5s+MCAHgnq63ZiGcgrSzTYXKcIgVeaKe
	 YyJ/63ALzOHSOTzml2R2M2H1AsxwFA7T9ElQcynzv9NZ11yqROeG5n8Pck4LsWrAa4
	 UnNM+hlmBkKsJnzsR8Rq6kuawi/ZnC8e0sWOY3Lx68YgeopRW3EsiR/DVkvoAgJjD9
	 qEVSmpZFVDyAzRLvBt8lFbG4PADG5v67E9oACJ02OaoingdNM8v6adJ17eZ/ZaqyBL
	 91B6PqrwTy9XjejcdM42YeW4DtlexZ4jQcMNH37f6EHxq3847aeqtxt2qmq3afs8i1
	 Ek+aZ+P3ybD7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1BDE7716C
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173341535368.1053.11650217134706785483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4253dbceddd3c2a70fa27f34048cddd22a14ce7bb8f35870b4434ee5962a38a
Date: Thu, 05 Dec 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733415353
