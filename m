Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24612A944
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760315394; cv=none; b=EFOja+Mc5vFDZJyhCxnV1N6CKzNK2PzhTpRRsCdZelAysaBdrIeCN+kj2fANe/y7ZlQW6qWMzdPeQZmSlxLGPPRVgimXfgBbsHUFBZQJE6gLDvqMnWbQmfuLBdrwca5zLm1Ab2aC64fIuqo5Ds/PD6acEVy54DC2BmEBtk0s8CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760315394; c=relaxed/simple;
	bh=oBMk4gFTsFimzXEdW314qJmDAzM8KjlFlCMWvK8NDKc=;
	h=To:Subject:From:Message-Id:Date; b=iGbbaZRc2aV7MRwBFWFYWuRAm1LZThiMRhthL/Ky+1+PmzWj1SyluKMQ1KHCeiQIu1tHA1QJ9ziU9JxRCyUi8XyfLlOgU+gq80QR1TBPly8RYVcrxCkjxfVeNlccJ5mNTG0AZ10ubRVe0IGzVispgafhT2ta3Cx4fUR+YonXCbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twQaos7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twQaos7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02F1C4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760315393;
	bh=oBMk4gFTsFimzXEdW314qJmDAzM8KjlFlCMWvK8NDKc=;
	h=To:Subject:From:Date:From;
	b=twQaos7kfGilWwrMneFT7e8sCCBLiU+sdJslp+TAjspL4qVCrFXcPAB7T2cF2qgvZ
	 M45pgc7lGFLlBM9++qzxw9Lg8hxD+udctp1eZtyUttjd2i72XhsQpfeP1ZLcGjvBhS
	 O37G/SQn2UmXLSAn3l8yji4lG0ORI784SH9F77rXF9V63pp3CJY4+GqMB1a42lPi1a
	 ZmYH9uqZsALMjRWrZO30Cm+9rA8sHkQbYT6MkQCZZUWUWyiCxKkaWXZlPUBWvYSPnc
	 6fHGYNGNCp0qcivO0SfZRqRC8u60Vq52JblEOeenfpvMpId3HqYlrnYS96bEdI/A0m
	 LxgXRjeYK5mVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE5ECCD187
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176031539357.8810.5925855177239424173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5373c18afad19c8a43e250f6c0846a8330bdb304fa2a45cab9094d3d4a50733
Date: Mon, 13 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760315393
