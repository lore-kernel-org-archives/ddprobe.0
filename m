Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291201CC8B0
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729318554; cv=none; b=hJKXWV1ZQ22CbeRJ3lasORKK27Aj60mRDOQA8SjBxVk9j5chjmsMb3HvN/6AEraOhl6VGDzdI49cl2J4mh6oL1kT9fm/nFGNomUB0ftE83OjFwswDESfOjYSX8Jx0HiPYYvlKCKjxEdLWJziQba5+fNIbiqKJ7gSZ1QxQv5q7c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729318554; c=relaxed/simple;
	bh=u+4cs1SmO2YJMfVD4PVSYS840pG9lTDW1iNQCyWlzsY=;
	h=To:Subject:From:Message-Id:Date; b=KeMel2sO8aS1tEkvb8/5SY50NCIgRwx4hLA4Hj+toiMeWXpeVKMHpkr/SWv9bRk2ay4krSEaEhVxGwC5Sj+tgyjMHUFK/z47hTT/4rYd7X4++fgKFLb8lQEitpkaiBPYT8I0mjIhUyb1SjiLPvuiFAHBKW0K/55awdTW+gERyVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1VaI1W+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1VaI1W+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2BBC4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729318553;
	bh=u+4cs1SmO2YJMfVD4PVSYS840pG9lTDW1iNQCyWlzsY=;
	h=To:Subject:From:Date:From;
	b=q1VaI1W+UmtiFio001T4BXrH4uvKBusRMOktBup7hovVqOvzF7itHMq5S1FejQggg
	 9cTDxafS8dBrlV9lebWV6q/18WUYDMMFOhcdLdjH49g6DqD8V1J8+we5+fz/bHLpqu
	 fbgWLVZfNgMJHqdvABN+5RNTYO2M8Ja9qxTIypjsYUbKQ/j+UKWEXuvslgRx1nl63d
	 FPyY9IoOB9cR6aviSsxrA5hK5+/GwF6JzcQTdyVj649IBJot4z3yOJ7z+XNc6aPdDo
	 3lM4EMzLqeBjeIcJLqLBJzbn8tweZzb82PlZK6KLv5apIl9mBuzGEdkxNamsDQbUwh
	 mbB97zn1Aeq8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A018ED3C547
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172931855363.21554.13379939914339216694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7949dff821645e93e9b2ea288f6cacf4c4065dc728c30645b2ec7eba509f569
Date: Sat, 19 Oct 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729318553
