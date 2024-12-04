Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D8D44C94
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733280354; cv=none; b=RI0mfC7PqK3czGsd4Te07yU1ZROJDIUelGwwYjpcYkr1R6ItqY8xj+iruOI0lH6MPMTEvcM5fv0o6Ib0x7dVYKDIet/aVouJ2z+C03jB7qrke9Ru6TbUEoBDAVQAu3jqWDfz0Yrci9weC3dlqYBJUpBgM/qCrSxgfBHptinEvbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733280354; c=relaxed/simple;
	bh=N2w0rHf1kYLoO+hKaBDoEtQs8NlhTs6y3cqBnGdnqG0=;
	h=To:Subject:From:Message-Id:Date; b=ob8fWzLMO8ntyHNSigmk8CTs8aZfVLbUhHsZSdLaDJd1FJXcgprtLxO6ZjFGYNO+q2b/aOCq0mQvtDM3ZFsqYsF6yP2p9RZL/C6+XmtjbgIgTb/i0kKTHiFUya64XRSLi5uegy1QL/YgyxSztZwYhJcpqh+CxSlNnBU2LbSDUW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpcFuaHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpcFuaHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DC9C4CEDC
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733280353;
	bh=N2w0rHf1kYLoO+hKaBDoEtQs8NlhTs6y3cqBnGdnqG0=;
	h=To:Subject:From:Date:From;
	b=OpcFuaHG6xnwf1lufj0Lr6ticKLW4mYqokuaWZKPhtwTFeGRD7hu/yf2Cm8jJbpZ7
	 EBTU/y/ohHcn3eMf+1O2gO3QmTqjm5vWwhRpQNqfyJ484IZ/LuG4dUjIttpPaBSjU5
	 VwfMx96HnpAnprSePUGERXfm+Lp5gsrEwLf1t4Xnw0+SxgPwx1fYZBBKeToGOv3BgM
	 bH8gZtcbJBh7KzblumfwoWrjVDx6MljZIcnexdSb2vqbfLUVveKpBJXjBgQfKJdMQS
	 R3l6Y+nD7ZFSi9iXJGo/Fq2HBH/wdNH9X1Ss0ZOS2wE7uAYMEIzSojclWMIXlP5FcY
	 tWAlAv0N+dcpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD99E7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173328035362.6908.14447388167951893408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98404837d7120db831a8660092bea587f08e175bfa3f9613999496b4896baf02
Date: Wed, 04 Dec 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733280353
