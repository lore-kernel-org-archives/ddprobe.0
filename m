Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2787F13777E
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 09:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759397395; cv=none; b=PjZNm4HYLRvIiBx20copEIFoElXwqEN834A48Z5NHY/w9o13i4PMXX3Zl3VXchZvzFJMXPuGJEVQ/dCq9/cR1AwvwEw6MhcV/uH8YysqvW2L2i3Q1mTb3VGqrTEjCGk3yzLXRcRuCIFLzKLYuEStVUW6exPKMDDdDNufUhJ2fCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759397395; c=relaxed/simple;
	bh=kv3U/nW4XvAymOZkIau/y7kXn2Xhcjm6/6b/EdF6Ock=;
	h=To:Subject:From:Message-Id:Date; b=Gs/d8joNuj1+zqhDZ85W7TBNVDeadA+TQXr6pFwwim18RfID4hYkRnK90d4bmrM0s/9CgMlP4VXLMJaKTIDkybXf/geSafidVR3ZkHhy0QZefLMCLrYn1/gOLu9WXqDt+0XbtHn64URfEwuIouVacx7Gl4xYhSw0x0ldwXxu0FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auz4xNTg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auz4xNTg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA3DC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759397394;
	bh=kv3U/nW4XvAymOZkIau/y7kXn2Xhcjm6/6b/EdF6Ock=;
	h=To:Subject:From:Date:From;
	b=auz4xNTg2h2sodpC9pEFJIHkWU+VhuTgXO5pYTvWXGyBBHBa+HZALMKf7KlppxNz3
	 tARK3uKMQYyTAJR9+fnDFVbQVKZCEJUpciu4I0i1PT2FUCmE6arf+1Cvx6b9RiWFVC
	 ucQcAKCvqWxlSJ4wfS5kHtm+gU1psK7MtDL0XflRVgHvdMLyP7RMsUV6GzalMuRQkp
	 qXwyeVUv7URurzUroHOwrXI5ABUIh45U3mudFMfWbkBC+Dij/yZ6CMMbztT6XAtLMi
	 HLAoBrc0bsN5cgt3QqvO/iaTlQIPUhNJfP1mfeO0PEsiQ4/Zp2z3Q5+klXX6o205Y+
	 HqpFkFsLQXrEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FDECAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175939739361.32432.9376162684248848758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24eda75a7400eec5513f8a2e8482aa176aab825db504881159daf68fc84b35f6
Date: Thu, 02 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759397393
