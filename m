Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBB59460
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723938954; cv=none; b=PnAlxvi/8oQjo60v+wgT5F140Cs9AENrfOSFsN0uPKbf2CNou6j4MeHPpdtFQPPTd1zzZW5XquQ1U92B+ViZRvbSvDJ3HSi6JMB6qbnYvYUof2RoxbU59/uMHZEtRr/oYSnXmisqtpN0LyXIabmrf2REVDF+zL2YNfp/pEz0rX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723938954; c=relaxed/simple;
	bh=EqR+pCTbCmi70O9aXidc0zpJJS/sAI2VAsE5BZ5epqI=;
	h=To:Subject:From:Message-Id:Date; b=ijb/aXSRlSILRfBVMV3gG7TJnC/ShCT+MegNy7C6opcKk1UC/vWWnhOnn9byfx7Xo0axmCak16kYlfGRP50jUKngrcUeIEpfKvtjpegwSIZPYZQB9bPdXUJ/lfpUiwjHnaldfCMTFZlorbK5/9x3Qpvev2QKx4Z8qRNyNZmgPz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSqp9p3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSqp9p3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06BEC116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723938953;
	bh=EqR+pCTbCmi70O9aXidc0zpJJS/sAI2VAsE5BZ5epqI=;
	h=To:Subject:From:Date:From;
	b=cSqp9p3yrvrZQNooRyn0esSqx6uh1sI2nhUit7FW9NDCo2yMCbPycscBOhnwnduNJ
	 XTzhjiB8cr64v5KJ80IeZeD0jCHqwyzWATwW1rWpoPfEzKJFAXx3NTogY8Hw6Ke13A
	 yKjABXdsXeaTMGtRv9gVQaVItvKQGrJoyBcRxmUpjOqj3hLUkkLfXSD9kPBknhJfls
	 JzJTqVQfJNyawrcsdPT9myAJcLFJ7WZ5VHenN70f+mxj8TZIQIe5UGzQbGdvCRCXq6
	 r6shL0hyliXyVBvkZabvo7mZr9HUdlUD0x1Qukk++lR3CdQExfR2aNrbyQta90cnI3
	 plKHq5JYDl51w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4248C531DC
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172393895363.2925.16694149888253539832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85294f51422ff0c6a00bf77a2a115a39a0764983e4fac4db40db4c0e221a5cd5
Date: Sat, 17 Aug 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723938953
