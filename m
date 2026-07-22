Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A64F2116F4
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784688514; cv=none; b=JfNZROXnG7mI1ZxsL/hJJY7mA2q/EMXF/GMhfXX2eiwStSZ73YijUTJeavRP1OPuEp0gEQy04EmO//6PfmJ+STH0UpSFas2VOBXZqYKQFaEkCSu1NeNnqNO5a2NfWxuQuygXTleKXL+YB9RoouDrP+M1hUysa7xbN+Oja8qGf24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784688514; c=relaxed/simple;
	bh=c4cHD61K7D789iWfchrNkEQcK5fV+BxcAmeALnEZgRc=;
	h=To:Subject:From:Message-Id:Date; b=jjflxXvpVNR+F0PhCqhiOvwmSGrB0wr3FhbyPtI0FRhIfvFg89KXiTddhCuvNEO2Lx7E+D4NvFoHB5a/IO8STwHUjrf/dw9CQz4FZWxhnYWPLdQYTf1qrm5o0jOJCdx+I2NdCbSomZq0vJwx7NjLGD3o3blyfzt3qpc8AV+jxQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ar5ltT7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ar5ltT7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C0EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784688513;
	bh=c4cHD61K7D789iWfchrNkEQcK5fV+BxcAmeALnEZgRc=;
	h=To:Subject:From:Date:From;
	b=Ar5ltT7F2TuNtxoSnWSvcN0K1tfwN7ZzQfYLkhlSJkaELAXXSMBTT/FYyD6hSNDLi
	 zpB38Rf9Gkj6UZpqx8k6EcYq0pkN2VZOjMM0RoqdXedkSBcgK/sNLchsQUV9+Jqq+d
	 GFpfBUjX2lEuDIyI+5xJW0VfmMCj4ehqzgGI1MaN865vroUKVrhh/8OdsMU2xFBHJ1
	 0ecOjRBI1c/IL8XFgg1SrxB4U5YBy1ydKTHXcwKD+AHxZwGiu1zLTvmcFyN3K+TX2J
	 7AYt8gXdcRlAjbDlfhvlK7CmbJ5jWPKnbAVog5JZ5O1RvrDaejO5cp1p6hIq7qFeO3
	 PrpqX6m40uM+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF872C4451C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178468851368.21081.5062878393883122822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1898ae9ae7ccdf1d47c5477e7f6709bbf3f78398f46bd6c7a3be2de34648204
Date: Wed, 22 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784688513
