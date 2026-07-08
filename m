Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5690243710F
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783529914; cv=none; b=q87wJV+aZ8b4ZRKgm2wlAzxIumsA2WJtPdEHKZlM/aHI/EP/m6OI75qLO+HsQF7Rqn2QaJE25dbctpxA05vSao99T1Z6TagwPvTGE3GB94+bAnKGKdt7PdZGn1BBzks8vtUDBkRRK/ie5RfgDcDf2XcZhVbAZmBuvH+vtdAmIyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783529914; c=relaxed/simple;
	bh=iiAnrloY5FLIIUlADV4JkOkQXzBdtxX4WcJHLCmXcU0=;
	h=To:Subject:From:Message-Id:Date; b=ELPArrNn9llRXNujd9OWBrdLbk4Tx9tkD/ZCw7Lj/BSa4Vb9Zg5DAewMdz9UtYCTyo0COerEluJoK9hBNZhiXL0owsotP5baEp16ciARV1S3ggv/oNo3YunzxHyIBeiADYSPaCXSbv2coOWIIBpZi1tMUIbvzHr4T0UzHHPgXP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enAwwBuc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enAwwBuc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B20C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783529913;
	bh=iiAnrloY5FLIIUlADV4JkOkQXzBdtxX4WcJHLCmXcU0=;
	h=To:Subject:From:Date:From;
	b=enAwwBucrXAAdSi4Wwj004V14Go9CSqJ1al7ujvCZk1vQV14ApK8+7vbzux+nvVau
	 MjIto5+SNQ6uK/Nb4k2mcRb70loUlrn9kPumBIm2FaSEs832lygHeQV2iNWGbmOm9r
	 FfFUIDlUGzdCMNWvV+rx3Q6qnR1CwpJQq/H83KOSSp1a/FgJzArhSadc7YBnMXDv21
	 Ypg9NjoQIThow5lDdVKHjgm/D1FlPb09/HYHOMJNip/yIMLxmCEbWqxVbmhdbagr65
	 9u6/HbY6KQHQYEy2JN6LH2JWkZiTWH34nlc1uYGPGLZ8E7j9Swv8hYj3IPMX26ILEL
	 0pFTcg3r7MhnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8437C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178352991368.22297.12788752713606627938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32dfeb3fc0d1cbae9ea05ea092960f590ec5083072dc84e13dbf89a251c79dcd
Date: Wed, 08 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783529913
