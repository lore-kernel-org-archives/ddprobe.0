Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6281F8F08
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736506554; cv=none; b=FpxDwnfEFogFHvOb/3n8/Q+Cm+Ze5K5009Q/OI2wbjqIsXFIDLgIJudaS3DUIfZ8skXxdNsVkEfuH5Ox5LTEYnbmx9/uUL8BO2DUbZ6fQET290GQ8G3dhfmwOocouMps8Y+JYZnSz8D1/WtgItrZaLzhsCIBdYFORKgtseYLfJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736506554; c=relaxed/simple;
	bh=u11yLQbNy8I/rFkXQnct6ATbyxF4co+bfXDCOppAhkU=;
	h=To:Subject:From:Message-Id:Date; b=ZzQdvokjGUM/6f1M//EwuluDiHYu3oVNQbyboqsiZzk1xHr3zP4z8iyFepInbCtMlH5bKkyrbN0Q5QEGHpqo/zbDL3/6S7KbRLhke3//bYilrF4vdSuMMVM22vJ/uF1Wp6SisRXU2lOjOhIpvBIq/uGEG3HDV/y9rL+RFy0cfhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6LOtQbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6LOtQbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3A3C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736506553;
	bh=u11yLQbNy8I/rFkXQnct6ATbyxF4co+bfXDCOppAhkU=;
	h=To:Subject:From:Date:From;
	b=Q6LOtQbcRxV6nDW41dOqS0i0wQVODz5nIJ/UxvHWRszXZCc0IJVSdJBb8IE6bl2au
	 jijvW1Sww0lm11vaHWsn0nTSbz6UPntYKyiflI4eLhjVWVUl5NRsFmSF2XKJ42l9J8
	 jCbuLf4EJliRneFmLLMnnjSRLbsufc43+tsFxOdyerqae+5sJ/S7nBnq5d5OuhOrrS
	 28k8di0tQILqKZID87pAh8cKCTlGzv9trfBPcQ0sKH3BenVt1mehgVLtqxFWYjPuN8
	 VbFPciJBlNMXwkqlVOysf+JNs+uoftRzzpamiwCVHzAJK2Wa9gxu+74lLOGLZALak6
	 PtTMak85PuQ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F104E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173650655357.28216.1804369809711056104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ed90992c792d08fad25b1e20b5987893f37b13b5c8c0b943a093959ed37c03
Date: Fri, 10 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736506553
