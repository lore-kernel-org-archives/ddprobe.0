Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84F21FCFE6
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 13:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742046533; cv=none; b=mBhEJnJfTfz4I5J/zd+VrYbK6tcpiDfF/txthSdbrLsxDGu99lB+/VCIdFvWKCeWauUCrQyIHhpN7ZLQvExswM6dDImhdKXSt2fZpyDZcR55AGePBUP9ZTcTzjG+j9cSAwvL7tHy2D8NcywiTO15CselPStHG6QQZQMZmZa8vDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742046533; c=relaxed/simple;
	bh=9YhbF6Sn0G7QfMEzrfgj/tICr6K3XFzCOSDvVZTgozM=;
	h=To:Subject:From:Message-Id:Date; b=k0esujIadj/zcIS6MdgZeyuJ8pPRKKmrerk5PKJNE0JiWN+rdsvSz7bAaBBV1hrjaf7EoJUrtQZaSj5VQLzxkDL/Cv6Hm+ig+KI4uCAzgolJlg3qMpwolhGt5V6eCCVklVHZJV1A5erIAr7PGVzv1RPkMcgMshgo2TnBpVneBgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGi00wtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGi00wtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FACC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 13:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742046533;
	bh=9YhbF6Sn0G7QfMEzrfgj/tICr6K3XFzCOSDvVZTgozM=;
	h=To:Subject:From:Date:From;
	b=uGi00wtxnxhdLMfVQRyJYec50rR36yQdilRtQ+cvmLbm0dwG8kfzcDCXJ9HZFl2Cz
	 KiTXjMG0FEaf+hcKdQN6JFn/TsoaYrwegmzLp3EqGrmMNjkcIdLgkdpZcm+OWu7v0H
	 ervBDsuRgYcQJHAhF2s229jjrtms91GAbk2SA1xf2W1xvMzB89cdKIRCNeK4iTw9Zu
	 rzOlRCwmv23PbPg8Fqjs93jtl2KLfrSCdm1PjjzUJvYPzIRDylWj5VDYStrI1DhTP7
	 1OV2DsWMxIkhIWMzl7PERWqQGIq6c1csig2KAttSUOUxtyzefYKlknhwhSXEm4bQCR
	 hmGLDn4GNz1mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E5BC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 13:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174204653358.17418.15864807896464887367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5794251dc269df876c99a18dc42387defcdaecea5222a02fdae6ddbe3ca63cb
Date: Sat, 15 Mar 2025 13:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742046533
