Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD98222565
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763600514; cv=none; b=Li+W5/RXac9WHeoIwtRrBw1F8ZZHPUM+5RHdruvgGgV/cF6SoajYAyu1cWsQfPyvLluYbIXBi2QdUPc4PX60GWZf7/Ugaw1yl8uBOGYkSnNZIJ6LMQ87uWFT3T6M267JidaLoSvQo2mLTRG8lW6DHBG1L7DIX2faUaqA7h/ibI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763600514; c=relaxed/simple;
	bh=7CciCa6DWrSW2mUVP1qG9/+mz1oUa5DRcMEi0B+xr6o=;
	h=To:Subject:From:Message-Id:Date; b=cfBWGEah9CYLZnAa+88wtI+CJ4hLsJkZUJe9mrMQxP3SDxrUlAnGpBEM0qo/e6pX1dVsVEXDzxi5l0FSY7sllidk2OgHzWrtqgg+95nGz49BTMo5rrXX+wwNlh9yCo0N1L/T2Hv/uSgLD3x40JoLeg2STHldub7Rk9QhCxPuQIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofC/UiOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofC/UiOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09D3C116D0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763600513;
	bh=7CciCa6DWrSW2mUVP1qG9/+mz1oUa5DRcMEi0B+xr6o=;
	h=To:Subject:From:Date:From;
	b=ofC/UiOF1HqzPCIEboxB1BbAJ5E5WjoVGLWmquUa/6uOa82Max0WuiL0HaoAGG+XM
	 ZoLj7sfEJSt9hOppNSlw0GABbNHzfsctUDkBcXvBY1rkFiydyDvmkzNNkY7lwKr6os
	 5xTMu3pi0kwxfJw83uBikzUgW6EqYXPVyZHAz9Hq4c2E50OsCvAUWwcET2aerHM/Ci
	 fIvhFhz8SbzwKedeHpl1O+ttclOkr/+rDb6d0yhTMB0qCvylhcPfRlIWij5H5q1iC+
	 k2vvUNQjAwPG99AX6/1STvHNim6nNMJb102U15hZMYmXJPUVupA8iw+vON+3tEdDnv
	 LiP6TdmrbWFvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A061CF649C
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176360051359.8682.6829274671825618573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bdc02c446b9142656c36679a926c18c629c06c8069a138ff8303da8b4d85307
Date: Thu, 20 Nov 2025 01:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763600513
