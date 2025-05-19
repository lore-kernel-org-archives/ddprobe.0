Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A271F4622
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747639195; cv=none; b=OUQidDSjN15ssuS6xuP/uiejMfZtzVlyrwxJCBjRaeGjsfm5qmuv7DI/Mq05h5nbNHsvlPudLxLvvoovXNtdY7+JZ1QbyaT4aF9L372jiw34vj5PY77jdGd3jLMCGr9LteXXMsLrMXKL61+CF7SCmh4reLtjg0k8Nsf44aHu5G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747639195; c=relaxed/simple;
	bh=cvm+5DxPxsUF6Y4RyqDQIklSHJFUjnzOd5i1reF9NcA=;
	h=To:Subject:From:Message-Id:Date; b=knZc4HP1ebL2r5zuaefc8Bi6dEzuYU2qw1nH2mC8G9q0+ixigBBS5mg2D0pG+uhbTYyv9v4IAM2VBt4/pFWI729dRF+8u90IZOTG0D6NPHztnmqbqBj/yTo2ZZ2trfg2bNagqLAWJZZm1FiVE+caOXzH/qlXlWMlHROrtEJ+5Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lz3OwuyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lz3OwuyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4BEC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747639193;
	bh=cvm+5DxPxsUF6Y4RyqDQIklSHJFUjnzOd5i1reF9NcA=;
	h=To:Subject:From:Date:From;
	b=lz3OwuySKRHJGGmADi+Zjrsh4jXTJ8+a6LdaNbYphBTqVtEOInuqP/y9XvzbgtOTE
	 PA8F9uh/6nOw+/E80zSunhj26RqYeDHafcMadA51PiWePUVNGw0gIEWjP9KYcCCKcr
	 lcvGek3788DvphZLnyiEoywFp1rYDE3E1mkqQE7ZqWWYeF/3egRkvmiZYrVX7ZecH6
	 ikPGJ/Yk9yfP2Bz1DGEyuVi4WrOrag1iSC3ciHObYfIxUi0qfRv04AMcu6PFP55ss/
	 UvDT9e+81ePt6uD3YZ7cDaVQNyQaST4oky0HB7FJfCCK3AzeyA4hvSzGPxfrno7e4W
	 K7fS+9mCCzrPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED47C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174763919357.19262.3248793562173887302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d445697ef36022014682bd5bb3f41e981a42b49aa00b6cfec1208b8748f9b640
Date: Mon, 19 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747639193
