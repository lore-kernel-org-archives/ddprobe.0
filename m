Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B61D3793DC
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780897474; cv=none; b=NwvBX3ieHhZ6o5a+wt/6kX5OKOxEjf4MOKaMcTkvLCqyskI6ulDFTEUDvTy+R+qVmbwWbkBd0s8+zRKh5e40QTynUv1PQG4Nn7aumc7c/FEXGBJfBzMF1I/4j9SPAp8FBNs9BtHthZOFEW8DY8/Qf3CnqYjmdJKyEkJrY3E45h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780897474; c=relaxed/simple;
	bh=mKIWhwunK2H1i0x23ri/+NBcWgcufPlaU9maO4tIs8I=;
	h=To:Subject:From:Message-Id:Date; b=Si+wiF4bQ33IHe8kYa81QQJ+lCo6+CVh9eOZkkb3c/HXNVMUPvklluukwL9ossfRmgNJ2Cmlf/Gd9doXaebrgWv0VuEfcX5mIVJwLn+ZN8Lu8Fav/7ohdlK/KlAE3VYp0yTuYW/aIV38qw5z6pRljR2NgIutqoG7/xIPskS6VVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hjt+QxNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hjt+QxNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6798C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780897473;
	bh=mKIWhwunK2H1i0x23ri/+NBcWgcufPlaU9maO4tIs8I=;
	h=To:Subject:From:Date:From;
	b=Hjt+QxNNS/JtyVc6Ri3Ipk0gxf5m+FRzOTtHYYFBo+PKOWCEJeHHdH6Bj0riKZRy1
	 RQXERU+TUKGQwaOk3EdO4C4RzYjjqjxCPwiemd+DaMLydS9g1mtbQZ+I9xYaSv0MD8
	 X0NBKpcCclsGGR9Bwuu9weh/P3+s/NK9uYgdwLhpJ7Vtlp66+NWCtOkRLVbRQqdS1Q
	 olagci4NUUEP/A0v071jHcy7nqug58v8iMBKH5e4LLeDtHeg3DK8ZJMRI2TVr83yQt
	 sl3LYRKGfddWqw+rDCMgoxocN8L0tuIBH/0Xm9/dBh2XD2f+kCXbj1Q8U7/G3Yb0WI
	 dmw/qqeOwmw/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFB7CD8C8E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178089747369.31796.9052670055655979762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29c09be80bedbbe8b02be5f74cb8dc08b91237464e13d012d063c17760e16e62
Date: Mon, 08 Jun 2026 05:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780897473
