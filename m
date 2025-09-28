Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D19E72608
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759084794; cv=none; b=av9MJjVTfV2C7Q3rla2mIgTPzEr8Ylwl+y8FXd6LvgE64K4viBzQj8452XJhFuS72WmgbyXcYeT10NnLNrjxc+p/KtFEjKJGwmAlLi9Jn+ONgBDXEnHNYsfI/8Alv2906vY1DKOTrxtvofwybY1u1nGyTikQXDXKSjkwZdLXPdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759084794; c=relaxed/simple;
	bh=ESEKvr//L8b4BI87/O5srqnVB2rBz+6bEoEIq3TvaHY=;
	h=To:Subject:From:Message-Id:Date; b=rMFbdYoynz5nBuzlT95vwR9Ja+fzdMQ47wbDCXHQ6ti8ZVYaUgzEnyTXDb4QaOT7Y+/ZFfNq2yA6F1Mhal4RCFe7rQKv3VyYWUB+X5l0qe3vHbmNm45KwW92MNLn+ySi4HWyVPrQSFm7S4INTW9DiZhfERpkMRxWXrgAiAPuUlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqgYQ+Ae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqgYQ+Ae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2DFC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759084793;
	bh=ESEKvr//L8b4BI87/O5srqnVB2rBz+6bEoEIq3TvaHY=;
	h=To:Subject:From:Date:From;
	b=IqgYQ+AeBIHVyoPhJaI2AtGJYLSkLAzKu1tu3DTGBF9/I6klCeK9ebS/y1oegV5oL
	 CmMZuzffFn+eBZl8aoeQIHFihXzhzJ7zcecVkRPVcDFI8yxDvp48lF91X76Dy9pq4C
	 hFU32iBbUYLMY9+JehcpBDAvzU9n1MGjEMEiU+xkbWqByC0G7F+IGD/34Vj5ta68jn
	 BF6VEtSliZyZtnFcQqjFOp3lIMUZRH0eSyawInqM9E8jimFN5qBpt5yZLaxYDP94ku
	 FDWsMM4bw8mi36FhS+kzUwNYvkHlVe+GN8z8Jqi9FWbkfdy6apHD4OEnxbbXG3BxrG
	 7AQEx/5OFIkbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B5FCAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175908479358.24070.16613876693343953287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67dcb582cd0e774abdba6ff6dae8b2efc6d8c29a5bde968af89f8c166b963194
Date: Sun, 28 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759084793
