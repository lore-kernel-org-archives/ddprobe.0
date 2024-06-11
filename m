Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0EC803
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718065103; cv=none; b=DGtjXZptgkHLq9l8pBEynGH6X3FRJVBMHv2Ucoy/Cqq+u6k5sm2FUolFiLEGEBxEabOn6xmgASc0c5TKynS2cNSzn1SCYid5I0Gg7hfVPFHyAQE2dt+e8PFgHIs0+uCfoUVo1+G9UrOEW9bBs3eLkOaGB4avmB6WyD/dEvSXavc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718065103; c=relaxed/simple;
	bh=JMpM2Tc6GimxWxbTP5yeaqtixLI6r275pXe1F/+/4X4=;
	h=To:Subject:From:Message-Id:Date; b=eGwXFUgzIGQMgKSgHFoVIHXLGEHG2X9WTmFKjImnvlBs0BC8N4EEW2obXczKBoISuj5YLfkx2gCd/rIQ11M6KztsYMSDqVXQWu/05mZASShqxqHXsiuvJvMmhNdxzD3mgl4w+LVFp4c823o2Ne6dsT2VWdXXlQ9FTyXrRruhIOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bdbt27hZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bdbt27hZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C7AC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718065102;
	bh=JMpM2Tc6GimxWxbTP5yeaqtixLI6r275pXe1F/+/4X4=;
	h=To:Subject:From:Date:From;
	b=Bdbt27hZTpb1V1n40n3QcowWKQYMi1ldjxndaneBskwr2zMxMzaI7suOu4kwI1ASb
	 P/eMbIJZA65NN8dILOMTK8DymR2tKFdF6LPmx/YyRYtRpEtvg9gzbyoPBBdQLFBj23
	 qL64R1txAJXJ7vdAFPG6syH6TjZSA6fg9UnVNRhs8+orx1gStdKZ3U2ZMIQjKX4FBd
	 pbsJG3/3pvCo2oiRm89efzOBe59IwnCraNEOzp7u4/ZQfSc3TmBe1XtQgJbCrUKCxk
	 tqrwAIVKPU545EU4TDJiDiqfjIuQ7X81a0bfurJQxmEPxLHWmrb+aaOH8U4dUOYpUc
	 yYF3Jgn3YvRXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5C5C27C55
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171806510276.29462.7600957535689124313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090750425c9998f997b5df1ca854fef49359e0effea532440dcfa779ef547a96
Date: Tue, 11 Jun 2024 00:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718065102
