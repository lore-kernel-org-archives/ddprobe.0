Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3529135E1C1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783985914; cv=none; b=OMUU6WQsjQlRQbzu1NOG8ybIHDzMwITi75AajD57fUKPwVgsLpzbjEfn9r7FiPEMLBbJZlkpzDwSs8gkU+FsvKqo08XovUPLYKfOKczKsCWwBVlUIqj4ScWXkM6UFi1iHOGxhMVKJoKiVi2qik3ECgt+qR1AHx9zh8gA58PJ458=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783985914; c=relaxed/simple;
	bh=rjCXAssp+1yhsJ7GLkq7e05Jtmtyxz97hqBw6Z6xHL4=;
	h=To:Subject:From:Message-Id:Date; b=qHwrhhMjW/V3L5ut7M1MTYEz36vMxpRrjNe38NngA7xtGOFhO2RCuQ5tKt5CgEshMoO97yRvw+TLFURLGz1Kn0gMKquag00u7Ub/1vxGMz0P4OICB6go3VFzUHyYHmIgo1veh583wimzNckF8aFY+hWVPIsMHKL8kOMpKI9u1xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TD88HjK0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TD88HjK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA15EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783985913;
	bh=rjCXAssp+1yhsJ7GLkq7e05Jtmtyxz97hqBw6Z6xHL4=;
	h=To:Subject:From:Date:From;
	b=TD88HjK0RCxlh9czMz1+Pkar7LgB2d3tVb7J415BEpoxbVbs74RF5ikdP3ICHxkpL
	 ARiH9zeLjB51rcBiHUpxg3ePNuRwX2pb91zWm4bu9n0+twqtaYm7dsr8VybY4wjOqD
	 8SqQkEg4gJo8FJPGZunSTB0Ai+QvnKWvVozPFdQhY6INo+dSQkn1zCPlWLR45Vf+VW
	 fQSdGmeRYJurmf3DpP+ZSHpywGJ2Sm90zf3cVgGJx303wMCkfHzKBnMGuVVFF3G5Sm
	 /9J+zl4QhTYHJ0KEAVSAJB2U7i8zQw9xZ+myvnnSQPy8eOtiZJIX0fHUp/UFtz/G9n
	 ernZA5SMHVakg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9306C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178398591368.26255.10821119348606276689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5607385b9a99366af61fa7fe717195a2bf2de95589c0391b7df881127abf9c6
Date: Mon, 13 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783985913
