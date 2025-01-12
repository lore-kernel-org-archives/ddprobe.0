Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34507187FE0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736672154; cv=none; b=MpYIdClpkVfw6LZKeNnEvPyPlwghD94yHWEPVAV41Wyq/u5LyVwmATFbD85sj0EBA1JpclgVzddHteCD8cFnJuRRmrmdBb+iBZaq9eBktbY4boPgGdc9k8qf8JCjqJ1HQUFrvEC9gzDHFOyJwplB0mPutlXx71JIMv+t9io6ACo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736672154; c=relaxed/simple;
	bh=psN+X0y5WaqV9gM3xgv9AjrLIGOtKstb3aVN1ymVAiE=;
	h=To:Subject:From:Message-Id:Date; b=c89tCX/oXZhOv5WlIk2jJjlgGkAZjaZ4Fn2BIzAQhpACfmLNqq19HMyPi7Ls2esqqko59BdoH04emF+FklcM8zuGPeWPKGdjtJliZJeQp59thjLszont2f6JXVu0tjCfDPhbppIrBBvXP2osJu3F2Ss2UDt5Zqdb2C7UHR7rCO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWf3apL3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWf3apL3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6212C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736672153;
	bh=psN+X0y5WaqV9gM3xgv9AjrLIGOtKstb3aVN1ymVAiE=;
	h=To:Subject:From:Date:From;
	b=dWf3apL3GF2WJz7A99niSa1zSHZiXj54wx0c5n9XYlOkplC6XNha+wqCCxsGISXEh
	 H2wy3IzNBTzQm518I534VmxabLJsxA2BJglZXR5QfcK+X+Q+fHeH8gr0WFY+3ZgdhG
	 OIvNGHesbIT9rfzGOBOPpJC/+Qiplq2zFd/2i2T4q4w0GllT9+g04nNEmOrHwPv/0P
	 20SNjdt3z43//m7hflL3CklhovwikRAgLI/gGsDfas1OE0lQwTJJqpXJaNG5EtWiX7
	 nmnRuLMbVN7JMh/yl3PKWkvrkaKAvj0HbhOFg9rynm56e9SDeRyRYX4ENwzQSMIydC
	 D+p1aOF0XsnsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957A6E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173667215360.15853.16666259189785355483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6acdcb3ce3d5542365eff05ed5927be132a1e88ae952db385b127f6f88e562c1
Date: Sun, 12 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736672153
