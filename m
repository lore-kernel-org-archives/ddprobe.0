Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E96D524A5
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 12:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715950343; cv=none; b=aPiM8igXttVxT6h+mGufHfoLfMiEy22hg6+AelSZmAxRCzCmI8i310Al22NnzuzFkANIFm1aW2Ztqj28pKGE9wqkN7cUz3P9Y5R0S1OAvGSqb3hlZqu6sVkAtVOFj0e6l7eLgpum6x2YDH/rKETx7acPZ1dfWAbcoG5RwyJZ774=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715950343; c=relaxed/simple;
	bh=JMY/ctRZKxOk91UWFA+63A9et/pg0zhvSHTk20TUdwg=;
	h=To:Subject:From:Message-Id:Date; b=gJXqpcRf/OIq65FggwN0tPg4RHUlugYBUitVrz3fohC8X/H0bt7372FF8h4ATVs+KGKAO1BHPUe0nv6BkkRufDziTcWtR1CWbjPqQPSh8WLTi/BjVcpK3qeezhRUbYGHOjRDQeaqVsHL7Kh9sqTUsBqjJ//tMmQFph+dt8lohjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F52KzO1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F52KzO1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B1DC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 12:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715950342;
	bh=JMY/ctRZKxOk91UWFA+63A9et/pg0zhvSHTk20TUdwg=;
	h=To:Subject:From:Date:From;
	b=F52KzO1YAewTidsWjjtkhoYEq43xOkz8TVdxTpiCRMIMjfbM9172X4Rd0NUyGKpqh
	 lfwPCHHxuPW9Il1jW/rubPjV6/mEJ8ubQy1QZN/ebOWevDucLUoUMI2i+HyjYQPsPu
	 SLuDuZTW1YHEDtvWJjDjocx8YRUpszY38A91nCht2DE8ngnbBCddKpYquCIIGBqugW
	 xr0Z4WvS+dNVP6yqhUePgq4hQV5Xty70JK1ohZ2D+ipNwYUdlEic2OLOzfB/80Ogqt
	 x+UQJOqH+sz3CUezdGK1WN2ETxNT67Lek2bCQ021frvP3rRlqngRTwL4ONC2S8pRIS
	 5GLDrcQ9ugGyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CE2C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 12:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171595034279.427.4821508903765683181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1979a52c8447f2c2f0385577de2dc7a28e124dd806c2614cfa6603276b26ed7d
Date: Fri, 17 May 2024 12:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715950342
