Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4769A81E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 23:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720308983; cv=none; b=r9JHnf5bMFfqECGSQMbzz4/hOPL1RN15Wx8p6G5yXUq9L4RMGs5rMhKUgBJAM+F8zqM52V6yXJ8QDOAVh5BFoDOWvVuCKuAzAxgfxse00yi31NGg1MCIEm8ozdbR7gtVU26GySXCxdrHzAFV2noyc8IGHAXO6MFHqht2dcP26hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720308983; c=relaxed/simple;
	bh=/Yy3dfnO0D35bDe0wUwZJU7rxoRS/XAIJFEmXB381T0=;
	h=To:Subject:From:Message-Id:Date; b=KfwFar1e6hHUd2rOU5TjQ9Yx/a15OTSJiBP4yb1umlcNCLo6uraJUSBZEPL03RnXtUZaSpntT9JSNYK74BY/51mv4O+G9U07sXIk2+bK5g0QGyjX68c6tW72yDWsl/+Eh2pPEGhMvFVD2UUciO2JgxUioczHm1kgrhEEkKXNzGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqWR8ZGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqWR8ZGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4211C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 23:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720308982;
	bh=/Yy3dfnO0D35bDe0wUwZJU7rxoRS/XAIJFEmXB381T0=;
	h=To:Subject:From:Date:From;
	b=YqWR8ZGHm8ahH0bHksLHB7rJZ0JTJiivAcVP9sJLyCMXi6y26Li4/J7REW5lxmTaI
	 jst/AmQ7Qs3co0/enTpEQ5/pMhFx/2zJxpOAcmNv+ZEMSldP016imlEKweRPXayf4G
	 0cL6833VVGctF2VNqSnl1IhfuGeQ03dPI4QwqDi4ayUMRgiNZKmhJ/zW6HXKZ6F/Tz
	 38vXrVklH2vlsI+03XffhT73SiXCRdyGezarDXAMNHB1ElggD5kEeGukGQ4wtvMGkC
	 jyQ+KQM1zX/iHZePk8MGBau1RD3rKpTbpcaqzgEjT3ViNa5vkT4tbVWYCA0jyALxtA
	 pp3RCFNPMor9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF58DC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 23:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172030898276.22904.9263725190811466925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5700872002b359fd9047e6de368260b651daae3ee0e4827b1e0f0d533ae534c
Date: Sat, 06 Jul 2024 23:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720308982
