Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F774304BB7
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757689794; cv=none; b=Qfqjq+Y8m+wgnX9UMzYgGhDS4Z2cQoyebpOGK+RbmqXZz1S88FA4/8hCQ2W2cb56KuZqOP8kl6FD/YmFp/9YbEBCM1xZ6CVxicrv+1sWZ/+jvCyw6yuKb9EUv3Hnk1+2bEepMtOXXqc2LLZJJIHna9dkV7kfch56JyJXoZcc1f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757689794; c=relaxed/simple;
	bh=NviuXgnJt/sgoWiOY2mZ7EJMwrBaWcMqR3Q+BFHtRXo=;
	h=To:Subject:From:Message-Id:Date; b=rQf8QXpvLlNStOA3lTtVdN1B2waUP6bTrv0K+YiJ8ZyM6NZalFIEVZQuP8K4nhPj9b/AZmn+PXaU/t2qzL057HuvtEocbzoLREaw7OShv/pdjk66RNAjngmdaUr1JbBxLYVropEeWNLLZADkr1dn6cZBNtuMQthw52LIspmxrGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJ37z2RV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJ37z2RV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A187AC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757689793;
	bh=NviuXgnJt/sgoWiOY2mZ7EJMwrBaWcMqR3Q+BFHtRXo=;
	h=To:Subject:From:Date:From;
	b=EJ37z2RVfPW3fazZkXLRK/HYxDz8TmeQSh3TYaJ24F33ls1uyCfBDc4bJRnySaT29
	 qElEac//06CBDRznJEfEgJ84ItCgeeASj2Hop5mQYt1Q0YQC3hZSCf7A/Cn33ygdqf
	 8EmQFconPU1/nPSbnEFeHxbarreSEGufon2VX9ecJXjY7jFZGUav2nVX77ZO42xEAr
	 zwZulMdtOeG2xgyTq6AnoZ0szx8yQyMqTQZIsQwQubmeTJzMGvvDikAIT/jrRIQ4+o
	 SKCcbCpeJ7uplUo8iSMBw5AQoBmPzYirdB35hwFSp3GA4Ffo4E57X0q5Dp60TPcqjH
	 KafldYaMefBUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D86CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175768979360.7429.12483397435240832719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f6cb3d583c96b42760ebd73c893e72848b8572fdab041164d7b8400ca1149c
Date: Fri, 12 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757689793
