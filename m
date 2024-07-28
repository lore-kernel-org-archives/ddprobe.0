Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9B86F2EE
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722196554; cv=none; b=fB3oNd5HVr+RzTzh6IJcEOCLwOwyEVvsMl7DbkgWe4M2KvqCPJ3G34l1wp/YQPskhXeJnE15NLUY+E8RNzUAUPrxQ0+ROcR4SdtUu68keD1spoS1WZah5FAX7wQenevFfy9gK67m2Opzge1hmjA6s8oEbdJjzKqWBJ6durXeTLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722196554; c=relaxed/simple;
	bh=1U8f2RNa1pzjJweUYZ8vSxAkMC06sSowabarbt0iUHo=;
	h=To:Subject:From:Message-Id:Date; b=m1y8KdLaPK+YR6WYkWiNB/dG8hq63DZ3vD9pp6aUMnpNxr1jynlGie0xEcS9TWIkwn00RoEKGEKJcFO784SFITLzSE85iFmoC2kqQ+pn0UFd/jRiqZn4NCfK68dCx/lbDX7b6/M7JgujahF0cqN6niSCnHNn0uBKRkVqkI8+RBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMGWRz2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMGWRz2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF40BC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722196553;
	bh=1U8f2RNa1pzjJweUYZ8vSxAkMC06sSowabarbt0iUHo=;
	h=To:Subject:From:Date:From;
	b=aMGWRz2c5THON4g4aqO2IxBw/LGyd00hqRi4BsUr22HtZTGvK1++LF+XSjN45/JIQ
	 iW8ztfg2B4gYVliPzdFKFyGfe066R7w01oUlm7QcPY9Li8zDikCVFVT4jwX9yimetE
	 uwNAENvEpOFfDU+S/7qEe3h6+1a+2k/F2CbAPc6UbsP+SdBVFPIUj/ypD6QJcMKCzp
	 BY8MKHvpfbL7STlODsIrvlqCAtXxdeSdLvCGOnVpkmahMBGQU6IKfZLyEXGmzw7vOI
	 dca2egYmNUy+Zmwwvd25cTP2RieAaa3Kd3ik/tUGucSqJZzuJZTpmLrzntcX36hAs0
	 uVZMh2C8f8Jeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975E2C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172219655361.25335.11920299683315769362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16fc0f7b59a87022800120abf9167f8e6d5f0aef6b4c2a8c0e85583e7ee64d3e
Date: Sun, 28 Jul 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722196553
