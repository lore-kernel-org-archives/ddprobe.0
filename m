Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E961337157
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709551697; cv=none; b=Sbhg3BtQWf9HKG3lhKByBXjvSoib3Y40F+SG7VdbFterMlyZ7VwPS2m4IkckexsYH6g66urBzSrk+3GH+GvZqo8Jlx7mMyaEP2cxMQsimXqolkeswlYWuz8t54W1H0tTLcZ4ZGo1wJ+nqXRFu/bTZyR7n1LV3a7NpfjleDYU+Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709551697; c=relaxed/simple;
	bh=SP0Urwhz2oykW3K+msw/9UOx+66oidH/C30aep4Q5uk=;
	h=To:Subject:From:Message-Id:Date; b=uT9DXywvVezQrnj02qZm1U9sZzM/EyTZ0u7/pSMBeZyCHkBt6Iy3v+k2Vh87xYAF70qbIagweH3+R+FeVPDSWzypgi5OdKpgubhyKFNqqkyaL4IV/HgdmRYHg8g15yTimlB+EeVWNvW41LJaB3J4zi078R6d24GVr2XSBXYPzzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFHPHZS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFHPHZS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85D56C433F1
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709551696;
	bh=SP0Urwhz2oykW3K+msw/9UOx+66oidH/C30aep4Q5uk=;
	h=To:Subject:From:Date:From;
	b=cFHPHZS1tC1bcnu3CcH/OgXZNaKF6P+2iNS/8+TdvyVXW6CsgycMEefPkKjPSUav1
	 sTA8gbHzzr/fuO4pgJFfywGyQDEDj1Gs13jGXNe51InHZi1DY7/JUgjxGaYnLWo60i
	 IKZ0pHPPZldquVaa1PFPHUtMaFRR+xBKsSehh96gQgIOEUKW3L5BRH3pPMt5GPmCDH
	 CGPhycDSbGG10Z3/YKlK9Asr3ZprvC6xIElU26q8bdsZ6TQ9iJw6+arEhGYn7IbFn4
	 nDRhNIViwwsoIXyTWfwDBwtM0tZ3iJTq8hItT/rdsVRzBHv5wy+HiKT2AbmkBsvMSw
	 QXpHtefsmQ1JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68918C48BF6
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170955169641.22947.16519906171807500302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a13a51211b414461af71f0a90fcfdd297dd86659b96f790e6ebbf21ae76f0f50
Date: Mon, 04 Mar 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709551696
