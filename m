Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306694C98
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746262194; cv=none; b=AJ/B4KtjgbLhUZI8zOc7uPv45flNX+F6Gg//p92X8ses1pNEBJwTEVynmxG5BWtT9/nFbKpn8Jv81YTNtjrG0uCg1MTcYwQdPAaz3eCP5qP4Anr260CEs6xh8cDCw2A8M5R7DemauxhcHw8Y7LdGqxSfIDaP4dKu66Z8SNGCqVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746262194; c=relaxed/simple;
	bh=JOd2Mlspjs4uRQSZzcR7xjNa3eco7zKB7Z8u085yhuA=;
	h=To:Subject:From:Message-Id:Date; b=T8R8SfK50RAQ47MPr8x+xXeYxCE1MPQmB+nMGjEd4H1a2US65RPvBq3wW3L6GKqR0/ZjpxnbDYpz6p5mYDYjGT4wdj+cXQGMRN/3/oSpb2u1CTdgL+Wghr1iFHlHLCSr8Z2RSRGkKLsgkEL2BfC20x5U1jfZxToGHqqLimrk/CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7KvMQ3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7KvMQ3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58C4C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746262193;
	bh=JOd2Mlspjs4uRQSZzcR7xjNa3eco7zKB7Z8u085yhuA=;
	h=To:Subject:From:Date:From;
	b=p7KvMQ3+v0dVtsFE20Dz9IFHus2vXSivJFPCpr/Q0SYnBmItZL9pWoRdD50ZzZbiH
	 fJ0GrNxhR3Yyud184JuGLNVpkdYrhbDGZItdF2tvy3oD9eqdeZRDUWvkVXApQxDIrG
	 LkpcZFe8jadv7rCoArDfU2op71L6gEccXO8p7SQnUoEItKVXdzUoNzzSaX8ciEXz09
	 5F+mQ9SSTAOe9Ph2gATPpiOaq8vKZQjBMWjt/brsIVTmYV2H0pV/xqAbYpKNALU8ty
	 N0XL2qUB+699OJQfOWvgolBXb49v7eLxNgMOYFGRpWlh/G2BNV+jsqaqY3W5dQi0Mj
	 8mpSVahQIOndQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AE6C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174626219357.6742.715759230187359223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca7cbea2ea7b299a37cbe21626ba01fe450888f7401e1b78a89d107b1783d23c
Date: Sat, 03 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746262193
