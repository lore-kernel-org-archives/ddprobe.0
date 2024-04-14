Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1344204F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 15:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713110363; cv=none; b=TitTt/iRI44hMXCVgx96ciAoRl5K1qar2igYlUbtwX2P/EJ8fqxfAHTS/BJnvn/yUZJ4lnsvnsdexKiWwWdrdLPo8KtKiZWmqKbvyry0Mb0G+23ihRaWPZrhO7adKDN+eXUrAcDLVrHi05AZP45UBB7eLwnoIqrL7jTpwFE3QcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713110363; c=relaxed/simple;
	bh=s8MH6PZNkOx23qQ86MUbtlf3j5NO16tejDca67RmjUU=;
	h=To:Subject:From:Message-Id:Date; b=hjAR1jmclywZyJmOtAbjbL2aQVrorbfMP5y9cOur89QpAy1XiyvSj0fnyWv3uLoN+3BHY3rrGVwnUb3zcEZ0averDytIkm3PozWSaTMgbi/kutOX2rmyr1Q5Qu93slIgn12jMrv0xj8VS/D6o5ObSM0mrlDzcYvdb+bqKe5ndAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8ByLa7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8ByLa7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D18C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 15:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713110362;
	bh=s8MH6PZNkOx23qQ86MUbtlf3j5NO16tejDca67RmjUU=;
	h=To:Subject:From:Date:From;
	b=k8ByLa7szIz/Dynu0SpG+e97JCRcTqtK5V3eKU5Lzxg8zwQ+xM6QvpU0AOkjTSnO7
	 DuVCHJAps/GJnc28mPEeXIPPtJ9TI8CBukaqaktBXd+dN7slQ41iK+m2cQ772c8HhI
	 h6uR2sZdo25T+uopyGG87I1e/nz/bLgpcOHdq1OrXqsQ5BR3AWoc5bfNb/tFp5SIpl
	 iz3eAtAECSNIn8asJGxTIZ7YDkBzKv8nhlAFpbga7L9yBCkEYc77ssvTEO0ojk0vJs
	 1hiuWWFSpwT/qrGQt2GxyzSjQuuQYZCwW6EW9rkaZOJQYB3sKNX9Fx2D8LdGgZwr0G
	 wyJ0uqcy/rJKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBCECC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 15:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171311036280.24835.1137639810647241754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6fea3ecd3e19573b47baea2f0791de817690e50775e369664f6186604527624
Date: Sun, 14 Apr 2024 15:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713110362
