Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1597A14B09F
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717540583; cv=none; b=keQSIZVFke/wZ7tqQR/7wB0JeK6fsr7v55oAefDW/KFiw3SBVsgYqsF/pRyL9ZQh0mVk+3jZX4MKMCzZJzEbWl7VaDH11SBaTQocr0F+NY4leVlvDmOw/Zd1fCL0d+hoOG8Y2zwKpSdArI95ozLKWqWNcEHinh41oZm2ZxV6kRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717540583; c=relaxed/simple;
	bh=ArYFLRrlyKn7G/aeqEoUDwRV2R7c/X3RkwWOu1rYH0s=;
	h=To:Subject:From:Message-Id:Date; b=Jtl+YkoRqypZSt/dBH3AAjlWLHWvrU4krHEUeVsrKngjzzV8Xh4AF1xjuJrsL1gZPsoKVdLDibuV2oGKbGj/wTIA97Jz7gpzjZ3ktuH9xOzabW52k7yQlIjtmGUdRYMPAE7lLbRScA6LCYY7YnKf5zpdCxgjLxxwy5tkYLHOUJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuzF4yn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuzF4yn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB04AC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717540583;
	bh=ArYFLRrlyKn7G/aeqEoUDwRV2R7c/X3RkwWOu1rYH0s=;
	h=To:Subject:From:Date:From;
	b=OuzF4yn3ZiDMymwSwJBvd6lvneiXIi6lAJBMhGgQ/UEtTJfW1IYIXac3iHLc55RSF
	 BR39hYisPHEl6vrKepi4iPNpZDKyNPb7RyejaaBIP4RAhN7JTGrHcDFRKKbmioxZSh
	 ldpg87GxfgTOBSMYWhvssaPnQWqGZYImJ6g5pzhQt+2UuwfIWx4gNg7grHwLc7OymK
	 iZNtmv/F5XLnlEnNu2pTIxH4LaEwnV6k0QYzMQLEmLf5lrWrn1gArqsRjx0cWAvMna
	 vwEwLrSUgKqdijd9xGgcpbgBbG+x1WMkJ7QccTVbVYMjF6lT+WS/JxH0+MXMzpI5W0
	 ZJHafPq+j0eMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD508C27C50
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171754058281.10868.5173206626001125976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0287a4068a0a81fd3000c6df8efa0539ef8e2b8e5ee3c1568ade255526fdb78d
Date: Tue, 04 Jun 2024 22:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717540582
