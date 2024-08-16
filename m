Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309264F602
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723805754; cv=none; b=pVk4CK62lpnQtC5fAIJROyFM06Ppacz6fjQN98fN56CnSE6YvzwYNzN59JW6xrjTzRfjw07CUTMzFKB1xzdlIkzzRlGUgQaUMzmhqrF7GI8qWlV/+GBLB0nosmyOCeFH13WZOtlgA2qS0a7SeOyOCY22q8W1sepr8nOVCZZn2MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723805754; c=relaxed/simple;
	bh=ZpJBqNyCoykXRJrp5DlprR4OWaqMySwCDg0aZ+V/tnA=;
	h=To:Subject:From:Message-Id:Date; b=gT7Z0vuf24xqUpYqqs1gW5JUmPyjcyGkzE25x2MhskicQZeNSmStZ0lpT2E4v2Da0xRrR1QBzF12jMhY2ASQ3JPm2GJXjZqg2q3Rhs6iY9Dhb2I6zfJn8J5ySXx5Uz+RZDrJ3iuNSQLATjIFbgTfKgWFq7vgNyx7EA1qKRYcnQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P18+es4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P18+es4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A204CC32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723805753;
	bh=ZpJBqNyCoykXRJrp5DlprR4OWaqMySwCDg0aZ+V/tnA=;
	h=To:Subject:From:Date:From;
	b=P18+es4t58900Jy9JlKMCnUXS3W77orXAoxdHbzK8zVupI+EbRZG5gmn7UIKxEy7h
	 S6EGGdBH0YFoupsmWaBWodg6RoGiZK5KPpmssP0I3c5O0sHnXMxrlBv7iufUnZrhxH
	 LL/7cM75TdDYzs0AgqM1BSK79FezVkBbr9r+O0hS9sx3e6Ky0yHNdGbGckVScXma/z
	 nuEaR6xZZP4NBsQK/C1eSsafDUYvdqg71+pyDjUUMtSQ5GPdhL/Dki/iUVs+Fr2O7I
	 LhVPqEHEVQ1YeQMpqI/1LV+nK+wux3DESXZzJU1YVwCbFVARhpZaqDKsLR1PkyXnVz
	 /1b2UdawHdkDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AE4C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172380575359.18186.4967492638273114653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd0298918f67400e2cd9e092ceb8174c0352dbf2482605620cc643249acaea3
Date: Fri, 16 Aug 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723805753
