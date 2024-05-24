Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679F41D54D
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716541403; cv=none; b=k5o+a4ipfglIL5TJULZFa1rJ1OwesrSswETrO03ku+D47b8hVHXaghMc49qVavCz6vAKwWE2yA6KIrVKUjzhDcgExC/MS2z7IUlaYOdFmGxqI4KPHN5zWaIql1nj/cwDb6T07SxOkdO8xLCCELwmmvHkR/ruuZYHRZ0buJ0xD00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716541403; c=relaxed/simple;
	bh=Bhd+1XwZ7ukuGdzdzwp05U9oaX+A/+qyyS7dLu3onlw=;
	h=To:Subject:From:Message-Id:Date; b=QeHHF32P70n3tdYaANqtlE3Bhpuv7mVuwtoUdffJ8U9vNmsBUg0iu5WwJ4LteC4KTT5Enfk3BiZgSULo65CiO7BpSvX5e1acTvRHhg1fuO3iRsw/xl2/fsrYzHbmacv0d3XNha0oC3wcEscff1orfwTLLJmYb81HqiBYj83dxc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9qgxJ2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9qgxJ2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6DDC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716541402;
	bh=Bhd+1XwZ7ukuGdzdzwp05U9oaX+A/+qyyS7dLu3onlw=;
	h=To:Subject:From:Date:From;
	b=k9qgxJ2kdPceHzoYgtP8SMxCtcn0IhvMyXRqOHZwq/EVuDpHyso8yjUKr6+NVlWgH
	 mPbVDy6wCwXPnsPIW0ZosmLPZ24A6lr0sGYbI+OtidsVkTc+XmS6wgZzm47v5cedDM
	 uHyPKw/iWpk1LDASwZwKkvsxa8+XKPEf8JpNy2pHi0Q+itqlqlfXLTMyZqw61HT2m4
	 DTBA+aD0IUpqzaD3Yms2Wj8J7Gk/i4E45X/JcA2Iy7kUIOF0lMssmF5oCs0zL/Xlsp
	 7V01JWK2XkzlA19FY6j/sJop8k48xYwn8t4WFIVdGoxsJwRBPtqCQhVTSVc40of/GP
	 jbJsfPSbTrKmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CCEC25B79
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171654140280.6162.17908303692173064854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15fb755d121d2c886dc34e62acad462c4a5b8a2a71ee4be5f074423e0ae39af5
Date: Fri, 24 May 2024 09:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716541402
