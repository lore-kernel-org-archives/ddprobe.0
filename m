Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2423019067C
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762961394; cv=none; b=Gs7COzn0cugOXD6gnN276hezXEMwrShH/q1fVuw/sFHJ1S7qBohQZ2dDDKi29pK+pSRQ0RpYbqB0oc9eOVZJ+8CnjMU11JLqt2x8ESUnNalhBQD0J37yqI3iQ+/AI7X4Spvdr1UKQJ4XhP94Kzfm8I4vp9drOejqouu+4lz8PzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762961394; c=relaxed/simple;
	bh=teaLupPAJzOo61HeRBQ9csQRH67pgvCFJ7aVulH4SyI=;
	h=To:Subject:From:Message-Id:Date; b=oHJzY82XgA9Zyjr38zqFHSZvk2nDCVr9DJCwagIxS19/KZmuSV6cnZwsqaN9JHI6Op94LuhoM02onY/WpPwehicOtArdAhvVMnpM+unOxAsgmmQAfjHYZLwtcpIgER4aVGT4BiS4/D5rhrS05t2z0r+F0lx1+/xI2uGK0vfEQ5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLi6486t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLi6486t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E06AC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762961393;
	bh=teaLupPAJzOo61HeRBQ9csQRH67pgvCFJ7aVulH4SyI=;
	h=To:Subject:From:Date:From;
	b=kLi6486tLxXDvTTIZQ6HsA9cIAB/5+pdLFIBHP3V/q8kxfuxJlB5aegxJVMiQ+uMc
	 MbtytK3H9i8i7R8oW8iCWAYL6SmMOGYpRGWSJ6qvpP7UysEm5yNX4nYJnkFMmsmgMa
	 T2O8+yYMltQKh/Tbi2qBW0MulYRLLB9h+CWEid3xNqTDrFknmL70koVskPBwtfjM34
	 0tvWz1uaJQHjnrrX5arm9Sk49xf9o+TNGnLFTC7EjXXam7P0FDZCHK0Efsh/jbalcv
	 77vAlPhbn1k9tQoy8gbEqVk4IbCAlsa11vmLXUcpqBAqXoUAiPBfj5PlBa0W2TIsVA
	 L4HPXDSXYAikQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92492CCF9E3
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176296139359.15056.12054905812831169217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a313809932bdf602622a6e89dc25109b689d7c347ca3f0f7b43f45031e105fd
Date: Wed, 12 Nov 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762961393
