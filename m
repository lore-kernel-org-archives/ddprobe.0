Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA0633EC
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764806574; cv=none; b=MlGoeLENsSPv/2ETPi4I5RyKXG++A+3tICUYXcjSKk+QIYsUBJ9GJO0r/tnx6W9Iou2OpURDPjqnkWPRh6m9pkJOsPVhfv2uMepoQD6oidLGHemZpC/LPitc8uGVCyoLFrkdC9/YbEF37Oa9Z8rTYgD9JG8aYTVUJ++yAGO0i1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764806574; c=relaxed/simple;
	bh=jESIS/vtsb+9bw3H7eqV0YyCWybAxY+shUHbayNIhQY=;
	h=To:Subject:From:Message-Id:Date; b=u0Md01VatM3erg77fPGrCcaBmqUe8gC841kXFrDLSVXZV5u+KM3594rU+VWXTbUkpnOiutDbMvwPdzSvFGRuc3kXC6OJZJj12J8nSvD1EgGWlbUKBN/vwy67Z4SUuqWkp/bZU91PmyIPnsk3EHjjBjcgx8N7YG7VXoppFfW430w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+INh3bl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+INh3bl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2D7C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764806573;
	bh=jESIS/vtsb+9bw3H7eqV0YyCWybAxY+shUHbayNIhQY=;
	h=To:Subject:From:Date:From;
	b=h+INh3blJHnllezpan0mbg/XzmZeeZYPGUGeZAlFs+AREyVVkJrWjysPJ5SV2DhD6
	 RvzxWAIUCx9cPf/s0NIGHlJF40BaIYzv8cLfyNqcpHNDe57aZzITbRall53GWUEUDX
	 GP1qlttqh4qPzoFb1HGwD4A2PsTe8Iroh3BGKbjTizBot7rEFvS7NCd++RjyTrTLS2
	 kNtP7uYlqVyjZ2zhE8G3ZPXdvFx9JgC3EURGRdA3tGTZMOAUUNvVhHJot2/jxShhvR
	 DGVQEep7WPAGgGm77TUThq02K81TPHjJNMLX3Fl1gEZLMAr3wYanMXYNQWA27ysGZ+
	 BkmsBuatPlesQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98269D1CDAC
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176480657358.14287.6906333260095006625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473160980423bc0ccda52fd6b5e149e57a79412b265fd128fb271486c1db03d6
Date: Thu, 04 Dec 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764806573
