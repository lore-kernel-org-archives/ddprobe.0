Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B65F34BA56
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770372234; cv=none; b=F0729gE5mb8TcSLA/i8J0M+oe7QCLXxYQriPCAQzuajun/e0QlIHAGfFFKZzCZKP8g+gP/cJNhwGJ/YZrsAvBPTebZpef3uEO/BNeIi57lQ7Psc2eQsqj9ta2KIDr72ehTCY54mrqW7EEI5tKpmmEAwgFGSwepTqc/YkSC1T62w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770372234; c=relaxed/simple;
	bh=rI5H7ER18qVXumM4mrqodovYwVVmJNFdFpi06hmslsE=;
	h=To:Subject:From:Message-Id:Date; b=EV+Q/8PyVC5QFZYo/YNz5oAPkQ+6LnL9Br5OtKq77A1XAhwuhG1kHvMsNU4GLhHCz3MJQdEe23eOD3ru51Luvw80JF2rWUIvZUmoGC10Xoj6RrC+crpTDq/IbCfPfXv0u2uaXaYETR6bQu8PFLOrjZhOVD4jY9ZATnL1+YgNQCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoSHBPo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoSHBPo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6037C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770372233;
	bh=rI5H7ER18qVXumM4mrqodovYwVVmJNFdFpi06hmslsE=;
	h=To:Subject:From:Date:From;
	b=hoSHBPo3gdOhD4i9BAEIwOPXePz9SbpSTqno9YwoRyixmceWDbXeM0WTPt8pPwwtE
	 cO+/14l7yey+wpwD0rTYL3ir3xEiqrlLs1iRHRfS57Q5d1Ds0+C69J8BuHOjJzBfVN
	 fIwt53/1q5NSINBPODNxqYAfx6eUzQk2LLm+cBV3jrCbUYuwuG8sBvEgECCbtQsV4s
	 sKpo9ghQl6wxJ4s4agXjZXVKZ+zC0PfWTFXglULZ2Z9aq75cIWN8wDvkh1xsRNHIwq
	 VWEa+9wg/N6TJm85mm4pCX/y943CVV7wsxW+jDMExZKAhBoZm+hH4UNztGeGS9HfdK
	 S0zxQTSPmLt+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FD1EB28FE
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177037223359.17939.2993984673326970717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d87ba1fad6ea11e025a54260242ea89d5f9e91293320e396f872bf57b0f1e24
Date: Fri, 06 Feb 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770372233
