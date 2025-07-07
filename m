Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E801E51EF
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751894394; cv=none; b=k50JeN5qYsE07Sfn1jBK2vPgeYPNzhh4cqZcZ1tZ67tZ/3Y0Aq52ZQYz8noxivl14tCUuvXDEKNutrxxkvfMxM2fe+XcbnFJhbb3VaGwAglSF7cNSSejx0NNuUloU4fyWP+SMWZTNANAhJZV7bv15fvYyyMUlj1Ok3k4+d6r38M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751894394; c=relaxed/simple;
	bh=oN2DWtqp65/9mbsuGX9BrqHMedpecTXsdyR4QHPwIjM=;
	h=To:Subject:From:Message-Id:Date; b=SgFLHHqR5xxkc6ExPamHWYzyEJ0V4J4IYr7nZlM/UYLoArAr9ptSWqdke2ekYrHpbdU6Zr43IbfFjkhj8SzhIAWYgXpjzwFGybQ4EW0Pn0ZH/A/+qEUMQYx9NPwtReC8CDGV3KUvnrWBe5qXq8RTTiSJx7gU5C4rVtvZrnjg4H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEWwaABy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEWwaABy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A255DC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751894393;
	bh=oN2DWtqp65/9mbsuGX9BrqHMedpecTXsdyR4QHPwIjM=;
	h=To:Subject:From:Date:From;
	b=pEWwaAByB9Y6F0evtsOnDYsEVbBs/gXPeQsO+sa5yuaXEwbVXQ3lOQHd5HcaOOSLD
	 XlfvCypV3NBUZhpibKpqLFT91aNErKuphFKHrcw0CnOqKuAH2tJjjZ6YZwpaDyslzB
	 1rhyRyiFY+8Qy3tniToxU3IUTXd1iP6mYnqulo0cH5gosBb3zdAFhZBh5o8Ak/mCcw
	 Cp/XQt7bbALT3o6mg/L4SONeOgvr3pQqTAGztcSrZsKQMNWac2lncAhezQdzIFuRhB
	 mFpCHvXbYJbnxguDFeQpSHxJstyAPLsIDC75RM9XxvEGYyj5v0TO7K+TVRlfwNqi8i
	 Rp6eCr+r1XYuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F2C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175189439357.25214.17679394052712446495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42d197a0b07e12b98ed87d5bb77b1fc6698ecb23e56bcfb319bad3c5ef1401f
Date: Mon, 07 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751894393
