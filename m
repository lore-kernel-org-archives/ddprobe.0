Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC277381BA
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712500696; cv=none; b=Q4xh7e1Qo8A8Mrrkv+buIQ8yzgRpJp8s2ANv1833wX5ZFlsizo9VNbvGInsxs4OtwJLpjjjVLT9VB4EKmmehegpY31fD88FVQ3HyQWXKArZkRJKwilRSzrVXQxrYlXrJKtTdY7J16tDtv+C+iSJd0V+aOOXfmfB4hqPGAdd9lj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712500696; c=relaxed/simple;
	bh=7iy6xqWJdnVU3a++Y7CoX7clGkwc0F43rEGIxxebAB4=;
	h=To:Subject:From:Message-Id:Date; b=bIJt6b7JP9c77PjrVueP80V7Z/Xl5cqcl4CICYvg7s9aZ5sKzdscWQEVd72McOjjF84wb3kz86e1UwtxT8fWob2jPYk2VVSkZNygjdYRgr9VdSsdrDPHcdMZMQmmww9bIjj+/qGCJohmFCO9dR007fBcNsOo4N5Xr7FNoLHAMug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ei9ibQw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ei9ibQw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CB83C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712500696;
	bh=7iy6xqWJdnVU3a++Y7CoX7clGkwc0F43rEGIxxebAB4=;
	h=To:Subject:From:Date:From;
	b=ei9ibQw/xPG4Vyw1oO518dyBSgtbyVLA+Gl0wZVLFKDMHr7l7+HFhbq/3i2pSSXvx
	 UXq5qhg3nPn3u3h5jn3Vnejsfg3f4JV70q2aKCkuxkes0K0kHJQoOH5dkM1aqmJlYY
	 wEjJqyKEMHfvMbS4YJQQjmuZUiwGiUQch2YuwMj01Wu2NvGC2c7EkCKDwZOC+HuNOp
	 QmRBaSxevYmfXRFhQ6zLNy4+al1COtdcW2mYxffzcku8P1rUTtmsYhmbL0Cv4H1oFB
	 PYZ+KxKCzei7XVtblt1NDLhv3VOp+MRWkmhc7Qjrrz2UMDJPygL0Mq3l8qdOocAh+q
	 vcZsNCzkpMhoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6240DCD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171250069639.20371.15882808558804554090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caab32b34f900913e7d486da84f20335a2d32122902adae6956337619da42b51
Date: Sun, 07 Apr 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712500696
