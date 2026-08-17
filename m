Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C93D2C3255
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786930834; cv=none; b=tM1eGBPmmGktpaiEu/6gXwm86yRdbPkln/sB8CabaRfyKTrz52BjrzrDVJsn2c6ZCXUOx/OgDTPpT1YN7wxKayGF7EHm4Oxx4ZjYSJlWFL3gG01htQzdLC2SvYIpwK7YiDvvgZYyUtnezKT0+FfnUB+DgNfV5XhzBKYQodfOlsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786930834; c=relaxed/simple;
	bh=yFaLMSLXgjvIwJu/SITq3kGquy0zkL7Ej8tuSu+CNrI=;
	h=To:Subject:From:Message-Id:Date; b=fGSlntsaGtLMWQWnQBBJujrbTjDEDR4C9jLtZOazm1obnLH3rphNQvctk/t5S9RVBfx1AvdlW7+2oFMJ/zVuQtiD/tlFnepXtgdWILW85DIIEaI9/OsqFOxQvI3M1jP/tiO1SyQ2qfYAYfbwsRGhtX4CYtE5NTx6bdNTErIT+Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t74FeiYB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t74FeiYB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D445FC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786930833;
	bh=yFaLMSLXgjvIwJu/SITq3kGquy0zkL7Ej8tuSu+CNrI=;
	h=To:Subject:From:Date:From;
	b=t74FeiYBPsxHWyBsn1QWNesGAWZ84yn+yZEatN2Q6a9LzvApx9RbYwKglNYmIc7WQ
	 2yQJ7y2mmlda4GvEneR6ppNG+VqMxj1nGYxp0BJjZovzeqvLQmdhomOg9hS9y52ZZv
	 7a32ocNEYcyjkxwSRNzsp82BIFlKMmejz9ash6kzqUF/JquqVrOT+zA08/bOXszHD8
	 UVRo3FfZRF0kPXi3OKJl2o9208ZE3VxOVljdzNsIDhJp/Fblu/tuvlSToCePhekwBV
	 GQk8Xrda9h7ttm/WFRTIuTdpAK4irAeTKEu52CbWCMPmsDdMILVb8Ji/QH0UPLPg0v
	 0GGiODxT63DiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15D9C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178693083369.22155.6407767702745646796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b639629ac2798436a89942dfe842eb2f280c92d76524f2d5e808d3bb18bda10
Date: Mon, 17 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786930833
