Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A07A93911C9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788002434; cv=none; b=njj/ocLxq7fSjBQXktsUjZ9hmjOPvMYqz1jU+2ZCVlIJSuM4w3UAm7SR9ZqrgAlPW/nMHEqudFgcMf0eqqJl/BvtNC4XgKS+b5/aft5KelZ4Ky2aV1c7NmWd79kUDK7ONQ40cl3KWwcrpQoeGhwFrb9DwaymmETUynXwDhNjkz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788002434; c=relaxed/simple;
	bh=gSqIGA40XSkeHUUtF1b4ej8rFYo2LM38NIAbWdG3bG4=;
	h=To:Subject:From:Message-Id:Date; b=A95bWiFwg1GNojWIMOU75S+vPJzB1A3+Uosbop9DArvNRCYR1QZyP75kHfk5X3W6nZlzywetwjPPbjJXEtRLZGLm4btMnVUyIb3I5E4fdPfqhA44NMUa7lxg5gT5WC4H6m8HvtSg4VKNKD7VT605A15rSKp8ArwzGi6CgTuiyck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwwzOTLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwwzOTLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D447EC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788002433;
	bh=gSqIGA40XSkeHUUtF1b4ej8rFYo2LM38NIAbWdG3bG4=;
	h=To:Subject:From:Date:From;
	b=dwwzOTLQjAlbwCckAqJkjeF36iYHbgI3rvdu9mnR2g2fpHQFMcrxoBWauhnvOiyYw
	 rdJvWOo4ZWY7cCqmP970PIoH7elm/++3wVyf7yMMNDUHXU9NKBhlxsiT3Ym2aSmAIu
	 6klKYWkv4ECL1mIEQWNPG08cifqVI4wRW3kpgMFF92dtre/iazgtU6V+cDcRa5cIfW
	 q2w/KGHBWq+pa2cxjOAE71Sl202W/tnzVhtMxntTW8LxWgpQvRnU/qAZCmcj0Vi1Eb
	 WD2M+2is82aQqYTMd1sPmeMl617DF+1WPl6NLzgzrVAJ6UCtfz3FK3W2QXh2BxfnCc
	 0wFvJi/grONhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1300C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178800243369.6769.14553913932536977715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88acd3d822f4adf21c738dbbe0c7420e0755a6a1cd3dda7039df3a63ed010913
Date: Sat, 29 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788002433
