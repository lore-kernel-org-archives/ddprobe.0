Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1691826ED59
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786747234; cv=none; b=e1hw4D1/UMW8mtKZNyGBaAyy4XvAponXJCOmDhJRxC+pTAXQKLaXYuLPP1QWEFtwPxTZx0BHVEW8OuCp7IVIEpnNlU1msT2eGBr/+BOjOyLr7WXAKG8nlr1CdeN2eglKCA9aKvk9zoVaePnhb+OH/uEd7YpWt83avxBBMqpFZHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786747234; c=relaxed/simple;
	bh=gb0YCqn3DySceNUJVQFq67WV3/zuJa8YtEIP0Aw/j6g=;
	h=To:Subject:From:Message-Id:Date; b=EZfIkmk/nwBtlmzwJsU3LAKkvqJczTMvK9uxp8m0JdjXSAYJPt7PxNVioi50Ee6gz/lcRsSB993UZkibpe+YfJVUgtO+X0sRA8YNx6mfxyC5+5DhqrHMq0bCx5gU3B/8wizwQW2PquMN6jIK3C5nBKNnDQqyD7ZgbG9/Mk17J3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qy4Ycub0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qy4Ycub0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D101BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786747233;
	bh=gb0YCqn3DySceNUJVQFq67WV3/zuJa8YtEIP0Aw/j6g=;
	h=To:Subject:From:Date:From;
	b=qy4Ycub0rmBlNX3LqoBwVLS6TsONLwl82CPngGNdD+To0nephK6iOnJ99hTLlcBx2
	 WUbxySJZdaRovmaQwG3DEAmBfa7uAjPooKp7JP3kxvL4VzAdlnQATzRlfD+jfvHh2U
	 tPJ+QKwqMnRS/YkMa6tgd+nvGC+VjEcdh48GKNRcqjdqp57j/JpKeSI3l5Mcu7ealV
	 +ADpnRSYe0cz7qhTa8DEoHImQqK+xP9WaynmDymaOnM9uovoeQA5hFyT3DAcQ+hFKF
	 pUA8aMJeuB+IBjc+qmp8BrpzvoLmTDxCLM/ywAVbhWpQNhXCzh05ApSL8Mqf3bVU1e
	 fJ3Mf4OhTsbNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9E1C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178674723368.1353.16049937089329827948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598fcf7eb7b760771d938e45cf2c0b51821d3c888841b60d2613387f05266496
Date: Fri, 14 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786747233
