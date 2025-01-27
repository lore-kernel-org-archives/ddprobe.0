Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2CBB64A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738017354; cv=none; b=BGZ8wdQtoDZCtlgvZuDJFFSzDQzreYyt/4ZQIaLvJ767weiqcn6AnHmYYlaMfBvMeHe9vhLFZAJYI6foylf+hkn69pUX4GS3lxWPmV25p8BEenrEMnlLIyQGzx2OJAQ1mBmYvmZ7qcPg9LGu/mfsHKlPyxG2/93H8Mt6uhP+0E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738017354; c=relaxed/simple;
	bh=DfywnTCG8xZa3l2ADhsGiCgkHk6G36sL/u1lKLBH/rA=;
	h=To:Subject:From:Message-Id:Date; b=M48ELynoorShIp0gKQD6r68rjXmf7clgYFKIoLtykfByR4wPPFKccqIaz7wfT1O9EzsyJ6H91IfKAOg0kTnQ8YFne/kpW/6jRCRbiz0yq6HKP2sDTc+/n3/HBJ0tRuIVZuqkH0KgesJ0tORqMzWs4XRoj5vbde9UrNWReDYWqCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayQfWlgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayQfWlgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9296C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738017353;
	bh=DfywnTCG8xZa3l2ADhsGiCgkHk6G36sL/u1lKLBH/rA=;
	h=To:Subject:From:Date:From;
	b=ayQfWlgoDehoLqtf2wpZBGMdOjFdMQJt+YB7X0QvCQiB/gTcAxVbpeJh72JAopCbh
	 sDxpAIxHNG0IMCDn23eagC3o6Heb+hNd4PaZxCIfE2J834cPjRx5zeDb0A0rCIgWyt
	 EqqUSoc0sVwg6uKn6KUZdrhxlooMX3pC349pOr0A44mfW0UOPTUFkqGMyYoD2Yj5KN
	 aEK1W+Te5ncq4BLWcVj3v/YPzEF2L4nZSSOsEwKKNPNk42s2EZ42o3QjT66zK2+jrj
	 h1GoIsx+Fzn/bOQbXJzM73JLPxJQQ71mViMFuOXyQVKVc9RL7K4MZs+ZnWnx1ASC3O
	 lgz77qrGyu3RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B1AC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173801735360.27476.2964237328342243896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2610577d0c780b24e98ded923d8317387f92d93da38cf5b442898e856b0bab1c
Date: Mon, 27 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738017353
