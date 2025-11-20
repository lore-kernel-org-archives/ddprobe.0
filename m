Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEAB2FFDE1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763621514; cv=none; b=f06AmCAWCePszqJR/HAEZWXwiPf4UjXmVO4WkPPGCQvhcOYqP+12+2o4WK63IeDnmtv/sKU46a5f/yfD6eYT/ZQ9mwOoRAVymQJHvwLLLRkaVtzdxeXf7YE5GbhSxjfYgDLWxxFtHQij2UmtvG7hqSW8eyujjaofJqqnzaGNVIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763621514; c=relaxed/simple;
	bh=/+Mw/J+HQ6x+p1QAet4NZSymBnyXnd3wZwoELOSmif4=;
	h=To:Subject:From:Message-Id:Date; b=SQLyFjy8ZMtzd4ZwnLp480YGqoQls1+M1OS1LKU+hKeHTy9YKS8JsdZKNa9YLHQaaoZRFtUce0qplJfXmIsy8tgeA//hDlvV89XI8xTwrrxIkuwgQ8hbSzZXrHgernH0seSrAJROcZKx53qE1J5DQOhuGXjXu52SBCS/3F9iqdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdnoITHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdnoITHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB549C113D0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763621513;
	bh=/+Mw/J+HQ6x+p1QAet4NZSymBnyXnd3wZwoELOSmif4=;
	h=To:Subject:From:Date:From;
	b=mdnoITHSc7a5mDPXQ4dw0jSc+BU55Kp3oHu8vUAZG1PzUocXQdEZitIlKWiTJLS9L
	 eW2jkfCr3ZtrVgCqVki2FNowxfKhLlQ1C1RIGG6D37FsUs7INRwjmkKX1Zv4yxYWKX
	 DTgPmz/ZARLbWGXW29c1vyND1nNM9tsWxY5I6Jhf4KGnfcZEzADCCzIHQKVDcv9/vQ
	 9c0zdfuGunDSjkJs0e0H6Noj1dw7fKjjXdE7MKDH3hCf05GqKuIz0eMof1+esQv8uf
	 uiUlCzWLZG1xm6aIXXvfoX2YydHDnT70ZGpGdwWdmcH15qmRB6SFeeuOA7E9lXwwGL
	 SJP0rzIylhiMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982F8CF64BB
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176362151361.31880.12720138949949012097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9be2709b2d3de6034fad61e631fe171014c4f2efec2ac775825ea01f5d8a9f
Date: Thu, 20 Nov 2025 06:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763621513
