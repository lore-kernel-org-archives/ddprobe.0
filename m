Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423721AF0C1
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749088194; cv=none; b=t+VOOQ8bLuFtE7Vmv6rBhm2MjU2ovYVUauD6LvpiQtr4Jg8ws/cBffoNLpAHR67RIEuPevyuLePKiAHStyo9KAEsXPeVWlxP04tqU9Gdq4tm/oRhGxneyCDPkkBr7EU9+1HEjGT9AIYH3zdMMyZkI49IFirc0o+3AOpM5qwb9JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749088194; c=relaxed/simple;
	bh=ZQJeTMv81TMGkhFgwyPMu8UUYUgk5gJD4M4uumKeEvw=;
	h=To:Subject:From:Message-Id:Date; b=hK5cuMMs7nr6KGy+U5t17prJQU/gHTX4bFPQkBUrzc/PbyRiUDmHsceljaNpqJ14NixR5EF9QP3rW1ROFfXvN9HUWvCNyuQG8DmE45QHRj8hYT5SblVBuGtK9eE64z4L1oaE+TxquUVYCR1akJ0tGajg0rQCGo316BChrZ1y9MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jvi9W7aD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jvi9W7aD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77D3C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749088193;
	bh=ZQJeTMv81TMGkhFgwyPMu8UUYUgk5gJD4M4uumKeEvw=;
	h=To:Subject:From:Date:From;
	b=Jvi9W7aD2h6/l5NhSy56Fhpr3gACf12WGOFBuWxL001s+PBmBhjDCTowLvgz144yM
	 T9w/D/CeRbLuTXIxmwiRwPx683phbwxf93Fq7QzEEq6/0Bamu2mB7TxanpLlXc6Mhw
	 BRCYkVqskk0zUHNm0eK6141BWPAIc+m3VdVY6QcVKYhIdjpvHrVRUhitSod11860m/
	 Qu10I3o3BGFwRIms790EE6ZPhr24lFXB/sBS/OYl8x8dkHQ9IXT+Kmph2sf4EAYATm
	 K3EGlzPpcg+Xn9TXKZLmriPiJQaTtGN3C+M0lH6xZrCE+CfpULp1JulXViU31f2ZGA
	 aysAL4GgiBLwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92910C5B549
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174908819358.28298.17885362649175037046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93617ecf45829015e6dc6286c0ac4aabaa9f72fa73ca2aa6ae6422eb04a0df0a
Date: Thu, 05 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749088193
