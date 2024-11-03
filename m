Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FACF83CDA
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730613954; cv=none; b=ATnDOh62rZa0xuORgxKTg9QYS9YvMO2I0RZKUJbedakKiwEiJsaH/+yFmC7lC6OGUODKoiC1Bo/y5h7EtR+mqgIK4eiw2fkEAKfCh0CzR5N0Jf1ZY8ctD7QQnhR6nTeTqsPkijhqyiqIh50WfwLmOiG/SvJsxitkhjCuGLt4uTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730613954; c=relaxed/simple;
	bh=LqnpITD/Tr2cUbDRewvK+86XMYGfmt7VHXkWhRbSQCQ=;
	h=To:Subject:From:Message-Id:Date; b=SWB2Ux2X4Vlwc+QYEBbURLAtD1ZjZvsE7k7SD3YC+ePAX/G/bf0J24AieijIMPMSv1MfA6td7fQheQUKDKpS5LILUt0o4oL6+xDhSqIwZ3KLqM+KYuK7y2yvfz9IiCGXAQvu26vlgIUzLsVbudgOebwN6afBg/QaCwlFBX6eIjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzFp7Rxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzFp7Rxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDE9C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730613953;
	bh=LqnpITD/Tr2cUbDRewvK+86XMYGfmt7VHXkWhRbSQCQ=;
	h=To:Subject:From:Date:From;
	b=WzFp7RxhNhxNte2afO2k2vf8cDHiwwKVdvKYkZQ7kgYS3PxA9hVhwxoJybmsmtFwX
	 8Sg3Gjy4SnR39mLrbXo1mG+cf1uAurebDe9zaEcflwMM3RWT57JUHxuxJL8swdCTKA
	 57HPcjlOujqUSzy5CP2NCd56GXjo1IF/0nl9d8Z/VAxNcELcg0Q+m6rdvX75ad9xko
	 i8he50WmbHgeDMl9PrjWNUPf3HK4PxB2j3nhhH7X81vZHYvmmsSrdIldEcX+qMtffl
	 KmpxOSal72xzfFyclgsaCG+E2lqAFxvNpbj4y2A3noM4ceM0cPFNeuNG/FxJ+FTUTy
	 EE/pYGYDn9nzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98492E67807
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173061395360.4098.9620633350024321880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23fe5a303de44de9f4ace99b10813fb10fdb0cc764450a81cacac12ec2ddec85
Date: Sun, 03 Nov 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730613953
