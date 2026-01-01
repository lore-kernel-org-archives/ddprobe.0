Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B84187346
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767279234; cv=none; b=DwL2lHdR58yfnsQu+jwEgNsI+6kwEVkFVDijMUCvwQjO4pO/beE8l39a8hHDfXSWDbWYAUJ0MI0yxh0SkmCuPLq/+V4iQop5IQPWqjsg9Ziw3EPqTTeeA2B1hW4mUypKlkgmSVOSLHQbm/V9xSIrniuKvSsnP8kS6VCYpFRfOxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767279234; c=relaxed/simple;
	bh=VNWSYTNXVC/O5KHNCU6pzAOR+rOR9LBN6iAvy05OWsA=;
	h=To:Subject:From:Message-Id:Date; b=WJIjs1PsiVJQmljT1+JBXegvjb0ncNPSK0p2YdBAv9QrlDpblBFFgfzNd54Jj+DqsrjVMpXhx8OITFOlpk58A2F81RdNoTH1Jk33SBoNyvE/7qHNSC7H3gp/mPU+zFAvqdJ0R39nuxBVdsUSLLTu8AEOOcDCGYkyOrpqCs369P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e91OnXg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e91OnXg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BC5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767279233;
	bh=VNWSYTNXVC/O5KHNCU6pzAOR+rOR9LBN6iAvy05OWsA=;
	h=To:Subject:From:Date:From;
	b=e91OnXg7GD1MfIBMpHAB88lt8pGl1Zxwjvge5ChCBWtK1eDF9+UB5HbmCUL6ugUKJ
	 sPpH/AcrxOKwaCJqzxNpcjdRhc6bDXZUDkYI5NJBBgsVQ0BL4mDA6gb56TX7VxXe6z
	 aD9YsQbx6lpWYXDY/sHgOrJaBTfiCCY5zfFE/NNXY9f/PFnIefsoMYaEl36rPHNiky
	 jqpN14MsR9dvfb0SETzAYXAJ2GD+ry8tvtvLWdxEY/Z2RJPr1Na4a6gzedUG8sDeVU
	 WpCxDxAqCcT7j0WOYLA0aDWhmtnwL4tFbap2ovA7Y3RwexQrYV90dyx4d6u4hCG6rE
	 kP3kaChbGGTGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EC4EED603
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176727923357.20290.6486958263769444306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52168c206891bd2986c8807c402365a358b30faa7130b5c1b252d14c1c14a1fe
Date: Thu, 01 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767279233
