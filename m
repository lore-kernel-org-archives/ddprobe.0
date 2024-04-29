Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B26E83CBA
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 18:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714415543; cv=none; b=OpWqrN7x1vzn40b7pXC8k8n5ULShcuWDYcthXF/5mD1zJEV4Dim1ax90EvqT08+3tvXZmryb+br6hhs5GmR8ae5VueL525qtvnmIu755SAafQbuNAJY/2mdv4F4eJ4Ei87VpPdelrNNqA5TKsQWApYxbCpGqyfePW57/ENEUPPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714415543; c=relaxed/simple;
	bh=M+ZWxB187ZJBB0MqGUXXMzxGX7HyYksKHX2KhM5+M10=;
	h=To:Subject:From:Message-Id:Date; b=bpc+681/uIK32Z78iWWiytMc+XHVupWY+/JaEk11twdWiGZNGyinI9HanD29/p7HDiFgqyYvgNk1ZP9j61tQwW5VoYL097eAn9HFrEi6Z7rcKBDhVtnpGPSThTOrMdig6r3/HX1byZRvfJnkq1ndmR4RzevpCte6mxxk7VLkeMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPQyXYA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPQyXYA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF1AC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714415542;
	bh=M+ZWxB187ZJBB0MqGUXXMzxGX7HyYksKHX2KhM5+M10=;
	h=To:Subject:From:Date:From;
	b=fPQyXYA6K11LXTFGjqNxDAXI1iX2HCVviyjEaHsLpbjzm1TmlluPRcogUA60zYA62
	 H/vuV84w6BJ5JQWWv/JlBwqb851mNjP4Pt0jvuGXzboQemz7SWonvafl8SfiDQ2jOb
	 j8IuTxkQG7HC/PFOsZB2QtwqRHY4XVTDF83m5aHpx02bJNaR2I6TLgKEJ1KfDKQFZr
	 EgUfc1pg6YnLMpnvwrUJLxb995XCj7XV8F84ai4W6HN3SFUdOMGBbrcosdhYi+l5lT
	 6lmee9YVg1G5J8dj2VREA/9aW1yJTHxxrJKjzJPbyOSxgQpCpwbPp9ovTX4Ocq+8jO
	 oqVsHjjKH/SsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C046AC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171441554277.25989.10202936052514287523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a4314a1f082b700d7c29caf0fadb8cb323f1dd3b93a4ef14621c9e97481592
Date: Mon, 29 Apr 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714415542
