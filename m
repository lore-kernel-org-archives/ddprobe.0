Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4CE185955
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766046834; cv=none; b=nIHFJxNSUYnfwOwt9ISROQCiv2Y83nQ4RDav39RVdSqal6Ad4WYjCyVJ3MTuvKRr0flcWV0A7cYnYuKRrPMMGqe34IG9Br7dfbWJKtloeNRr173aaIAIols8PfW7vCQPoQzPL0ElKW7j3t5bQVuMVqhjxzUgS49J/1ynWWVVoio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766046834; c=relaxed/simple;
	bh=SOeVPaE+/6UjhEYO5sf2KztBgZ7U7bsyeb7edqENvpY=;
	h=To:Subject:From:Message-Id:Date; b=Us1h9GBJkCg3y8zVgQnJBNDNdVFpqqADbv3F7vmekxiEXD+ctCOQyRBT+pL3bXExGVd8ATkytTKYC3ZKUzxP3suR6Vq1IBBCwwNRgxfeniQeK3o3y6ZhNcSdCrnanKe4OrjmDknYr9EnR8jQ100JC8EnhFcjjLm9Wzxwyu8X4Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7H/imsy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7H/imsy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7F2C113D0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766046833;
	bh=SOeVPaE+/6UjhEYO5sf2KztBgZ7U7bsyeb7edqENvpY=;
	h=To:Subject:From:Date:From;
	b=s7H/imsyvyjVmcRr3sQZX1oc25AZkgYNsqOoBawPALDpQv/+oD06Q2RbC2/5TpRrT
	 hMtm3Jo4Gqb/9NF40qeu6CAXALXnbgWfzS6rvB4AUZXv3ULE6VPvvLHZCtyh148zt2
	 89xPsemIRhEHypQHMSFEJluygDRchu7yeCQZ+/xEZIQAQP5iqt8mfeBAR4HMkypEf3
	 qGfiCXustdQyzL4UBH+yRQswqyOrxrEaXDB0GTq2kI0GGKOz8eccQ4ExEBda+MNavK
	 MxuK28NLUbuhH5RdFtBbDFKo5vJC5WWxcIgIZLUlHYi1vaH2U8DOWk+6tStCXCq6mb
	 nAcXVdq3OuwHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9133CD68BF0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176604683358.18215.9951949307960193523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee53be5789535fa2ffb13a816c1356720e2bb9eb51ce18b85ef7081bfe8deb3c
Date: Thu, 18 Dec 2025 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766046833
