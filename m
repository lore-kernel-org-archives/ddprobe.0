Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3072E1E511
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728752754; cv=none; b=C6+1wviGpvBGUAkFeDQI2PW1EuPDOwLPxnXmXdXiJ5iZxYahzIJV+buocoHqDsPv1wIDWdKeQHYQ5vmg1mZ1G7f0zJOEL5Dg1tuWQp+Cl+v6BC17f3xn/76/DtNaHjSHHkiSSqyFXeN05cqqPTQrvBy+h9w6nsdLOaC3Fv57ywg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728752754; c=relaxed/simple;
	bh=lFHKHGLgXP2QlDpLRONEMrJimwSwGdYRJlkBAWNW1Tg=;
	h=To:Subject:From:Message-Id:Date; b=Y9hieZ0J7UKcwALdtDqFoIaPkuC4VLhZLwIGyVnc32T45/uDFlbZRntYlWEnhFEbY5tT9W+6EXeJ0BB2iHrwT+GfNwYlZyTB87Bgt3LH38ZoCSiI7OJI3uhkeG9BIow1ZxN92HM7wuh6B4Y/GrLl9QNis47bi5qcFypefLKsdwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZCuXrCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZCuXrCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F25C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728752753;
	bh=lFHKHGLgXP2QlDpLRONEMrJimwSwGdYRJlkBAWNW1Tg=;
	h=To:Subject:From:Date:From;
	b=SZCuXrCoejtA3eppWq6duWKNvQkL2YCoClRUrzW63AiVt9HdYL3cFZcdVqyUSYZvw
	 C2eLSHXtnZmnFMRuls1jDJCxqHfHpDBVEn/KBs4P+GIEysRNzvCF+iN+fRVmyl7Co8
	 aDatGQkc5d0AVVcYXcC/Lm/Hzf+oYrM6qN/yNiWzIk6a6tpYutK7S3q7Rf8prIAp2O
	 WqgrGDvI6UezqZL2KZfXlePEv3hGPUk7GsIRBpSWQn8z790pRyyrTydVKPBOJVCwRO
	 1fgK+V7X0wnllpj6dmOW1eK9w28AO3lw/rTv/9IQ1/bQguqah56MLhgHIKFEBoa3OJ
	 7ZXX1RKFAXV7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3802CF2570
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172875275362.26343.16953930468057421025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26ad49910e1d3219b495623f9568f88df4d406bc9e1bf466a9ece39443606db
Date: Sat, 12 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728752753
