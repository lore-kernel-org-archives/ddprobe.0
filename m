Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21151A47
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751333394; cv=none; b=szWua5yrjhhW8ZS8imB3E15KBZncRZ9FwYKcc5Fin8T9fgdmw5c0paQMknqtWVLNbcH8r0zT7evwLThY73AdabLuBdPQy1hBt43POeGx2DpDNfI9KcYnAmshFOrLuzOdoac7pSbnpL9jaKuFCCv25Ds7hmsysxmYC2r7RFp1ibo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751333394; c=relaxed/simple;
	bh=o/lg5plvGbdhKgIgn47hm8DSTZgybHY7EVk+xM5grpo=;
	h=To:Subject:From:Message-Id:Date; b=Y3pO4KphOBjJSffTopXbuFgcfrQ4mdGAURlXkDlo+9gel+6DIj91+qj1dadQykMRLx2uVa2J5YaYn1G/XUtqQMCSBoWjnQP62VghS/owmCtZ5WOE+4EZRen7+hMQGbZvf8LIQpdVYhj1OH8S1OYUzj43IG0aeaAcJsCAuhdWMjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DyfDvQUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DyfDvQUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C5DC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751333393;
	bh=o/lg5plvGbdhKgIgn47hm8DSTZgybHY7EVk+xM5grpo=;
	h=To:Subject:From:Date:From;
	b=DyfDvQUiB2dJw1gNcJipmcLeRUKiqSUBw7T08H76H2PXXsgtfD5PmG0mPapoVKo+h
	 LhP47WThEDy5RUNwqGmQP4+9LmeUM1Oxn2o86Yxm7k2YvcBYtr0Cnb8mUzhELKihJq
	 fo82U39T+CAJNSM+EoTud3V+7kqorFs8F6RwayzQNxPpb5dea9Kfqa6M7m9O9kezEF
	 MuIC6a4RR2AXOtBB0+Qt6lBJz/+9T5hZGL6HLp1dBuzPylvYHJrKJA66gT58uk2t0d
	 eMGyIijCuvWOtkA2BghtIDFsNmSAwOGvkT/8yB7zD6ZorYJnNX5K7GeRlpoBhozgPl
	 ZTFYa4T99nLVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C43C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175133339358.10808.16421130122803876295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49dcfac7c5e043906f77d35182c72e8fb20c4042b223596c4b0665f6d6b326f8
Date: Tue, 01 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751333393
