Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F281DE2D8
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749932994; cv=none; b=tOp1S0uL+rqOGavTamIP4JFmHabRJoRYAecEKFSj43J519FWuUXPTaSSPq6YJ0dfenwzgRgvsvyVI89X8aakb2FfnLhoufEi4XMwiI9BMCtpCTa3rnB5C6VJLDetz2g2AuStM9kgBzloqWYCpC/8Gz2vzkYztBm/Lf8fcWCOmIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749932994; c=relaxed/simple;
	bh=uZk7y5icdf0NmE2pYcwcFpu6wPTZ7lI1+W5guuzXtTQ=;
	h=To:Subject:From:Message-Id:Date; b=VVJFxDJnLsnjsMmBxNSNK/xE2a834nbZJGsCIjd6OlP2q3CMpf/CH0ws4FZsIbd8QCZ9IMNj8C7E0umI4ntTdEz2l9cKevNwBxyJk++3BO4ayjAwZyJ7zirmH9qn5B+D7dBOaAJup09kldetBb8asS5jD0pzCjiX7YKn4iRJECs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnwN6IED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnwN6IED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30BEC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749932993;
	bh=uZk7y5icdf0NmE2pYcwcFpu6wPTZ7lI1+W5guuzXtTQ=;
	h=To:Subject:From:Date:From;
	b=YnwN6IEDe4OozutJi/QawUNLMw8/Z8smk4mqk3krEtUtThs+qqWSUYypxpiymFqtR
	 JsG8cS688LPtu+1sSXvmk5y10odpalPVX/DOZA1hZh37mg/cosv/L18h15jYdJctj0
	 ItUPDVkmsTeVUfAUHWTlTVoi2V+1pTNbOdWflnGK8V7g08F3l7k22xso76nUqr9aQB
	 iV05gOSstcKq4e/er4cFX8imO/xnqxpI8QmeLOS73M3cKoqn8F7/ahkI/2jN1mxKE2
	 XuhagpCwuD2fdv+rC1JfpYckdeYh3xcIsRBT1rUN3lq9M1mnWvqCLZlFsZOjKRZdbY
	 0SaWXs31ymHEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F422C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174993299357.8574.491567984507819983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152e1cd9ef3d5fcfd8e751a690bac351d0e2a13d21f102dfb0254657e4732de0
Date: Sat, 14 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749932993
