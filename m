Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D1231195A
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773010494; cv=none; b=Ewyw2O6zkD8s7e2Pe43VEim4udtKoBMxwy5EaYB+dTxaVyGdfkTX6sjMysXX2TPsdtyojBKFQRV6NWmbSTrUwl+Ioiq2otIdNqDbp6Nk+hvXsQp+RtCk/wyDRbV3nhmsBh0hnFjMpOe0w676jvl4fyoWRsJVSSex95YLDlQ5OxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773010494; c=relaxed/simple;
	bh=IqMzuMkK5262Ncq9ziU+gSYPjhvAwTpe7GqDW0LPEIU=;
	h=To:Subject:From:Message-Id:Date; b=g9PKfLIQLjq17ECBcJoFIRm0x1hOrEnh+XrhQ2pjNnq4395RSWBc4rPn/Zhym3HqcmZClPIFPmmvLRlNT/l7SCEZIoiCMqD1Sz9bq7uh89yxXEZcJ08gXCDRYpM8cLV145bj9ogIIwpNpcPpj/kV7ou5XrEFqdQ2T7HxLXvpkmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBwpObhP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBwpObhP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A550EC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773010493;
	bh=IqMzuMkK5262Ncq9ziU+gSYPjhvAwTpe7GqDW0LPEIU=;
	h=To:Subject:From:Date:From;
	b=tBwpObhPswa22sCd3NGYmPvkrY+T0x1H5roVstNotozAuuShqW/ZlmEJOdVLiAwJO
	 yJK6nYXhAR726ft62k42r64Fx2Rze53s2AxI4isp0XQuC2+Mg9uiKRaq2ef1RHCH4Q
	 23xV/nkWc8HpamtKw+0/jW2ELYv+3mhMfFMuoIChRsk/ijHINbTBw4LHeJ1h3ydsHZ
	 Qc3lWP+Xf0byxEHEKqdbWROG9Bs3eK+aFhq1CzCaIpEd9N5ROIy5LrWQmSaoaqlgt2
	 qwkdv0TnIQEWAhIP03gBTjssDUSfygcPEePhtK/pY5obi9nwiFedUCywrV543VzQPc
	 4J7//i+bfd9Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923FBEA852F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177301049358.30246.10571086334189331782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2043350b9a7717c4330ef86a7cddfccb89333d180f1b8e879e6404681dabfb5d
Date: Sun, 08 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773010493
