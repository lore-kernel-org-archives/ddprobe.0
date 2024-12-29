Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56147AD5E
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735446354; cv=none; b=nOC7G2P6unHGc6wtBbpvKWnLK84Uj8sWEWQrwvlB9HsVcNvelII/8pFH6G2F7dCPg2/1sX7S49mJpsCgZZQEypWJkgf8DuahzvY5QtcjTWJWT+U0pbZ1S0+jD+CGvsL3y0BQ83zjDlBxICAsvgjvN0V1wf09kAoIxV5gsbgzwFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735446354; c=relaxed/simple;
	bh=q8LiLeQokYr9OrZWWBDZf/yurnPGeLy/WWSjz/qQ6nk=;
	h=To:Subject:From:Message-Id:Date; b=L5RWcj4HU3vpMxy6UFqosvjeG9WZRvcC8wuvMrc1XQAFtajz8RqzjZx6m6+nP11XO1oX4YkN/q+hXoy77yFDw3oCoSi6ZkYynHiq8uE49GorEhepPJD8MtHPKLMtKrcFrfsNGnFeym3Eu2B6Yk4Wek6FHMTB2E+/fuXC6qecmDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUlBvLro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUlBvLro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D22C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735446353;
	bh=q8LiLeQokYr9OrZWWBDZf/yurnPGeLy/WWSjz/qQ6nk=;
	h=To:Subject:From:Date:From;
	b=hUlBvLroOYskS6mJsxEtytA/WkwnuVFPFGk8xbLf3O/s9yvAN16beFpJ5Vpasc4GV
	 6n9NKSwsYFa9+M+rq0EQA7kQHKle9u5hmkL+LnF4Cco4ed+9j7tc5sKXmETkwNodMG
	 oQWcrC8FfAKxC9hhQKzsIdcKn1jaTtkdaua+76v1v/m9VEk+EJWlnKsEplT3iWGCsV
	 QPlOhpaqBzwHK2YKqdoF9uOYQmGqS1XIDtRNz4F40/UrheUthLDd4TuIUlDpNGxjla
	 gbJPif3qoJ3mphXf4Aie6Zz5mdHagzvL6Ca4VFbzYEuufPnKxJaG5MaHlrACOWtiZR
	 WgGKURr08ChVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A54B7E7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173544635364.24052.5090332770378853541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd26885a77582973a1d888b2e777c0377b72a4e26cfaf7de940ffc7b90fa24f8
Date: Sun, 29 Dec 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735446353
