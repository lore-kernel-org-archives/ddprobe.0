Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0CFC8DF
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738488354; cv=none; b=acuIQh39OJNZJ+fn48KrY76e+3K6lo6LBznnc9gxK6oRpSgNAOL7W4MaR92fWpt8aeb0cqmj4w3dk1PDQbz3JES8jXrMHCUDChYP7KDXp5VGVbuoBsruElGrvJXMn0tivQlc71/aeR64mlrdw5rb/ey9NDcTilD5vW8X6niHjCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738488354; c=relaxed/simple;
	bh=2D0STKpkXJWE81r4cMGlw8PijD9n5ZoAQC2CI2BFBYA=;
	h=To:Subject:From:Message-Id:Date; b=JH5luaoqgJEHMQAUiJPhQXHly657M7NG2QvDm2b0V8opu8/faXZSv3SudWc+PDA2OMFzf+JxDaUxVXfV0BlQxhARjJ6YbRFjLDZlbIDdIW1unjwLwnJMHMJBSN6YAEJHHyIOFivNU7c0t4qv3BQrgTNdqGMUPFVt+XhcvKsdk+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEhGoW1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEhGoW1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1908C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738488353;
	bh=2D0STKpkXJWE81r4cMGlw8PijD9n5ZoAQC2CI2BFBYA=;
	h=To:Subject:From:Date:From;
	b=gEhGoW1v5I6kVOe75NJZOfmz977sVScitDxc12m/SCyBs976SoGfa9eH+ves+tPed
	 9t1PGKf2qkQtosy8kXwskVSxkZ9t8bAwes8pcF0BXP7ACK7xSXm1aW7Ac0h/cqG6JT
	 PIJaCoixBA5Sg+Z7JulTHUJbLnM+/d70GZSo1bhCk5ztJI94fhetRjvIr696sNn6at
	 f/1D8FKNGBORkGkCzTjIYC/iwAoebr/aA7m/tv/9yIoxeMqaojGuSnyiFpzGINVDqu
	 1Gf4WGNBhMHEjHEUqpe/Cu19R47he+G25qUnetSfFUHooqmOs7cc5Cp+CNn1Qx0+W8
	 Xv2N4E0cqyFlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD6BC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173848835359.7567.15483576250834707559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f7cb1e189c11c6869669f5fa9f748c42ed351978288dec4c1c030076186047
Date: Sun, 02 Feb 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738488353
