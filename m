Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A875944E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 07:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719993323; cv=none; b=CHd/pjkMoyzMzwr0aHlk4uGaWST+HQOt5EvEbLjS6YuZ2RR0sMDNeCtkmkjLST4Ur4RditmWkFqDB4QmQNPhxuPL4XWH6u8wCPBHKmt0meNIVoPkzILHQ/zYTUUa6oncLeCcO+w0pZIeKB7MfRB3onb2Gm7CEH+6KctQrHbAtyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719993323; c=relaxed/simple;
	bh=6qzUCoMyF9EfwCT9lOYzDTWNefrVSm4CyM89qSE3lh8=;
	h=To:Subject:From:Message-Id:Date; b=ZPiFiepl/Hrl6vOHx8xnrs60lhbVsJ9uO8WQHIeMzwRIjaXRdXHVeq5iCTDpwT7jUWhOIZG9gk97SQqXAy1CalbE1HGmAsjsQiW29TgKTKd5QKRPC4C5d7VGp8R6R62kgg+ARNKs+hmo7E4hmy6+8D6c0m20Phkb5+/5ncAshKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9OcsQBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9OcsQBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E21ECC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 07:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719993322;
	bh=6qzUCoMyF9EfwCT9lOYzDTWNefrVSm4CyM89qSE3lh8=;
	h=To:Subject:From:Date:From;
	b=l9OcsQBGQqMTT5LKpZgzEWubK9duSUOtAyiWF0SlsaQZpwSDAdKfovbJMyXqdxzcI
	 LLFQmOMkBaJUMSGw092O7BKyE9yqhGD4UX1tizsA2YkJw9R/+7MYMmtG1bAVVGIilk
	 BVS9meNJHbo7ysKD9fheV6H0s9dwpdl4apWHVx7gBOIVAz4S7PTC/7jsXbv3HaOWp/
	 MzodqQE5MGu3JUJiqPhLo9/vBhvqm1fK9T7RL4tthRk6nI0Av0oNcTWAMwWB8GOmsB
	 lvcYBNZXTD1Vr1OGXVZqNl8z7lnbINndQ/ZqOM1UzIPaYLsNm/WoFL3tXcYechl3cz
	 p4fs4KT43BwKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D48C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 07:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171999332280.21518.12240012666692798418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9dba686873ec59612c65ce10579759c6a5dd30208a30a1241222a6ba0ac97e
Date: Wed, 03 Jul 2024 07:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719993322
