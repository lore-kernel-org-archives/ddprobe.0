Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5427F227EBA
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 11:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739447334; cv=none; b=sp+Cz+mNGKwTkElU9ejCvV2pV9eb8jqsH+nyHocWL4POXfOdnqaDpu3aqH+sWAnplJXSv+Fu1zhIy8cZ53IFW+Pn1/3ctmtTvGV1SkFI6pHV0RbLUdhd2NQpAMJaO2MikuVNKSnDTUqsXtQOD6XlhK0ztb9FavWKRTJEsrOI6S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739447334; c=relaxed/simple;
	bh=V9pSDCy4q8MGRmSMbRTO876mxd/en56mhgJl1GoylGg=;
	h=To:Subject:From:Message-Id:Date; b=QeKXoIzkL9WkhP+molv1Qz6RX+ak8EK72xVNizOgT9OQxXY/Vd2iaefbxipbn7QHOEEDau3KxtiSN0pF8eIGSGxqWAQ6dZ3yu33t8+lC9peg9c0CWJI6rUt0aO+ZR9VjRA5iI+jRVzCdYi4voZitFe5ckedk+RxJBN+r0+xYKKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiQ0BoE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiQ0BoE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4ADCC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 11:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739447333;
	bh=V9pSDCy4q8MGRmSMbRTO876mxd/en56mhgJl1GoylGg=;
	h=To:Subject:From:Date:From;
	b=iiQ0BoE4Ks/ugQokQ/ai5qz93RtbSGXXbbPRPHzrN3CXzEHND7JhvkRsiU3sSfrO1
	 49HHWxqLmgxALtlCETC0I2j+tC3Kj1GWgWAXXq+Tb7vQ8AugGJSzlJxSOwdvdeAlL3
	 jlcY+G1WHAaHsmSzAmWq1xu7dJmO0m4pvIrSCZ1FIPFIDzhQx/5qhF0T/ROJORjAcP
	 Z+RD8x75Sh7uDf5PcDTHLSuatmsJwrHD14A748/Jcyivdme2yDdTJ750dpsqYvsO2F
	 2KiXP8ChqcEvmId7y2PHUtLVhmvTx+73XYSI61IyR6ewvZtEF4VuVAVvjmqIxA0KDD
	 2QDK4qfSM1HmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E329C0219D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 11:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173944733362.7417.2749673643095154158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 509acef321c703e4be53a83d88e05cea9fac90bed6cbf06fdede7ac89a0457a1
Date: Thu, 13 Feb 2025 11:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739447333
