Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18130523A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764130374; cv=none; b=gbNixo9bby5KkBRJ9IZrBb+0uaFjJdjuNdSmyT43zGlD7FSGyUSXWbFr60cVwPQiFbvTqORTG9FIYLS2pSu5Mva7ES17wIUA5Eex+rtrMzkB8bYgRndMsz41/8WPMsXLDBk+k7+ERHL3OAvZWl4dzIzBm5sxAW18jlVHVjK57Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764130374; c=relaxed/simple;
	bh=CACzpY5oErX+lWm0iAemhVAi8mw3Ez6OD9MDr+QUaRI=;
	h=To:Subject:From:Message-Id:Date; b=VKCCOlPm4QOBl8AvAYWwdNsnvvLDbUKbUPgjeVgmYCISEVrcWEJyWIyi/tIhIFO698UHTw79E+l45hnG8jKVfqPi7L1TN36FbbeAXTTe2o35L00Q1bU8xcMYXmg5pwfgAFhQgROiwnJc7ox9PxayW11KWE0C5DojDN4Wdpm/Ovc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYScpe8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYScpe8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA156C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764130373;
	bh=CACzpY5oErX+lWm0iAemhVAi8mw3Ez6OD9MDr+QUaRI=;
	h=To:Subject:From:Date:From;
	b=mYScpe8gCaG81BHX6TcQTF8o2SZCDJVetL/yHKQJ8ITDckSvcYnc/ScV4UKNFkszc
	 RXmNQnPbUbhA2m59e7ioYxCCSRSZ0cbpf5YblmzSYvz6fvBMy8/8HKAYSvGMacZ1Wz
	 J9yD2YI7Pddq9H3hJgMRClsMo8HyxdLwe75XrWBT1pdj1xMDorA4P+zZCUicnr5bBH
	 7xta6cNQPCKklY30ZhXip8O9a6a0lX496mAHoFvBxztGvXAMyLmGyKcp2Nquyu1EGn
	 a9FGpCtTsJzDbz36QDkNIffKLRUn/tlMUEDLaNO6Ng0VL136jfwGxxxR9/XXwd1s3S
	 videsmf1jyA4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DE3D10376
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176413037359.29132.1732934135239522871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b07cd22dbf1060747b19b25c8f4ee5d1e4471eca8151ad7113333d575ebfe72
Date: Wed, 26 Nov 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764130373
