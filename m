Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0A217578
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 00:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739405934; cv=none; b=Sv4RaXrgKzKMUy872ijjYelmitqP63WnF9vLoHmRQo7feuTPuAe7NvICluRfQ+I5o30bSwPexFDy1vXR0TVpmDX24ZYQhlvSduD72nqZ2sbd7VNsHRswNeCQAvJwzykbn+IoGZaP2ePdjAootjSvO+5ReZS7I2CGyUwTfNJhkfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739405934; c=relaxed/simple;
	bh=NBP9IWFs0zy6BbUz2hHHOww2rwXr4ksZKw0fDDzt8lE=;
	h=To:Subject:From:Message-Id:Date; b=Y651/nbTTW3+FqGhbzm5iJXwOUInbjBGingRfDGAUOFp7WJ1r21nJjVVMHIb0edVIAwGf2oNuv5LKtVFW3YzYOSHhm1vD+DSNnAj7zgaKpi2jpu3VIxSjcPLUNbWeLXmZdFxvIPzGk9aISWE2tGs/hn0XT4ILZvqHh62mw/Qc54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U29adOuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U29adOuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B19C4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 00:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739405933;
	bh=NBP9IWFs0zy6BbUz2hHHOww2rwXr4ksZKw0fDDzt8lE=;
	h=To:Subject:From:Date:From;
	b=U29adOuuC50A1TbzB2ii0T1QlzTEt3UzSnOzKptKyqdUWpULnf/5q913KN6iLJ8w4
	 Ip0RoC5/2Nt10IhJghE6LWPj96ZUGbRTC5bUVs/bMlNeC2rQOq+M/xslcVJeB+lqij
	 9y1+97moua+HrGfhgHLs4CDb8XG8GotY7RUG19FhrhH7Y2SCGN3Pu+dUC5IPTU4jTy
	 5+yY2M78wpkL2c2UXdaXGVwQr8QHqX3tf+4erku8U9oeFLIvWK4HSTP6lJ0Wz1IWeK
	 9iZGlZZETRRhjfFSy4rmg4u4L9icTTp8kDDmdipbliDn4BMtJbbhQdSLVAMYFjFRaA
	 SDkVz8nIssKZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C631C021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 00:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173940593363.16722.14961144102543147306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce02c421972132ceac699ba8a34d8707088a6c85ccacafa714280b4c13360c4d
Date: Thu, 13 Feb 2025 00:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739405933
