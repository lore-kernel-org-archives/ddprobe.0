Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4317C185B60
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726146354; cv=none; b=evYE2fU2wDuewh6gjZkUilWCyfof4dvFvulBDNPoXTScvLT4GpYgvNwJPm9k7HPf09oF3FOloZjLUapmCGEDxJFHIbt0OYviMxtyS/2ydr9zVDE6Uboq5VZtTwuzliueC9nCg/CIYsdOCpXDKpoLBPUTdoJ9PRYcfPMup1YGi1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726146354; c=relaxed/simple;
	bh=r3ApM1vu7eeV/nydWRo7d6TXkN2HPcv9HlwMdN0nWnc=;
	h=To:Subject:From:Message-Id:Date; b=lkouqE1Edpes/lWrGrvonAuqpXzvEvp9470Q1gSeRuOUVd5af6//I3Po9iVZUYUdtr/9cUITtJ7+CVqMYGxBq1udbK8sr8dxzWeDTcVw2BU5zYBpdrWy6wzP2AF9ollEipy7pHoCCN2EZ/4gCksziH8ftasw3kZc3/LWyYeIyfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vtr6cPmQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vtr6cPmQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB41EC4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726146353;
	bh=r3ApM1vu7eeV/nydWRo7d6TXkN2HPcv9HlwMdN0nWnc=;
	h=To:Subject:From:Date:From;
	b=Vtr6cPmQnFMc8IUio5KT1g3LezVclV3xSfGXF9KOrGzutnzg1WQY6T7J5w5IV6AxH
	 elEhY5LvGwhIWuXBeY+w7R/O6R5J2YlWdOfzRs6iXH/QAkXPIwBxPtTPJp+TwKgIPS
	 C5urU+T82VgXdmuYWRAmFX/ZU1M5CP+7dDaqmG6O7tj/kCqPjsWsj7MFj/nP7ry30I
	 uSxqOPzB2X64LSp7fhDc8bPO5YnSL4h+KY7oO3i3wYz5vzSpVkFkKt6+et5Z4urUH1
	 xqGD2d4KSdJyzUGjlVa3ZYhQRRDY0e08K4l/l1gWk2jmmm1pWJFZfLKTzaNDYMBLm2
	 w20xq0zLlB8Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973D8EED602
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172614635360.29421.16571063846012780820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5514af7677a6f1341acef94117e7d32bab3a6cd1e755e197123cd437549ffba3
Date: Thu, 12 Sep 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726146353
