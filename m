Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D814632FA2B
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776459453; cv=none; b=HJNUv8C4ZW1hzw6CRLTBCnOjGfQFsh7veU2sd35eAwb3NGJZZFo9nwmxor7z501S5UiQpIPrv9qu2AM0KP8OwgCjpmmEC9mGL0woafbKF4HdmpdoAynM4rTtPbQQ2UbwyH8T+gzI8dolqlmVpFrQXyJrpG4Y3WzG6m29dmvRjU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776459453; c=relaxed/simple;
	bh=s1xYgp94Pn4KQDVA2YYmS8pEFgFSlME7QEw3dBDNnsw=;
	h=To:Subject:From:Message-Id:Date; b=C30NocfegOswkhJTC+uhYyHAVnR6wHuxUUSAgmKK8p2LZu3glFydODf8VoBAUoMCrKw4qeHHDjkzwdavpui9YuOdLCWjXczhM2CSzEtuPZIylYZtrSq3ssohYBJkkmB0jXh/zZyYdBalJPdpy05v2Aw93arbF2hjxS0kzXCtSGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erFK7gii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erFK7gii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F41C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776459453;
	bh=s1xYgp94Pn4KQDVA2YYmS8pEFgFSlME7QEw3dBDNnsw=;
	h=To:Subject:From:Date:From;
	b=erFK7giiq4RshWxaSSr8YtiNMCOQUvuOvyi2fkw3e8GwDgFBeZryXfqCTXjqdfndA
	 6PgeZ7uKU/ARyWiqBsvQ05lMmbV3trB9ovQS3cxdj5w++ZpZTgIyJlFRcloeYU7GXy
	 /wH97runUWAzq56TYmbA6tR4n97jE3ARie+jhCqJ8PdTXOMbjCyYevqYNfGnlOsArF
	 CB/3ui+86t9mZLwPJMzt2whZxAf1B03g0bQsTAToPQ7SyS34nyOnE6yxWUKEhMVMbA
	 big8KK3hns+MJLi873vEX7s61JMQeqAXHqvqol1g+4npYvconwyCZumJMLoSb7xPzU
	 1TB9u9L+GN3fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A976CF99C67
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177645945368.8489.9952587635584841876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c09aea6600817f644597372ad1705ab5b11dc93ca216f180504c38ba40f69b0
Date: Fri, 17 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776459453
