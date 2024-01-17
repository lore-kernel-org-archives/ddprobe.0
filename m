Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2BDE10E9
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 00:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705451898; cv=none; b=c2zFYSIEfSnD7tkpLqeFYXDxcm+g43b8Cpy8piIw6GVp7MoKyUeTaPBaIcV9hvniokxNDPo0kxat7wG1kMCGMgU0TgIxbiktyKWeY0o/lslEu+7BqVA5kOPZp6uAECPLoZJNpyVl424yrNdtDv92gOzdmgNdbIjP5r4l4ESLKRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705451898; c=relaxed/simple;
	bh=dRmA/Uiy7xYXf53l80rO+wJ/tGVKOEBcljS44AHlqW0=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=XBIK5XELO+9NeaTrQbA5tYBldW/TdahGtDZN1jdG7vsOYDOsn/ESkwn7JBq9MSQYlBhY5M2txhF2nyRPs9QVB7MwPH+KjPhWrAreH7vNQZeR68p3Bvm1BMmS5nmR/55MxRVU80DsiQwFd3NdAQY3ta+Pd11H+hex/gqbvGS6CLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYCdJFV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYCdJFV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EF92C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705451897;
	bh=dRmA/Uiy7xYXf53l80rO+wJ/tGVKOEBcljS44AHlqW0=;
	h=To:Subject:From:Date:From;
	b=mYCdJFV3ZLCkcw1CNZl+3LUFHbn6bFSdfYfaYYRZEgd1pW6lqTxK4Df26urn0TgzP
	 8s122Vgtt7Ie9c+ooue70HlPUlKXHheyfXlg7225xK4wzpaSpbP4ySTYqbt/FfXznq
	 JUxFmYpIV4MaUtzhzlbL8WWitURIghc9umX7/UxZcy1bE0lpNOUDiNCJBWTduA0TL9
	 oGEhPiIgeGPW+lP/n2LcM/CqzL0g1Zt23z5Q1mTDU2tZ320JqS3qquYQlsbf/nKQrx
	 RbhuxTazUbANmfCL8Z8W9qCnqftCULSCKaHmUefHPIz+zv079YT8mnAneZPbW3fNPA
	 uCFrDdAKmTg2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D496C47077
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170545189637.23275.16110611449697113099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95ceff774d0f6904c6cd51b4a29ca49e753d2bf56a0eba7beef17cf1af8e49b
Date: Wed, 17 Jan 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705451896
