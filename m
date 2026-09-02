Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F4333BBCF
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788334834; cv=none; b=J1+pc0B8zvxl/l3t5qe7q32GAjwmEoxfELabxwKUwsd+pK+k5hoRGeSMQPQMTkyqoqnInExMflRYRPrWRZKy4A/mDQUplz2fuvUeU8ci2+bZCULf/4nAD08pGxRUJoffYi915JVF27jvoFNt52PThTY5WAIPBgs9ZI41KppNcsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788334834; c=relaxed/simple;
	bh=FG9JnkJGJ2pieFcusm75AM63rFPueXiBp2zK2v9QshA=;
	h=To:Subject:From:Message-Id:Date; b=ZjWCTsyPIwPgjz4/z3CA6j6EflRU7SLpJmmsXRMDxmMd/XjbvRMGBD3VI70FYAMvIt+nhRlquI9WQd5SAMpVDIeB5sG0nWuR2aYL7821XCrgqAwG/Ydaq5PxAlGpk/uiF2sP072mfNRPKH+ijNX0yVR9ByQNavzX8Bf+2V4UIio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTZiYaQu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTZiYaQu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD261C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788334833;
	bh=FG9JnkJGJ2pieFcusm75AM63rFPueXiBp2zK2v9QshA=;
	h=To:Subject:From:Date:From;
	b=DTZiYaQun0FVeF4NALBcbvtYA0U8MUGrRVotHrUAC9ExImZgcChzrs1d6Q4rVY7fk
	 fuYO7Pb52Ap0wVo8+sWgw+T9yBddgGC/e9hHAHdUuU9KaU/o9mktdV/v3LeLpjCjFT
	 cEZyQVfVb40u7+AV8VFMDrQ+g5nwNdVguZXRoUYlAu8PAXhCi7grd+IdYgWWeDmK8+
	 GhOew9tSBA9Clc47huWOTV1weiSgvtmEDk8zqJgoYLODBZm73g4J0VpGrYlhxVLTQq
	 SKSpHB+fiOHdRMWNTotc2Sa41k1P+qlz4AZjcafQqO5wENIHxpqK/1ikROdQN1JE5a
	 Ysy0CA4oKh2XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB06CC61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178833483369.15021.11785242594000558345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 291a870d9ec2af9be04dbb28bdea8cccdc8ef0050fe28c483a231ae3c9480ec0
Date: Wed, 02 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788334833
