Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202991643B
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768012434; cv=none; b=G/OOZ4ymK7/WCCL2pdOUT0jBICdiGTfrb13UQ5XhjHEiWzmiEBYp7YDSo7Y/ZN84Qikr8TM9ns8PZ/Em3kES03rrh1gSyHpgEG3XfNBL+xhkn/W4yZHrdnzATOL/VQTzutBakw200KYybkDRFeSBZq9pgKsAao67GtXwnJCb2g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768012434; c=relaxed/simple;
	bh=osA2nEOSBuQGzA1LW7GFvSX4ZCMS8uXWhbQqQsqL624=;
	h=To:Subject:From:Message-Id:Date; b=F0uWk983PZnJfCyKIyrzp+ZMs3SAsXe97Jij+mtMqLqkEfh5SpudVgazICI9i4y4l9llMucjdz9kseReU98zQ7NINOKHbVa301wHOex++9h+bBdJ3FPCJRfvcPmXDyaSo9RsEGpGp+YmYyTADbbRiKM3th2DnaCyta3/29LO3vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3PSVPNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3PSVPNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AA0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768012433;
	bh=osA2nEOSBuQGzA1LW7GFvSX4ZCMS8uXWhbQqQsqL624=;
	h=To:Subject:From:Date:From;
	b=O3PSVPNwdv7rOGjab/3iX3XxHTnzM3rl/dbsz1Xb4FTLcIEDqsG3xfYRHYYWzAC2a
	 Z8vkvKXM4C14kmHz9y+W0vnaEBI7jrcVKwg6FSB0/xqhBV7eMRKmFPw5P0H0j3HhVt
	 StCzx6CDBmb9hKrgJWrXfBXxtPDDGGWbKN6pp56kk4YPUW7WvXgfHatld2szu15ZeL
	 u7j/Kmr0lqHC/ltfT9mbZq3BYd3MjG5qOUzeFxGeHC8WQgHrtP+4QB8RbmB765HlUP
	 5eV98+Y7+cKxr6GUy0GJmJ0mAVbwP+cewbpCtnQZO4Yt2opKKko4rsmdOyR9GAMPf3
	 /9AhXW/wjr3uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94119D277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176801243357.30488.2324398921510504904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7e45bfb4e3378e2a9f2cf4ac3d5e791404558b2689adbbacfd6f2781ae9541
Date: Sat, 10 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768012433
