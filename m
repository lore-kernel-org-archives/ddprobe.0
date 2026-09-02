Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B542D2385
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788331234; cv=none; b=F/KhjIFuXMknhnR4DmIMRq3Zeop+IAloq9a9NT1pMYqqNWKZFBqI8lql/oWTYWG1QIFEAUlfPBGIDKRR7fHn73Cv8v9lBMS7AeGuH9xna+A23u2BY+Ax/JMLDc0pBKGBuMniFpGYGVqaWk+EzpqQStiqChCvc/PYZ5rx2cM6gLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788331234; c=relaxed/simple;
	bh=qi/gcSgEFjrvwyqzuvH/MNImXEuK7Vcr8kcarN6F2ik=;
	h=To:Subject:From:Message-Id:Date; b=d7+AFWT75z+GHPNX0dCuxiVAOUCvj3LPIon8iAdx4sliNI6CGLbb36X4ZErIwvSHXyXP2U9TsAke9wofwBCdneZH1I3qVM0hZcYbuimjb4+hDT/IIg4SIlRljdDziONv12VgvSqduclxO9T+phJqH1BKey7k7JzLJV0y/j30iT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfWlKJx/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfWlKJx/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4CFC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788331233;
	bh=qi/gcSgEFjrvwyqzuvH/MNImXEuK7Vcr8kcarN6F2ik=;
	h=To:Subject:From:Date:From;
	b=MfWlKJx/+zPsaL591GJQ7yWjhCNw/a9sUqzd4BNRvIO2sPGOjbaclprWrh+QhmySI
	 tC9ia1NWMzGQzDsSB4ZI9Rl3/eZ/9GhcUCqwok1KuB4GL0gEYo9pjK5wqLGgPzTwjm
	 j+mqLVDxIaOBOtvIrQHeQFt2dMGjrCi+zeiaZKCcnNTqRiKDMOU8bpZTHyHAdvGozG
	 dpSMGlYMhF+rHTmlu+ZRhp56zpr1gGN0dRlTLBh8dF9wisxBN98Jg5rSSyu0ubb894
	 WS2sg5ZsL7jnprQN1yr4U5x/ZisK3hUqgbTCs8cAgwBsHqLnDaI3ZlQNy6/AuGO55s
	 3xvARPEUbraHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4AEC61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178833123368.28569.7094997532723925048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 425da402f320a95b1dee38418a68eae061d14639e1ed622a27bc778238c7892f
Date: Wed, 02 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788331233
