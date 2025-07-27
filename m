Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2762864A8F
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753609194; cv=none; b=f+JRQbkYXFvBWzZz+3GI8OmsGP1ge7cO3RcEndtT3SdoCQo43rLuTF15D9NdJqDXdcUiglboNPSK2Dz4CL51IO/IIN9Soj7brvdoTf/ZBxWdJfHMYG6KBJW6mexO7d3Q8EnkiitU+vFEFWxCJj3MTjMVwq8DDJqkRmWkx4itoxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753609194; c=relaxed/simple;
	bh=wpbEXElbvkSj9btyqqK5Gkxmd4H7c4nBqfX9uaAayF0=;
	h=To:Subject:From:Message-Id:Date; b=LCNgySDWaUtwIxnVd9+7zNHvO925jKpZ+HvjayoPvl5KnY7dGT9jJDSvNfwyA7UjjzGJaY5xaKnlX8jrEDxRFZ58/iJZP7Z59a8e1IsiOqUpUorkWtoLx7AKDw53b3KFnUNgCBPjoFlyulbjjHhs+rcRmCbNjRYxWscC63ceATs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWqpU7wV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWqpU7wV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04A4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753609193;
	bh=wpbEXElbvkSj9btyqqK5Gkxmd4H7c4nBqfX9uaAayF0=;
	h=To:Subject:From:Date:From;
	b=jWqpU7wVZqQzxybDiGu9+XeRA31psx/9EgvQx/YUZd+keAtvYmV6kNbX9uVgvffUH
	 QVgvhTyTa0A/epAy97wciKE9i8VJIjTgXFJtrcWCvJhPRTsMgmgwJfftNlg9eRngZi
	 LFfvGkpBz9r4RUKr+Umxuw3LFiWhlT00/uHedWGrby0MdAUlUBMRsKtg5eQ8wWm6Ti
	 R7xOVcc/SUZUUiqraL62HrAm6BtfaJolb7A38RUiTfIQ1WtJrVvt2TVje65CiQtvEQ
	 yshpDPAN5hm+8og6NCBk3C9TUSM02dsjU/ViNv6PqF4l4+c2EqOv81STnKtfxsiSqS
	 inLSa1ykgJKiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE8BC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175360919357.28574.7907641327454694446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c609ac8f63582f55235166e8159816d1395f9e5fad4d64ea3bf441aecafdffe
Date: Sun, 27 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753609193
