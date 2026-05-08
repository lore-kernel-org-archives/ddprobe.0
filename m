Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C74F348477
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778231854; cv=none; b=OQY1t5mXPy/kIT/tzfW3hsw6/f5ViwQW5ZshWV/5PxBRXw4PVyCRTzi2PzBOo8IuV9SBZdGC1DhfpFNA1yauU4fkTRBgbZ2SnIPNlrIrCD23n22dIXFaAKZnLrSl0syzMbPMJZKpVg1PaVV6IpephGUE70NOdfGUDUBMfIeVazs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778231854; c=relaxed/simple;
	bh=ZGXEqSBK3Aq3K+rXFX83q3Jcc1jC7fkGQNPqv9cufCE=;
	h=To:Subject:From:Message-Id:Date; b=o4m2hp5av81eDSwGY55qWmHEXbTzu4pPe8kcEGQFuh+8Jjb5TdUhseZ5ViCUq4euMEsXUSpTMEYH1M1r0bMpBTz8/TWLt+vGk6HqwzjeKHVHKnFpJk31kl5udh2lqkZg+7voIxIqBNXdfF5eT0z5G+P7xd4AwCCla5IjguAW6dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zg/2Vsx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zg/2Vsx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCDBC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778231853;
	bh=ZGXEqSBK3Aq3K+rXFX83q3Jcc1jC7fkGQNPqv9cufCE=;
	h=To:Subject:From:Date:From;
	b=Zg/2Vsx85QDt/YHOD6oDyVMS5Z9sfmaOAj8nQDYDQzi/4QO+GtAeHWVcJhyRX0HlX
	 t/iz5apka+q6fhGtwzozqJt7pNS7slEMxfJ/d8oM8paqKTg+1l4bCgI7oM4pcSq/k0
	 7jdIP3oTv/q1FXujn+4h9zThrh8Igoylh27BIcO4NrhClb2fR8xa75fl6OCcxAqPSj
	 0ndg+7aiGwEJYE/GDWbrbOQvSgD/9I5kIcMnTJkD+8JI9AOy/+J8VJmAdWFKam9src
	 iIYB7KtYrVWhYs7IEtjNOhiYKZORr078SQd2LL4nX9QWSBp5VcumvESDa7c6slHcnO
	 nIY2sk2hVObhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA07CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177823185368.11018.12652707376145806815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30411c7c28c6c756060c0ffaa6d1b49bc5d1fce583e0c902c33faa0714e12469
Date: Fri, 08 May 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778231853
