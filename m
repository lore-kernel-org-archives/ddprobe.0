Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D400E137922
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708639696; cv=none; b=ZL9N4o+4jRsiyTX2gnUDTLiQK2p/aIMUAi1khlf4xIKYJ/gnwUZuxrkA/NJV5l3ndzGuWhpOAs9qb3YCtWcvX6pgGfrqRAIA5agrU4DX4LuCBfSaAw5I1FcFLeEfORosphb7FkW87ChV8Q6oGyKE0c8QN7YI0ez3spZC7MveX2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708639696; c=relaxed/simple;
	bh=EqVheWlxkSsmSRKgF/Hjqq86rawhSLAakv5gTkATuKY=;
	h=To:Subject:From:Message-Id:Date; b=TXnojQTCVwaGmxMgU2TqPfEYTV0uoxKMWK/ipv3nvPqjlMkk1Mq45v0v2HxUtXIDk0Qy2lXG/U/vOfXJ8SHX9klr4ov0y36rc6unA8pFe43VGCu/ABxnLWc/BZ9jFvHFILabKKFARFXJh7OEB+Pd2WoGQegHtWGgjIeGaeQgjeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HH0V7BZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HH0V7BZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA78C433C7
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708639696;
	bh=EqVheWlxkSsmSRKgF/Hjqq86rawhSLAakv5gTkATuKY=;
	h=To:Subject:From:Date:From;
	b=HH0V7BZG0vyLw/b3P8fK+vy18+DqupQSRCoUr5IalnZN3oSun8obZXPxqRLu6oIz1
	 6Kab84cmiKYPUTkEeCyGsNzvs8ZMQlIlnNE7bGaujLB00qrdrYZWv8D8Vyq2SerSex
	 A+e8rct+xLktVjGJcYbg8hJVGKHAn5ugJ+Kpty8GS3ja4wuopK9WLGh4KDzkWbcQ/Y
	 E0bLgn81rySQ5xeXhQfJS89jD0yeR3L6ZnHMtoHtfCON34xRwO9X33rMgq0IgBjbcy
	 MdvXkiDpdK4R56b6oKXqGsQK5w2EWuhjuusc5VvYrnoj9j5yVA45/GjcDiOYpGr9xQ
	 NAA28FJ3i1ptg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6415EC5478C
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170863969640.5769.4864613022645605151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22cfe98d36aa92a11fda08f5157ecdc29f1c272130db8cf95ea9d64600c65c3b
Date: Thu, 22 Feb 2024 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708639696
