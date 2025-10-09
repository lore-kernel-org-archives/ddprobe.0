Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC5D2D593D
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760000994; cv=none; b=tCLf2MqPfg93+q2vAcnMZo50YeSp3QiVoFXdnMnXWEufsw93gHuqCthpss+7pzsoCqyz49fMoEqrbjRquwMd61HrbscYOVB9UBnJRN4/oUQz0u4K/GEog1PKCN3PzOmv4CugTaHycSj38vUkGf7qkdXTF2Cr1vU5qQO4ZR/cg4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760000994; c=relaxed/simple;
	bh=fD3jkIv7sqcUdflXVym/6B26YYVqu9J23FPo2jMcrd0=;
	h=To:Subject:From:Message-Id:Date; b=k6vPYQWvhh7OTDrFYu0F8XAydYojeekNluQw1/yro3YTjMXQmGxf9lHnja9YItg6wn6UOvk0EN5pp3Wbovlo4TYZrphQ7Qu4x+BWK2/oYZ+vkXX3LRFUmgHwC2OarB12Ozmp1FrdppNzwOsmRfbI7GWxQYX0KBTekJr7ot2cDRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R90wvswz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R90wvswz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A297FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760000993;
	bh=fD3jkIv7sqcUdflXVym/6B26YYVqu9J23FPo2jMcrd0=;
	h=To:Subject:From:Date:From;
	b=R90wvswz0WhX3N2q9Wxflm+8lf9kyDThc79G1BWbrWiwnpBtFVClTzhTiliw5aOoN
	 HyfCaj9q+sXBiI54XmmwIS2nau1wjO9jRu/jeyD8DmHWZUoWutfei1Vos9BHWxQIGV
	 TiXtMf6wNdZYbnFtJF0IWnTnJtHr1cIELfyeqDlOQaftYpXIOXrTqX+IVp9SF+Z5/x
	 ZqXZM6ny7Pb4g8Lwh4CRSYuyUQkKBl8VgrKG9V/dbFiTCI1xsxIPcJr6rsBjfTR1pe
	 SlMYqnVv/t3nZbW6UnAfbA0shemsK3gV6lkzcyWwZ6nN10qgE/miW7jBgrKExCQ/Vu
	 aQqUMyWcGwwEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91772CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176000099358.2155.6217252054045025622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 138f6c779114dc2be7aed96e74978945b603766de3a96f7a10250026ef92e950
Date: Thu, 09 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760000993
