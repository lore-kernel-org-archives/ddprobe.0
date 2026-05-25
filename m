Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4494B14AD20
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779681754; cv=none; b=ZLYLZkyG22iDMfa5PRriqxXIRDPikAtnrC3ftdTwHK5PGf02qQ4J9DvVz6yZ7iWChM/D29qggk4245ACHuDWBKwUwx9kgahzka6HA2Gz23kzr5bWyfoaAmq0MsewGvIt2Eai1aJiBjjdDTp6CQAdjk9aLg5jhh47WNaJkNlL+gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779681754; c=relaxed/simple;
	bh=sItVqqe/f+AP6KRCkzxXVLDngJF1lLw51vNnAXoO9jA=;
	h=To:Subject:From:Message-Id:Date; b=bFWl94V+Rr13O3iiliEd9mYUnzdf8CEtnXASuRrkyfMbQ16YhY+GPE1n/U9N5tSuUbN0f9iVkKJ1yiovwy7hDljMDS/IP4mb9Lp2U3JD/7jZmG+6eLaDA4UosENHboQcne8OXjNeDkvbmH0nhjKWlRa9QqOIykwvsAFhuENS4/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWWQT8Kb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWWQT8Kb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8499C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779681753;
	bh=sItVqqe/f+AP6KRCkzxXVLDngJF1lLw51vNnAXoO9jA=;
	h=To:Subject:From:Date:From;
	b=RWWQT8KbtzJHrz9t1Hv5CFfix4DzmkVwNPQuT3dmjuAq/KsS9N1e4k1nluorzNyBH
	 yCnUH0ttVK3qPt06TBNXRlTAe7Y/DKv3Ao0qv02V4Up+38D7fuckwT1R3mpbCCDSsF
	 W6kU93jFiZLUqJMRU8Kf2e74flfnpbM5asgrIG2YxkwRlIU9xYyk3o6pzy4TlcSK5v
	 uF/ol3YOnXGE33Bp1mnFacgqZxIDoEoE+aqIsfOr5RbO4N6mx1fswZ5r+jXw80Q53S
	 t5JSq9Xm6Lh2E/1MMEhmz8sTuhd5goT/qknrJ6wY0oEAj3Kehb91MelNzil/sBpW6f
	 8F/3al2SU25tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B61A8CD5BC0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177968175373.26440.16696482006824146134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa78b5d651873ba94f8107ac487ab040eaaf771be6907b396406131a00d3225
Date: Mon, 25 May 2026 04:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779681753
