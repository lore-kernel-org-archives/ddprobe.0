Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE868BE5
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728724554; cv=none; b=Xr/VmiH3hSLmJkdtyzL0QJ9nYo+MJbSPQLq6d0ULbtIrmR4WUBfbAZNr+PTPTUsHTmRKAtc2rJfkzmdZLaKaKhHbjjTGu06E7whG62F4r4Ma+3moXfyP0pBU1MSamDeexXO2vB6KnJngMhGBwLhNYM0asc6enbWuAylzDdhWyok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728724554; c=relaxed/simple;
	bh=2EG9vcVc8JAXMqBt+kyjO/+IsoI/CWZ/ExDyTqSm4dI=;
	h=To:Subject:From:Message-Id:Date; b=oTsL2X6COYSwIMlBlqRXCy2Q+yMCM1wpYJo7Gkf7fO1LTa3nBKgBrrI/ijDBi/sxsJcPG4c0BwqM8P4uGh1DND8aiuAETGTJJrlFhoMDxSdDb/Izqxr5OyRKAvCTwO4w52r4nPbtVD4l8pqM2ab/zX/vvCGubaAH/1Y5/IHsyFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFGLs80e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFGLs80e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0E4C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728724553;
	bh=2EG9vcVc8JAXMqBt+kyjO/+IsoI/CWZ/ExDyTqSm4dI=;
	h=To:Subject:From:Date:From;
	b=RFGLs80ehmrkL/ynM8gLQvYwlO1xJHINVvA04kfKQAI4k1UOyTBfb9Rf1gSLVyP4B
	 HgnYfGlBhoJElv6lcntWN+9fbVFEWRV5PZ7GfFnS91E+Csi1dY0yDV8+9Ek1r9qBqM
	 +YX91/lhRlf9G0YY6TMXsv2mUrpz/qEYOCqz0sTsj1YRqsabNR+xXi0szgjDk/vPQa
	 HV3evo5Pe/f0vlRQlXvzPnIbgzCgY1idwZ5f/g8Y9CQjzA2pX6pBxy5M3GA5SK3DJK
	 QzRUiv9pgdPcubKu41Zq9NAiwbkcaSnInCv56x+t04IN+wWT95ZFAbLcTIUh/HD0q+
	 i9EWDdanfIbdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972BDD1A45A
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172872455361.26741.17736529357253187906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020c3dce3f626d9e88e4b4bec7d9f8af781eadbffb4042ca859a2fa16db8d1c0
Date: Sat, 12 Oct 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728724553
