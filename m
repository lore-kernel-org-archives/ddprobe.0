Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5265730568E
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784276314; cv=none; b=pw1IZbTv6fd/qaNqkEqIy3jneWuhhWeoF01fpjLfJhHnWTPEF+8vqe4ajIQ8BWdI3yEu2UZt8aqL1DlN3Z9+t7ikJObADkUlcSUm+/3x+r4iVXU92dwkzUkYuy+atTAjdTPZt62u8gpYAF3K4doI43tB3J7n6lQzCSo9w36L4OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784276314; c=relaxed/simple;
	bh=Y3imW/u/whBg7//JEtL5zYxc0RX9UklFpTIlxPSp7k0=;
	h=To:Subject:From:Message-Id:Date; b=Ng7i7p/wK23HKVmjtOifP0LPtn/zn3LvVLLr7rpkwH4NR1+LT/k46cabwFZSplyT0sSjI/5wklH+nDtqHPEsq9jNZYOpxYFkb4kXUFEuPUVaNSANtp0e80IFSQlO/CdvB1efVCLkjhiRrJkdIdGPfR+br8iPqlFOtmwttPzcLDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sdq4QFCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sdq4QFCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE33DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784276313;
	bh=Y3imW/u/whBg7//JEtL5zYxc0RX9UklFpTIlxPSp7k0=;
	h=To:Subject:From:Date:From;
	b=Sdq4QFCo/4U7Pkx7vCz4NwFQVhEpUqJAR9vBnXpdslPS5SXVAUw105WbgqS131Fgh
	 atN6UFUl/tS2m8de4ZuTimYkvAbh7+WnNITLBPyakv9eCppSRqQyZntezLffnUwX2H
	 dHtXZG6kKTI2lb/LwomocO50s6yysbrjxr7ZTJfU+fOK8vM+yDKO4OZvRiQhMk70WY
	 86Y2slMy79DpmM6fsrAv+4RFwp+2QT0VwSP2QfzAFzHU+eX7foUUeyPI75KV8SlL0s
	 XmFfXCZAllonczQibZV1NH5ik+PEcfYeqSF6o15JMCTt/YVCWbcO/CAyrr3BJ/nr4T
	 /EnbvGlb4BNig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8866C44514
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178427631368.3839.8277362973928391290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf33f7754be49360f1fc569b9534021c09475f06b0988a4fc36e8d1e0f0a40f2
Date: Fri, 17 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784276313
