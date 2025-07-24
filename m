Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1025823B628
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753390794; cv=none; b=hUB9DHIFWuRrwU4FjvcFn8Q2gE2kni75X6/IUrvjs8ND/x92bcmsyZ4Y/w+DQRu+x5XtoOjad45o6yLiJQAWJSOARnFuiGZikTD+d3d+zEZksK2JFBn+jXqV+xcV2xdSK+GU5fKeKE13Ub+nPc/OZLVR8nJbuHsOhKeHD6M4O3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753390794; c=relaxed/simple;
	bh=Xw4uL3vC4ME2ZA23rKxVpZI1AWpFei1TtJXp/DRb8g4=;
	h=To:Subject:From:Message-Id:Date; b=cj053efouSCDTe9UnSO0lHE29aeLGv1sPQKs6zW1wgtZmjbguopB2jRWcBQDdcbgcfx4sDV3WE5boIY0gC6gFn5H1b5FhlzniJbN48J650S2e+d78WSTFCSxD/m6z9NktSX1XqIpcfU7VCQWUIp1+yb4n4tg/VMvmyRr+iq3YOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWslaj49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWslaj49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D73C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753390793;
	bh=Xw4uL3vC4ME2ZA23rKxVpZI1AWpFei1TtJXp/DRb8g4=;
	h=To:Subject:From:Date:From;
	b=QWslaj492Yc0k/gN1i+xpBHFTvw8vJxKF+qFujuVAIEITfLehnv5aA+kvSI/o1Ny7
	 OFbQQKnRuAtNPrru0oJ1flDABgpvQ15f7ZPTEzF1T2xyp1O95XQ/nre+GWK8A5VxZ4
	 zcVmj8mHa8ZyfyvgrDfVmlAN0lBMpilxhCcIOnZX5/B3XjueVkqtWmDrTeXe9aOIAh
	 prYMghQQrn3JMzvFXoYveL7FaHumQULitvISpWkNtuSs58Sh3y2EdUfvB8jhi6czJ4
	 K6CYsbJZaxv0TRFLlrJ1yzCzDJ++te98PPerNUojtlwdfn8Me6EUoo49/KnPOApZUG
	 y6RZe36JgxzwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93760C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175339079359.26609.13877369623666045212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59b04815aa4a2931bceb5e8bc5f0b0a7dc624acb5bad7704c8cbc387b922ab8
Date: Thu, 24 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753390793
