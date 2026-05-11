Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF42833F589
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778494835; cv=none; b=BCPqAN7FND7LNJEMlht6SckhB9L73qUmPO+st4+dSk8Ewt6lrmLaLleweGiiMaijcAzJwrm9TJPqYupyBK6HyYaNrVvLfiF3jNtLteyRNS3Rq4qUNXcC7rBkDVhFYHZTvb0PGcmClrW8OXV28UAnAJ3AzHl/CA2nkT5Rgkj/pIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778494835; c=relaxed/simple;
	bh=omz7yQsjTiVedCQFkRFfTIZC3+gd9JNxLuicjeWL94U=;
	h=To:Subject:From:Message-Id:Date; b=Bz6UimB1vK8dUBBjE/yYSiPcJDJ+69GB3eiXo0rlopyLekFe/cWw9aw5HlTLUK1i471zaHWt9x8Iimefl0d48WbPpnXS7DTkeZgbm55KX6vYM8OsyHcdulVvSYq+7FVU43RWDzvobXb+sWuUa7RH2Qr0VouXpoQqDGgnGten9I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8RGW4ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8RGW4ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF226C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778494833;
	bh=omz7yQsjTiVedCQFkRFfTIZC3+gd9JNxLuicjeWL94U=;
	h=To:Subject:From:Date:From;
	b=I8RGW4ws04DvYiIVXeKQITFSY5aFSM/dP2JMKVPvxaCNKqdaDdcrNkpKhPN8Mvhzv
	 VnJWVik7Iyyrfi2ScqyWlPMGeEzqYrpXm/NE59+XC4DvHKQIT2geawK12/Qj0vCSUV
	 3ikl6Foy4f4A3D+jGDu0nMt64L9iqIJIhGfYRPfLMJdkZSZGPUVvvLrVTND/x4fkce
	 ixxDMCyM0HEqx/5eJacifvMcxLMcpWJaqUovccMQrx++jRsxSkatdZZsCpNbn3weHY
	 RgMPaCBA6l9apiadSFRnZrUMGQ2dn7q3Y3OZIqLIVfPhHNNljpwTiqGP0bvLSEOu90
	 hOch6Wjy0yavQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC85CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177849483370.17346.8837098793363633770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 030074f15c26987d220771b01a8ea4e9ea2ed7215f87cd4b517942a88991248f
Date: Mon, 11 May 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778494833
