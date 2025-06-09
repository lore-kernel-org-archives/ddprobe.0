Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248B21E521B
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749507594; cv=none; b=fIWAyix3t/+GO+pCOO0Hdblup22CBCvwzLKBMOTuE/Q6vTiJmZyuUPN4A8fKIFXNUo2fBpzgya+L8u1Y2X1rnRzTE1mib/C1FhpRpLuz+kfE1vSJzVRdE9OOxMEdoWW6oqThEHW82jKiWwcQyOMbwMdajiWd3vxED5WHxhRxvKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749507594; c=relaxed/simple;
	bh=x+bALw7lsd4cmGFdznHAJ8/hMHVgpoVATCXVROBYvEw=;
	h=To:Subject:From:Message-Id:Date; b=uSyvXzk/wAXpHFn4RL8XWfl8x8i/xrtnViY91eomUSMQz3salDU1o+RoQE9AbeJil2BZDstDtDuoSNkhEzYVgP9Rc7N8MEdfSIIW+xdBcCZaYfCsRS0aOFcz+tIDwmJPqjsJNaTZtQpn9FNL67VNBq9CnxT7eFd4h3tLopgqlew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDdes5d/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDdes5d/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2051C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749507593;
	bh=x+bALw7lsd4cmGFdznHAJ8/hMHVgpoVATCXVROBYvEw=;
	h=To:Subject:From:Date:From;
	b=kDdes5d/10sN8pwzLRHnHp5LxmLje1xDawQHCueEmNVTX/pHFWyZQ2/1Nv+HngKyA
	 A3cxaBEksUDBE8CZcReJ3idKJlftuvXCURACAUPehI0gsPcLA/IBayL3UxY+jMGMsQ
	 hjgUvhrDRzQxrZyj7IZblQDs35IHnIFEhqWzstta3SUGgjuH1L2UA70WwvacIYbXrE
	 rErjwdSFcT/sysKn81C9ecBepJeaVx6UZHMo74RXCfyVZU3jPO46PKfoj7CThMCqyG
	 awBnjcafNtXOvuCTcWVHZwl0iVqPWCh1x4rRSmPff1w3EP2Su4TnEGkEdY12ja1LB1
	 MLz1xUB2G1tjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB54C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174950759357.32105.4937287323874042605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6227399c03212cb5ebbb417147c82278964e004b3a97d07a8ba6d81b42d8ad5c
Date: Mon, 09 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749507593
