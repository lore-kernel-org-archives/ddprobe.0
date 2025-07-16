Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD9623FC42
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752662394; cv=none; b=Lotz5aK4O3iml3T84mjyTBTLW9TwHfvutNjgwkQi6vx17qykLDsAtFaPUcle3i6J3MjPPTkmYlSWA3N9+Bqwqz7gar3WlUucLLsFdLNE/JVKMgJohvTOQDCqyjmUq8KFncKFpX+mZibj11JmmwCM32dZ5jy2zpACEKrGYhDCYPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752662394; c=relaxed/simple;
	bh=yS9Q+rD+4MAEDcrhM15WE4hh4OZpmS0LwgQZ17Fbbp4=;
	h=To:Subject:From:Message-Id:Date; b=SgbBX2QEqXrreDDRE3LMzsiO792643FfTKDxTiUVAP+zvax3xOLC3WnYm3YtdWFdhqvAi49ej2F94giA96yjKcsleYMq1s+uTfG7oPL8soqMPS0nrPEySDDNSOc+1u+kl9R/qHRlDO1PQbkVpCUQNDcDFxGQ99WSOCYgYSF1d6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3mS5G0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3mS5G0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F3AC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752662393;
	bh=yS9Q+rD+4MAEDcrhM15WE4hh4OZpmS0LwgQZ17Fbbp4=;
	h=To:Subject:From:Date:From;
	b=I3mS5G0asuK8zEQq8GaQF+MqlnymphsMqfzrw6JyRBkQvSOu/cfw3bo92jNioNCmT
	 swVy6SJV+3td6R/lMB+6pWuV3nAqEE7n20KDPJKBw7VmDs74rRHm1u1aWnu7uG609H
	 mfZLhLc4z1rXd6ODGLsUPV1SYtUG2TyrckQVp29EKNjeNd1Py9hdBTAvf0WDjUlNZA
	 PfHI+cYK0bjmKMiQNfUMR3NH8xeEdjdhD2g2Wq4FlWUNXBbiY4+28SLWlVsQPqxdfl
	 UsjCViYVjcgWQL++xLyekKI+SuTAGWNh1sB+/xzmDRjDJcfXdxA8ZsNalRmKV9WZtr
	 T+w7W9NF4rZ9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97362C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175266239360.28670.43418853014168271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 296c8d0169e5dc17a52b7d5335e7511cae2ac634b5323fc807fb5e4487fdd85b
Date: Wed, 16 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752662393
