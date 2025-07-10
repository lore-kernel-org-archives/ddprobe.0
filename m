Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FA82FD86F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752178194; cv=none; b=WYgbZ9MQjlazmaqo1tT23aL449MX2JqPf03I+rreB2CY/7QxRO7G1l2SWlXkyfi8j6+nwE63VI/R9uqYJql6R1CZwZ3NJd68K9UTXzttDgL3M1Q+ZM1Dq814/kaVvfPsAhqS8pgKKhizgutybyExgsVWWw+l8nrp46vXkmG52MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752178194; c=relaxed/simple;
	bh=GCrQLYAAP4yJzvwTw3S9Xmd9N/w9mr9fhAvTppnB74g=;
	h=To:Subject:From:Message-Id:Date; b=j52xSapASojCKthPRnLMXglPRBcCiYlH+q0PJKEVX1udLvigtItStYhiWroK3T0cwm2QU87/kb1kXeI5qhGjDYLfZzFFfK/IQPgGr6742AZr7RsdABVdHR9/AmdqY+U465R4CyL4dDhsXMliCbQQToTO6aYpm8WRMs9iNievPTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pahhkPX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pahhkPX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A470CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752178193;
	bh=GCrQLYAAP4yJzvwTw3S9Xmd9N/w9mr9fhAvTppnB74g=;
	h=To:Subject:From:Date:From;
	b=pahhkPX69kbcwQCdah/BorYQUAcU6T7dqRbwzGqe+XJ0Tgk5jWn5VxkBtTASw4yHs
	 MjeNgEFxQPLBRPXkNsMQ/MsCNV1wHl3Y/LOyOmoY4yQa9Bl+RH22YOd8FQEqAK59T1
	 Ve1/k3DrD8u/26wvCobuoddzqnml/1fYAekB7F08HHCgcch0hkHFAld4p1g0fGvXhX
	 zP6bs899mIQhHDer4vcpgm2GRPoXuYBMOmIwxLB0ABs6B70dEQSVHnMghBTVJv+0fW
	 Wl7AIW6IU2mGW1dNhCCNs1yH+TPLkH64sBTmSgqaT3Svsc+wOIJ8Y8+ZAjcmz9TJlA
	 QP4WRJL5Tjf1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E56C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175217819357.20137.1263169303569074059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa3669f12eec95ad424b2cd67dc6f6e397d203e714bcaa441939ace00d11380
Date: Thu, 10 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752178193
