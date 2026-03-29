Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9B328DC4
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774799094; cv=none; b=TXJVpgJd44BUb+pTcCR77PBgi7XM6B4RaHTSBr76dKrFI1hnDz96wAudfRBryQK9naw2uvKEmKHmVIxFeNpImVx7S/e6quaGYYTi48mu04udf7EP6yqLz+Z0UdQ5chhYLxUgdmD4L3FW9qMVtOtIsikeddxKd5KTiIWoqJn83Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774799094; c=relaxed/simple;
	bh=rZC55KBoGAoIgd/ndCUAin2cDpLMFCoqTOCqNiS1S04=;
	h=To:Subject:From:Message-Id:Date; b=F9m7XS3KP7bQcQbGKznYSGp9xT8umXPtZ4XYJXXxu5wLNf1gTNYxSCTo5SHkuK8ts+zZqK33Aoju+piIjum2+SvgSUj0aBykA5X7yMRTtx9VpNRkxWNDfC8X2B8yJqFxATweXmvMu5ZWE4XgQ+rcovmsCCqoi0DKLF3o6Sk443g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPS/Tq+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPS/Tq+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA39EC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774799093;
	bh=rZC55KBoGAoIgd/ndCUAin2cDpLMFCoqTOCqNiS1S04=;
	h=To:Subject:From:Date:From;
	b=nPS/Tq+iuTYGsT/6I6XNIZpC1SeDN++64mMRArb0Ca9Yy0d3Rx/qE+aodhmyvywcE
	 QSA4A8c3W0/zj6ZiMeLwke4l6J4Icf3uMnbHKQEnEy2ckUJABkVx9ol3s7Laz1Y8H+
	 cIbFryoMhF7gz2KxJc/DKekZsEhBpZwWah0MI1680n9nCof+1+cxX/9qVuEySLb7g7
	 LyLNREnHq8LhRNNJRZ7FkNTE/ixyFtAojRs+7NAdEDkZ5jQJAa+E5Se343RTDAMK8V
	 sBpmDS9DAdcdr/fjVu0XCWmbv6+XeQdqHx8UeO3VQaYObmVLGwAnlpGvAiDPhy5dAy
	 rcsAbbvW2o0RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A30F3D5FB
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177479909358.20383.13995951436937031288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f653a534288bacd6a915ae050efdf1697309d351c0d2ed675e7b6e66d61dac
Date: Sun, 29 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774799093
