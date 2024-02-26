Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1035D128386
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708963097; cv=none; b=QiwhCC8gm//+pVOlfDectog+w2OAcgZFouaaY6zYsXleB2FRSTU+vC6wthHxaz02lPne+pmBMrZ3jX+V3ty5TZ5SsbhGe2t0LlJwuX4KnDLpszA9K+62O3okb4hlliUz0nlz475prioNmvU1Ph5q16PIMTfWJ+m6boCci1lMX0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708963097; c=relaxed/simple;
	bh=Eu4HbdCkPLFP0e8wEfqKBuzQoq8u9VZu+Mq6ftSOTqw=;
	h=To:Subject:From:Message-Id:Date; b=hJxdu0CFhN7TlfbBjXx+db3BaLpdCIUocPZiqaehWcPPCs1jq7JUBEZDPhoTTG5+aGP2Pd0wIa2sSkzfDrIKTXmw5c7bW6tRrvvuH4SrIGnWVsMjvV8fZ+gwBoBQanDXY4EJIq1s77qOyAznMpS9b2JMECRdgHtyFNMVb4shGw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cM6OyMvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cM6OyMvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFA1C433F1
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708963096;
	bh=Eu4HbdCkPLFP0e8wEfqKBuzQoq8u9VZu+Mq6ftSOTqw=;
	h=To:Subject:From:Date:From;
	b=cM6OyMvDAeZwYiPqLu327wPIvJyvmmdNjF79biqoEQEBRcjdaaocmcUH7ktk9fs5t
	 8fT5aYBuA6Mwar1UcbvAZd7X5WDZJ74lX0WytQNw05pnBDpSO+PQsO7sJ/iQSGxkiQ
	 t41eIXNVXygKMHZl1zov6w9xvsxTbBOc664Dl1mhFeRbCVcP066LhNcirY1JiWCvzu
	 6FyEb2A6zYNdeDSCXpu0R62LAJVFAs5BrRgmt1tkpOaF+gMcNtDjpNzIgufZti8FnO
	 92vEflhrsQBg5MzaRxbz24qR9E0TOQpFyRjoxUi/EonW+TISo2vDem+/9A5l6ldp9i
	 kxZGZWov+xehA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F796C48BF6
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170896309638.4373.8685737104124153803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d5ad972a547769ba826fa28c2c068dc2c3e5994e1105db63169d7a08381cb22
Date: Mon, 26 Feb 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708963096
