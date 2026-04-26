Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C19145B3F
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777164454; cv=none; b=tbnyLMvXSrqFYkyvWYNJ/VDB9S5yYfV+PBOsagubVCUuGiogQWU+WJrOjx83XFP+bk7sUxKSyYktgKQsbjGZE+PkNEuL51sg2rzVHc2bt+1eeNy97wa/HFtuP89M+SzMB1Vuv1iz4ZfcJOsPqaJPNF42m3LpOhjka+reWFB9tDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777164454; c=relaxed/simple;
	bh=bE0ZHA4TlfDB0op4cyJt5T1FGCEVB2birRmlwFprUI8=;
	h=To:Subject:From:Message-Id:Date; b=rY0YqhKNYwkAiBUSFKw10Dn1WQVFCshQnNWp2858itO1D6/6KocGnbQcovVKMZwkV/baoJifcBYqxA2VfN/N0AOrrBb9TKO1X2ZdeDZSwqDBHSi9gQ3IdC67UjSlKzyXKC5fldjZ6niCt5cfSPemgp2F9DC1U597sC/Fbx1LbrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EweNy18g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EweNy18g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB504C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777164453;
	bh=bE0ZHA4TlfDB0op4cyJt5T1FGCEVB2birRmlwFprUI8=;
	h=To:Subject:From:Date:From;
	b=EweNy18gZg9RttiLYZMbN3HaQdysKpvjoEOcnNPiid7p33fJOpW936KZNjzbIRlDI
	 NdGhLqYusLuPO5mm7HQjfySedk1nHQAWmEgqEJEXcDDfBHPFOHOR33TbphuseU5IZk
	 1FmSrcU4KIu/8r43c21MTPcJ4uQgIjHImopvNk+/k8519HAa1p3pSvDTUoKitqbYY3
	 Efc27M0kLAjzFbgCxOJ/pnQebCLJhs9nBuIBtJ2vBwwYprRXa53dO5aWGCZ5yOu8YC
	 k8lU0yXwwa4AGqg9cmSNWYps1wb5cXNq7avsmc2Imjh9v/rWwem1NBTZtc2bjyNmwI
	 Lu06wRgQ/0A9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9475FF8861
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177716445368.16206.9292990597155853276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472d9fec44d71c2aaefdfa8a11f0fadb49209d56ff53aad77d17af1aeb587c86
Date: Sun, 26 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777164453
