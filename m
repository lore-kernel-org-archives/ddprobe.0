Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C731BBBEB
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736699754; cv=none; b=jdmDPEIfeYh1XpDLe5tQDmyLdd5JOqBR4TdSyf69wbQnZA/wLm5+S4cehEY64q0xXa/Rsik2XuEjc2L24Asxv4uWCac551/DjnQJEFuEJHaBEKYRrs2VEpQD71p4Ikz5I6vqJvemM3FbUtzqdn8dZPNnTA/P+LA2xy9UQf/TPsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736699754; c=relaxed/simple;
	bh=M9D+jzwnxnBlrK6zCUDQ/Jcd5/6jo0FIOH9HJ4y/Y6g=;
	h=To:Subject:From:Message-Id:Date; b=Stew56ZI6w2J2Ed+OneN2omfN/G15mXFDUXCj7KvUPw4ra2xRgiZnAkCnD5u3RddTECLFYzCQ3eHia88sBpvJkttaUjjQLVtz3mkAABfgK24IxpIqgGj/1RdX+akNbX/rCmznHYa+mub6ENFkSjSHaPFgEB1UDy93y6SLVolJxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnWEie57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnWEie57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DF9C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736699753;
	bh=M9D+jzwnxnBlrK6zCUDQ/Jcd5/6jo0FIOH9HJ4y/Y6g=;
	h=To:Subject:From:Date:From;
	b=BnWEie57gLC2bP48DZJcNl59PsIrt6ujfvRCoWR6L4QH2k5DQXcXbGKHqVwnlraJt
	 EnEIIzhOOk7dU3N/wM71Ayogb2NjNgU6eAGs16xnE7S9CV15fjGEtTwuCH0qCvGFRS
	 EFQ6GFxwmeVcsqnWXtet71bptE2b1hd1lt3nmD+SXa6pq243+bSDblZmqeyY/c8svB
	 EqKp6weY/inidQoUSfZ25SwB4nlInC9xA/B7/JTtoMaC1eRCdE5fGkW3n7oiJZbJpd
	 8knLzmTe7Xy8zUyGjLdzyQXoH2LJlinhLJc0RIrLtq5PWoqOb62WOGeFFWjaxQNnsC
	 2vLGwCZwhQzIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD39E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173669975361.2674.14801466747612869325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bedf173d88858a880b7e360271b4f03f803fc634671b20903a9b9630f812fce
Date: Sun, 12 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736699753
