Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B002C3278
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765396374; cv=none; b=E6Nw0/p/jMzFhVQntmmApHRshjIVeBKuw7P2DSTz9KlmRRA0TG0wQd3oqFHxD62AmjnWjKmsSHhvKAU+3cgVXJqWUoYN+R2U7FKfMjkXgBiv5nThpQXmDBsbEcjB2hMe820UohC5bc1fkDYa1O3/eypVi/zse9Z0+3GxK5YpJic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765396374; c=relaxed/simple;
	bh=NElWnSv7hzMsBLVAIfCqrb6NS/epuseXq0IqRrVWNw4=;
	h=To:Subject:From:Message-Id:Date; b=s7At/FNUupY4VK49tfLPikbS15Dv9veCXzk2lPIuKNOkgsxMiCB1oGOv6Y5eLyMfu0Nie74qVYcwiLp+Jn4tQOWRw4fTYfNLeV20qEdod/ybTsKQkiPY6N1QsLNozpTku9R7xO6PVcKIjV/yvXmKRnv5k7/7FxNTT2bvjkGQdsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nksBMpkw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nksBMpkw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F8CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765396373;
	bh=NElWnSv7hzMsBLVAIfCqrb6NS/epuseXq0IqRrVWNw4=;
	h=To:Subject:From:Date:From;
	b=nksBMpkwLsV0ZXZL6dmap8VSY7XnvTOrDT/bimf2BskGurn2Jq2ZoCgrfYX9wf+Oe
	 Ob6ZgAV0GAiTwSdFZERLma/00jCQg+L4uw95s8s+eVEHuayid1rCcGRfVjqQfitOXV
	 n1O802pTw/P3xfh90A2YfASLIxoDujU7zD4PGCs75ZhmX00rG4NlP1xLIxlgJl5SgG
	 X8S3kNVRprNAZUfKmrJ2WdfaUkkRiVVIyHI/YCba/dNIkBB9h4W6v86Sj3O5shfbXK
	 biQfh1nN5EN3+/UUhB1Af3XCwQGW2GN/8Vj+jOkuiAPlq6iXDBiskOpeJ4CC10JWqX
	 AaqTtzBLZzD0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931A4D3E77B
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176539637359.28076.12076729280835036041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6045c4b2beb064bd1385aeb7d690b5f22bd7153c0cfb69d1555ed4c9dc56b16
Date: Wed, 10 Dec 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765396373
