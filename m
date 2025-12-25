Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCD331960B
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766658235; cv=none; b=qh+u6YVNbBDqNSOaBy35O3tF/vtzmX/Yi43G5qDqRh+84ffaXoCUlQCOh+EVsUScSjmQSWIgnBrHA9DWZZdwdkdSA3ocT1W7TgaHLf9EcSFwHa8NsngThRcn6LDRg3AaIuThdxmexhorG/FoXOliizJ+OCr4dYAcZ8vamZd7/TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766658235; c=relaxed/simple;
	bh=n23Av8M2xPFFXKAKGk9NOEC9YSDEX7wf8HqQW8DcTkc=;
	h=To:Subject:From:Message-Id:Date; b=groWPsOeOoUotSz/OYOltoJ5dK49hPUJvYy8F1B2ZPFMH2OX7AkOJa0bcT//XmDU2Qjd00AvifC5kuA3mcgaGa0Q6jQ3x39gKVwU+npkbHbqs5qBhLSDKG2RInRudYDf5WxqO9uMPUGOvXXGCsxbPuv4QZkdavbbhlsXKcdv+fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phiL7ZR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phiL7ZR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB00C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766658234;
	bh=n23Av8M2xPFFXKAKGk9NOEC9YSDEX7wf8HqQW8DcTkc=;
	h=To:Subject:From:Date:From;
	b=phiL7ZR7QhFdYo4kGHPIUBexP055u6ahOsMzoDb+THqBkvE5c8wCNCHv9Xt+VuTyX
	 znTSKeK8Jp9cV9ssW8zuhLx9f71md+9DMuXxU0nyhBN10pCA+LuJxN1K30aHQVoIU+
	 bmjWBfaVR4A9+vxoFNpQureifmbAbGFmsS7DOqmW01KK1Pb6O6rJLKayfBmna8Ylxi
	 TJcG30v8eYAjE4cliOIHRdG16lQQBJWkJZPI0IUV5YmZhx7JLAfFYRYPd3AZzzGT5o
	 SC7Yv+/rGmEp6rMUHatbt770wzAjbsFWIoKo2zLWfEM6dPtBkStnurKGO4DOPOLTzt
	 t2R1Kv2ga29KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0F2E7AD42
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176665823357.18569.2848736840432475978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8e5a691c9c00f4d6a4ade694d92ea967bb5444b43b30b1ab00b5a68d1522c46
Date: Thu, 25 Dec 2025 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766658233
