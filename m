Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D720145345
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726784754; cv=none; b=olcx5rNN173NlDptjnClP+DKfx9qmGn5exweW5jkzE09qrPJovHgX0ABBYui7VAzVzxVsxxzAkgqtXY9My+PlG7NpGieawNmLf+EPvUQcaR6bf0lQq6yYp4zzSU5Cwdh+44CTTJZ1ofdVi2NmkHzuPF1d45ByOSFOGIP4mex04Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726784754; c=relaxed/simple;
	bh=6mU0BUvNVq/Tu8musEy8ofExWUh3MhoQEY/QGKrg1LQ=;
	h=To:Subject:From:Message-Id:Date; b=KXB6w7QeSGtwtBn9+/G8TfHIfQrLPx2tk6QfL8wI4uSbNv29tQuvTE+26MBp5e/htxlmV62ZKkuexgvLckMs3TI4RAWrttjOOQo/RkJfeIqSo10AGWNnftDsJdhYdF2RRYRi8Z4bgKvxC/L59u7UOZ7gn+ILWXXoiv9Mgk6iLOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrlKIA0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrlKIA0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA93AC4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726784753;
	bh=6mU0BUvNVq/Tu8musEy8ofExWUh3MhoQEY/QGKrg1LQ=;
	h=To:Subject:From:Date:From;
	b=OrlKIA0DVi0HX4bVZndLcIVTEvYwal6AJlf27xdQfo8/rtYUY+T0X3Pxiw++HZIlq
	 EfFbHXfs241noSxERGeUElOLAszI5f0sQwtykUEGCVfq6zolxiHp2/joZSS8d+Br4s
	 9LWe4klCtd2aRea7BvOXLHsa8UbUQ3NoDOr8T+/+g4Fjpo3B7kQFsI2yivbP4HUWoV
	 D0Pp7BvYCJ/XC1gye06oi3Cfy/56mkAlyYQPas/fvOG52cNl41jNAyfWQKulzLxVnm
	 EapIeedhHdDOceMQZ56Rv9iQC/RkRNfzvWwxdZgQAJsTiJOwdlqjjHUBrouBqQn6SO
	 4yZyiPU/eZJjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E4CF3973
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172678475358.2086.12213538917235648098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033bc6c4dc4c11eeba2d384d6e37750ff9aedd71775e665eee3dde7958c0ef46
Date: Thu, 19 Sep 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726784753
