Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4A414E2E2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743044394; cv=none; b=BJ7pjHXADOrnPRVNgVSULzPyVInoK30TByjsRJwDwvpiMduAiTPB3GTz1ShNhxpodP2FUVlTeJrMJ5mivWWGjk5D3mxmv4QbsI+iKzQaHQDVYCUTuJotfuZu++B6KWrPwRlPZXpSxV9VTTk0n4vawXYDYDmqWTlN1+gyzlMchaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743044394; c=relaxed/simple;
	bh=EJZ8kpMyUKWS3vguWMAAW6tRMZYlKOzdwGtgxQwpX+c=;
	h=To:Subject:From:Message-Id:Date; b=ZCFrosas9Rs3bl2f8kTdpAYiUtMFJFGpGaeltqokgzsIpxGDirNMQ736jDxzkSyRKrJ0AxB3UgXNb8ZD2T27Wr03y5WWcb3JE8nqgat4BVJiGaASf4lqptKAlUxuI5C6oFw8YqocBCUBFPKQhMWFp+SMbgc+xBl0ftUQ/C9vfLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtA8ASy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtA8ASy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC633C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743044393;
	bh=EJZ8kpMyUKWS3vguWMAAW6tRMZYlKOzdwGtgxQwpX+c=;
	h=To:Subject:From:Date:From;
	b=rtA8ASy6OOuqpCZNuttrYrCQJ5Feoxe9Z1p4VwOBQnqbQaB6I/GryoUAqNxleRv1Y
	 Caw3sH0O/Mk+Z6bGdoE55nj0r5NUp0Uj88mumieRxZCnhuamhxOXKVyAmJrD0tCc2X
	 xsP4yTL71YA2J/ePzom02Tb+0VlUn/oE0zu78md0OGMrulWaWCDXO62ZZBWUS2q6AB
	 9lHwRyrH1uxmNd//QaY6HMGsdOzd8hRKgY4kJWpLo62vhbYRRSlJ+dFOAlhZxJQNAG
	 2rDZVOaAMp/cKQomcS64L/5uCAvgjC4HogArKUDgAjK0gKYfGF7IT9jTiHUG5waHjS
	 /yW/CrObVk7ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54E4C36008
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174304439368.26147.13041955332003129208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd5c222122a1615a84a814b22e0685678ef5522d6c8aa8915def9551a2143f35
Date: Thu, 27 Mar 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743044393
