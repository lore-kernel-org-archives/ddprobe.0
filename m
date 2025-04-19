Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BF8126BFA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745082594; cv=none; b=fA78r3nUhvRgtweu2JYYkj9I8+Uof0bc9/KmQoslwd7qqx6C0XPjdmuk7Bge51gUT21GrvU4ffJ5yzlJ39EF5loXC9ZIAi1hyJ5jIWF6EqzvsAuBBqNjWPkN5Pqz+sCIRXkXJZql2xQ8x0ETo6ueCLXyb1RarhkqdPTy6LckCwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745082594; c=relaxed/simple;
	bh=KE1VKfuGcXTRZqOjd6+9S+1vLvivqa3dc34V4kG0WpY=;
	h=To:Subject:From:Message-Id:Date; b=hZ1yeQbG4kVFdUsuqXyBEMmXbSKkY5nR2MXzhyK5Xz+G9D0TQEAiJH+7sT8GKL3jfL1CBn/jAvQc+RRcOBUlFG0r/ylX/f77/XGtor6q0orCmq+M4v5s0bLHNSCLVzs4nuvbISsWwZR+L7Y/HrjHdhSmnc4j5jY3MlXwh+6LIfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyP7yOGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyP7yOGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C9DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745082593;
	bh=KE1VKfuGcXTRZqOjd6+9S+1vLvivqa3dc34V4kG0WpY=;
	h=To:Subject:From:Date:From;
	b=gyP7yOGryXO26HwU+QkcfInjEyUO+D5sr6B2k7N8yQdrKzmJAzDnl7TmOC+Sy36fP
	 L2IcoEK+f3d+uU8j3DLdJWvBTMoMbpObd9rQOnc+sgNidkUrgf5xJnEnyJscqzagg7
	 rKhlYudz6F2ykKyd3xJTbwnsAQhOwjQIg1wOTG7aZNS8YhTrrTmp/GrOKMv2iSpGdf
	 TMG2NfB2aUg29GVCVnpMmp3kNg89dyH09PaXSOVIV3i0/pYGiXQoDx//KF2lzPBMoZ
	 SrrLvY58sBO59E6jlNrBME/ut4YJTXLUELr7wKl1FiflXA/OaYATRYDjxhqxeKJcnH
	 LPfxDmHHMiZCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E475C369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174508259359.13015.8412254936779968822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e76a1fd3994bc1753f239be2cc0c30da18df3b562b4ac8ae1e1f8051ba55bbd
Date: Sat, 19 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745082593
