Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5AC20C029
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784468314; cv=none; b=sRUwj6/hLGYk3lOltvc95Q13wk6ZLb+vp554Lo2gv+PAZKADwjvpfRKx6Y5yq4gs9KzzuQA+SKNSeAIy8TMdBtrJOTTdQn03wXuwgLgURdB50KneS/VrqDBDvT1KXtXR7MH0i+2jYHjfKnEGdNy501u85iMLXqRKWHeAywEhBVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784468314; c=relaxed/simple;
	bh=f70k2TOjcOMNgK4GeSpsFm5hjzdxWrgI5LCFqKa2JMw=;
	h=To:Subject:From:Message-Id:Date; b=ktiLTba2YRBihDeKNJTarEMzoQz0vZYV7QgT4XsDf+a4ZzMJoWASWIsn5ci/d81/jGxaQ+LLPr4xu1xRLEyX1auXXhenHZXjYzsP+sY1keBTNj3DdWOQFBD0QFLPtaUq01wQaMLSW7XIDcFXr1BZjSvgiAeL5Z10Xs7Sja6yL3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idkdq8tw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idkdq8tw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF360C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784468313;
	bh=f70k2TOjcOMNgK4GeSpsFm5hjzdxWrgI5LCFqKa2JMw=;
	h=To:Subject:From:Date:From;
	b=idkdq8twaWaTv0odGYO9/mehBSl/IJeya5R2+WL9AgOxopdsg/dOHTk8FRtYjT4Qw
	 wJgDZE2HVRYno5aOjsJJUaVyNZPRSTfrbeiaKETR4yeJ6+j0JZTdzqNoGURNHkLtHj
	 2hq1I3rX30n7lvNyqx+kFoWx85GU+Szr+3BxYDjD+N6onNfIVyHUxsCBBcsoWo2rQ9
	 0LE/qUjrq1lnbTSd85vxtoomBxW/y3JLvprNJrzNZFLembx7M1+0xnI3GW0A/zTrAQ
	 uBiaxXqFXM/fAXM8WOLdNUhRIOoskQAg3rPz/oeW4g8QLYIiHGrXLN9qdBH/YzlaO5
	 QWH+qQlgp834Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE09CC44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178446831368.14620.17520984407143800473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 341b48d18707b64890e40419005a2d7e4b8483abbe35bf05e35cbd849fb22105
Date: Sun, 19 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784468313
