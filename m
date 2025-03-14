Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3899F15D1
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 04:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741927134; cv=none; b=sABrlVn4VOdfVCH7LPhfhQrsSzPwSikjZQf9yxpdC5SsGXMOKJm4OZcRpwqsn/Og2rIRANIohZqCgUac2EvUSSLggO/tIrvTD8R0VjBOvsfZY0fM0VDOWbNanO+3oIKs1pgdb2ErynPTM23mOWM/ENPPX+7lzTg3D19YY6sDmmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741927134; c=relaxed/simple;
	bh=xhW81cX5YKMrFeuRi8Qgjn9/hgdZ5NkukgNxA/iPYOU=;
	h=To:Subject:From:Message-Id:Date; b=X9xnYtHQthD0rWT1g33NxTHdyaFYdbZupgQacVid3EsivMB5J45ToCodPopRY0G0YOllhk0X7NqSoJHV/+6iG15U7enI5s5iyloFRGu4tWFo1FboC4DS+CibfkEyFLzxE1oqyuCskqEpgDEyoSMy4eCjhirJNK/W5yIbqCTHOiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzQHXd8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzQHXd8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D68C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 04:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741927133;
	bh=xhW81cX5YKMrFeuRi8Qgjn9/hgdZ5NkukgNxA/iPYOU=;
	h=To:Subject:From:Date:From;
	b=CzQHXd8opwS7RaZFX8fXwTZBGF+2Yk1V6SxRkIFDGp3BjpBJMc7ytwo1awDahbgBN
	 jewkfx8K9x6Nadxfsba7DbSUXXivwlMtKcoj9y1uqKUJ8Y/3K6Uo5BwOiIsLylzKSH
	 a8mKBHAzj9WpaODOo2eVfO2ouJPGHFsIfQwl9QICu0fCqC5DrjWXO0t2snMsZ43yWc
	 ESmqXxPrXmXoVPFiqrxrFdC2fN2490muEKucT1tjtiulWEGmydEd+ZiLOaEnVFFLl2
	 AYb85WB2M/5zd6ksFPSb+Dn6lof1uGwCYYVa53IpczscNzm3XdHX/jrgHgfSskBaCA
	 tpQEbaJLG9TtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E104C28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 04:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174192713362.32465.16094204761969277715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5fde0ec783c4283c414a85fa17f4e4a4673769c380c4bac54c3a38d0f38b66
Date: Fri, 14 Mar 2025 04:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741927133
