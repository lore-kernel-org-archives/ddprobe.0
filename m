Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344BC20328
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747911595; cv=none; b=kMkhYNfcJyHeFwOBpIfLn3Q7NTtmMK1xuz1M7IVsQ9WoG5kc4RpFsRIjdDNp+2NejRhlsZmxILrgrbOzT/yTfh+V8VjkrSkmd0FZ99aV3dUDyyZDLztiX4ZFyTFeomG4mlIbkc7ZQOLly7WxbAaW+Kw3Bavabi4oAeyJWM9xHrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747911595; c=relaxed/simple;
	bh=wevC8XQNRGrDXH3eQaWrShj9Vdo/C49Abyq/bsryIOU=;
	h=To:Subject:From:Message-Id:Date; b=dagTum6zfKGydL7QbAeVdSm7f4yXFRLbdBC8fe//V4HurTs77zelPTmyFwFr0+QW0z/9s/ogPuGTsUhp2gxBivT6qcK1Tbjc4H6B8htxCR7mf0CMKchTDdEyWQyZTLWwIhf+/1dgy4rf9Z/oiklNt2ZsbwPgxtucchQvnCm3I9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWAiE9bi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWAiE9bi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB31C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747911593;
	bh=wevC8XQNRGrDXH3eQaWrShj9Vdo/C49Abyq/bsryIOU=;
	h=To:Subject:From:Date:From;
	b=QWAiE9biJpvvs7sZ829dunTWpvSEIOizLa1WXiyyktgidxZV5Gb+FrB2c49Rjssio
	 qdudzbEhAajsvSABvzXV4luuVIaZrNwkFPG7xl4b30KgZlswNUq4Ts8iROVQM8V/YN
	 LLJDT8LgxBaJeb8AH8a7BklxTZlxYIARJnOoPfgmOduT+6cwivTKZGEySKKfzfq1/h
	 moYDwnIqHAFzzgsUlbV/R1qPn93XV2UA91xVVN2REPqLOhmysxDORCiLmKeY4JNN2b
	 k8Wh079TpafeExakGwbluzK1Ix6B/7HnXNk784JlmEdPqgDO+RX1+1d09VL+a+qgKY
	 ue5TLawuCqDQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFA4C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174791159357.756.9763170018740927978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a7313d148994686eaee36546ec85fd3967be7508691d20a87154b3ddd81e67
Date: Thu, 22 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747911593
