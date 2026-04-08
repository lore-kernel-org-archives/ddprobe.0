Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C78E9463
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775613934; cv=none; b=riG23oyQv4P2ZCCeENfmEziIjucyg1nuHo8k7PABsAxRj+ui1TI7Bn4wAFnYfb3xhvSVCth0935v+mv9UR9UI4DEKEYgdUAc7ad7C6GogDWgdtFL4OxJcbcK/3HXCKLLquvleeM71MYunSplZlx5MKV6B8mwYAXjLrbQFJBLkeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775613934; c=relaxed/simple;
	bh=q5HSJXI/JpTHRY5vhTyI/SAbvO5jFvO4U3JAW7lo2LM=;
	h=To:Subject:From:Message-Id:Date; b=hmPPbYumEraQPsgTZiW2GO6d05GlmaJOJQLowyHM3mP/cjbvfdqgJUWl6q8H9/sCpgs39vDSjySaIOzaBvX1gPnmaBk64EVw7n0BsfLqCpjlm8S00SIY5QaZ8H+cLj9yLNDj15KPAYS/dVpVFLyMJtz1flKYWseiSOCegomRuus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohEGgnjo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohEGgnjo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01CDBC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775613934;
	bh=q5HSJXI/JpTHRY5vhTyI/SAbvO5jFvO4U3JAW7lo2LM=;
	h=To:Subject:From:Date:From;
	b=ohEGgnjoMIeECLTdBWntpZvvCBJ/fA75O59gDv2lcOvfYCQJmn2XZPqDMQUZBQfCY
	 6pMonRZd7NxX4Pljxk6OR3aqyPybJPnW2sApwKOgw1JD84vtZiVo0yp+pUMEKDY1LI
	 x8Qdqx33jfCUiYsX8RfiVlKGOpgKHQMzSHoRJIGBRLnR+c33kSclky8Coy7oHJIyEe
	 /5agfdydr1mdfoHBHpfwdRZVfqi5WakUdDCyYIFz72Cv50HBFJeXHogM501BQMREwy
	 QiIZM+LSnBHQbK8yCylZf+r9AIkdKPqbNG2RSUedaXHBPyZuhUlamxvsFQ9Qh3dhvc
	 gWERDAoKB+8WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA182EDB7D0
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177561393378.18055.996184357396881090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67a2daaf3177cec93cc3519203bd93e59b4fcbb42c89a6a7853ab20ba2b7d501
Date: Wed, 08 Apr 2026 02:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775613933
