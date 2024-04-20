Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8284E205E21
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 18:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713637823; cv=none; b=go2iob0GE0O5xe/4NPj0EiB/F9SnlyuuycYfPi63M5s7CetW6EywuxO1WIbwwUp6A/+LxdmMJACl2dRbI4GGFvxGLaEF+qQjWR9Dfa+4jeqjpLCilXpvm5tMllmUUdM6fMvr4CrpnFJrLaJI4Bn45Zpo1i22VAsMRnhWFk+UK2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713637823; c=relaxed/simple;
	bh=zLiYtthT6duuw2EwgvwwslEIYlcJbOxmGTTtgP8BK9w=;
	h=To:Subject:From:Message-Id:Date; b=rlmuq65+ptMqYQFB4okYqYQFy5Vy67yAKS7aZBbmkPWfCTqNs4iEmrLyBJ+cyz+kFJmZWP+cs0Pw7mNZphYohacqneq7p9eC0Om+A97vOKxGtpjqIVeh/9Jix1XPSz3vACx6+8nt1/JwibLAxgX0syo1lxXaXXvyVqIfGX4Ba6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5lACrLe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5lACrLe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6002C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 18:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713637822;
	bh=zLiYtthT6duuw2EwgvwwslEIYlcJbOxmGTTtgP8BK9w=;
	h=To:Subject:From:Date:From;
	b=N5lACrLeJjlaY0ObfwZTNRJ+h/Fjf+yjXVQa7sqFQAuWLegC3iRo4xJ+U00+m5vgM
	 9MmA5F6rBco2SWIkKugQG8huwdMKtaaBaSiPnH5RhUxWVUqEPwaenMEUsxu1/7gaAh
	 /cqYcOvr5zwyG04ylbrjklrPMIi1xDiKvY02kLlrtF4XSPM/Hyy08ERRj/7OpjkT9U
	 1eiC4t1fURFe+xGCYlAmMKtXoriAN/88sqj9oVIRxnGS5fg5q7u6mofw0PMDs7fTc0
	 VnEULchoczss19DA89kR/gHdNAgYUgntqgEObxBBGCp8Wm+lW0pQM1bkmCl54Oycn0
	 7lshgZ4XEp7nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD04DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 18:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171363782278.22791.2999694652762187879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576675b17cd0fe2449f019b99f887ea83c0ec93e54c74499b5a52f9f589cd2e8
Date: Sat, 20 Apr 2024 18:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713637822
