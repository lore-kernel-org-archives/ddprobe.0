Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB6982499
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720442783; cv=none; b=qBuQq5IepBhYnVMxtQYZp6MRoXvdo56YSvYCzXEewvTc+HqYSowXjbKXPuY6gkbSbj7QDOUIJilU3HQfSRtR17HiYbFP+OeZA6P8Uly1SQ4J5Mf2Sr+tj+imYZls6jO6BWB9kDpNOb/y80AiEiY4pwcODHYBn9H9HS+XyQ7mghI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720442783; c=relaxed/simple;
	bh=R2HDCkAtCZ04HMtW/y2HqTWR7brnp/XUiq1wyP/+S+I=;
	h=To:Subject:From:Message-Id:Date; b=KBKF3VezwyD6LjGB6FOL/K+Ft69Rt7MZUZPbKPeoqf9ypdn46p4yBaVuHp3NlZ3hKKGKjfe4UA10CCRy0KlV++wLFIEudJwodPch4UA2ie/VqOGO3jjXUEMf+G6GbxTLF/Nk5xs86hWY6j92QbdLZ8Ljo/9QHdpTDho7u8DEJ9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLOMKwkw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLOMKwkw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4208C32786
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720442782;
	bh=R2HDCkAtCZ04HMtW/y2HqTWR7brnp/XUiq1wyP/+S+I=;
	h=To:Subject:From:Date:From;
	b=DLOMKwkwU2tSL8AYmGQnbRqGpcuoB0YdcXsMbNknODjK27pGERWpqLqV0+TFPyHh1
	 oGT0WW+OEDj7ymN0TPjJKtuwDBtem+Q9xEYles+ZqMpw2kqzGx1CsM5p4KyPK11Y6U
	 u57GRyb0tPgpWaQCSUrbXleTNgAlxbl09+NGZW72Y/ASBvhmpf8wEahEonNjzJtRy1
	 crr09ulCEnGW+osdCE3WTEiKgDiT6tZ46vrrcwxWvKGjwOiuchvc7a8Q5NublDB4O9
	 FhivogjBauACWcz3KbS/ogX5w8xGiAjERPYRwBhmp4Fm6TyTdp4k+FbnPMgG5h5PLF
	 vmLZmHPmpsH4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33FAC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172044278278.30293.936337464372850614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5143f8f02157455cfd6681f0497b6ee89d6843c5488518fd9c8700c5c11a29f7
Date: Mon, 08 Jul 2024 12:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720442782
