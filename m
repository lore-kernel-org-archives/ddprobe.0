Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BFD1C9DD3
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732179954; cv=none; b=YaF5EBZV4JswQhEqWCAAshPou7jPB5KXmF/0KKr0i0JVxA3/h5qlLFUEHzjjIlHD8pAuUOyXKvgjNtqqcJO/WELhxeitu+b/xJsgidC0lJ3yFcbN0IW/E8BdwqLueLZ9nxlqA34nJWCyZGlv7Ndf7jF2lpnNgu8jVQ6oZHYqRxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732179954; c=relaxed/simple;
	bh=0zB3OA0tG3qa/ilJQXiqNZT9Qd1ekVmWXTx9BQZkJBQ=;
	h=To:Subject:From:Message-Id:Date; b=BAEOqKHSN2ELcE0a+c2MTkOxYmq2fekN19sEJcZ0a9FdqxFI0/gximDS8wqxwBhs4SuMoqBQdjN4d5UoHdYRmZ2EqMwf2nzqATOx2HNZIsR1bRIEpsJ2HH8XZUSFk0ljMM0nmj5cO1+ZJzFX71kPwdsdxhhkKHlAGq1ycfNhzl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cwx9bulN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cwx9bulN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8C7C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732179953;
	bh=0zB3OA0tG3qa/ilJQXiqNZT9Qd1ekVmWXTx9BQZkJBQ=;
	h=To:Subject:From:Date:From;
	b=Cwx9bulNnfM3Ql2S/vCA5cCATOYeBW28YRKOBVEaMrmvIIDesaQvIFkaZJcpT4piu
	 yPviWYFYdyyEKBCnknMk9Gv17ixRQVfeqy5JmpnEwQU2ltHiqHn9rlD4rvyKbRVZzG
	 nb2cpWoqsQQFhXDNSc2j0/x60Dpzg3ZZaMXvu5QFEAMRgPNAhxiNbY1Kgg7lWcb+5c
	 w1sotvU3tM0hOMCQl02slPAp9MtqNCebK412eYMHHIa4QcY4h94w8krbtJmsWIERY6
	 1HTWNAJzjq5+ErCoErMBt6JygDNKUVMwaFfJhVuCAXxEjI2Ykh64UajyUAgNaSPyUO
	 VQObELMy4euWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C76D75BD8
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173217995368.32534.9089798190413485317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3bfc5b7ccc84f3a0310099d8d060c203d285d3fdd7be22a78c0ae8d4cdad37a
Date: Thu, 21 Nov 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732179953
