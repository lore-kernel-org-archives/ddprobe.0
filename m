Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB281940A1
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752905394; cv=none; b=rz6krcGrnLNYrxBc2Y1o58mQNvjMqCYzbd8Inh+JCrqo3IP/9j/pxCX0E+3AQ6AgKtD4jwmdoW3ixwVrFvRS+sWGf0yh9Ns0CRI/dU/Y86P1AkexYbXFh77ep8DkZp1a6gvtr2Dvv3LzWvkK2WSioo60A2eTz7aOzszLipokPXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752905394; c=relaxed/simple;
	bh=ubbee0tg6eCbnrgSbHG4GWI3TReZL2HOFXTdUdq2zJE=;
	h=To:Subject:From:Message-Id:Date; b=JsXvX+gAq1Q0Yho/7TaFvGvwCbx0SgS5mn6Pbnu/sLeq3je7bKZnncQu0AnHKOdkgo6yGVv2+kXuC5/yABz0CR5vj/fY0l3CS9IXDNxwKA+lO4Ly78eHcBE5MBwHkBfJnMvrUOrtQ+ex+ZFk+d5tjuwcp14HIYST8dtJuAawsz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHwWMsS8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHwWMsS8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57B9C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752905393;
	bh=ubbee0tg6eCbnrgSbHG4GWI3TReZL2HOFXTdUdq2zJE=;
	h=To:Subject:From:Date:From;
	b=SHwWMsS8TeVaHRMLrLY3i8UHx0SEyltgYPv0rYMkK65omf4NUh+H5kt5jCaEcsQGS
	 NMrSzw6/GV9PUGawJPHBczV5lt1N1scW3KdfMeTN1Ndf5UGGYkuFcLjvJCG54QM4Db
	 26PJOaSx3ow0jCwun9rCUGrsHPz05oFsSVDzHu9CepYX5urJBOklI2C1KshoAfN0ml
	 sp6GFpbNvO+LtGmbvjQDrOGh59eAJXLwHkm8a2iVqes/v3dLqGx87w+JZh5X+scMwm
	 UyI76w0POsGDhyKeX6W/dicEoeK90sU01JGHFdv1/OTYIyKH24TIDGn/z0YeFT4mph
	 /aZp0KFb1CUzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91410C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175290539357.5327.7861700017662085605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895e4f1412674b6e8bc793e3ccc4aa3f0f8249c03bb51381bd3007aa7b794f57
Date: Sat, 19 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752905393
