Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD4025F96B
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742834394; cv=none; b=PDPeR/P0wQyy03+YihlPKwCwpNSwR/3ln9IX+hSA8M0XpRIdIawU6yxgNURx+0G0uvM8AjdqcPPt1wqSUChnTw0sireTRVDD6o55evgb6c7Heysp6TcgH0ieC9qiEPWaFDtOps1BYm8XHK4Sc8rFp3oj0pPWK/pglPto+A618Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742834394; c=relaxed/simple;
	bh=j5qgjg210jEjArA1lxPd4V9l/7HYWSZVutMsqaHjtwI=;
	h=To:Subject:From:Message-Id:Date; b=YZAPeOF+BOUWg/k2//EWCOYvnl5w4JfB3F1HlpuMhXLSRvSlp6qKPe+pxYMBwESJZhPrajQKvA/4BGaXozACtUaDaXYZE6sNiue804rTHDNjfDrjoKZ+VvxnrSePku9Lt/TAhRWuZstoEyAB2i7GhiqbMdbRy5kL0JOAvoS5rBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejAE7bif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejAE7bif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD546C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742834393;
	bh=j5qgjg210jEjArA1lxPd4V9l/7HYWSZVutMsqaHjtwI=;
	h=To:Subject:From:Date:From;
	b=ejAE7bifSkmV513F8gF2YWnQwgZHc0EwSPlTLmJ5IZiey7t7DN568cCa7bHmYBCLs
	 QZyDAcXq/qmpZFWzooNdpueEhBbr5etuj83lkr95+06VoUKtaBpTRtXhK/EbOQO/QF
	 jPxj7JX5llbY2KB2BrOI//IywnwFFzRSnV8Afsrw6b9QQUcSONwe0uZATnAM75FHfq
	 W8FygM7g72pH48FpMXVhsaCXes1uBKprDIS1U9WIVkhVyDopuivgbzi7HJ5WonMJM/
	 eq5x9/NNmKUasoxDxWqCbONu5nHt2R5KX87yJTH9sXb6PZvRxERBoKTv4evm0g6oa4
	 iSbxERvWi0yYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988C8C36008
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174283439361.4991.16831450927963583494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebfd9fd151369ab785010a27c6afdfd822799c824c06fdc3731d21d46f54e18a
Date: Mon, 24 Mar 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742834393
