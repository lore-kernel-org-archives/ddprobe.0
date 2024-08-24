Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9CDEAD2
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724518554; cv=none; b=saxU//HZsKl7ljySdM67kz2PD04qghE8CIa6g5lg+PSzt67kqRxCEbplI/6eMBHLSAPakm3aV4h5dlcVk8lyRz0IUKHPmKy/q0iYZ3jrFZGLcL8WtT/8vfZ8C1e5/IcuA/hcMttYv1TKf50/MdYQ21YjOmhWaWWcdWjphbwhBtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724518554; c=relaxed/simple;
	bh=aR8kSVhkpDbrYFnB5kVxG42o3LWKSrVynuuq6lOW66M=;
	h=To:Subject:From:Message-Id:Date; b=LWPABMZse4ST+I5AK622rMvkad23QLM8/2QFLF1R8ApMs9n5EQ/qvFM8KeKINaMAQWEJO433j66VPmCahGOM9v4yiFLrbduY2Oqald5TwiPtaXHuDCfa8PjERgWq6WeOAARvNDg6OeOHFVgXkrAS4N5p9kV9EIXBKLJ1C+U8Sx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9QNMepe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9QNMepe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2970C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724518553;
	bh=aR8kSVhkpDbrYFnB5kVxG42o3LWKSrVynuuq6lOW66M=;
	h=To:Subject:From:Date:From;
	b=d9QNMepeByxK33bp+gP0zFPr5OvdIpXo7WR0ZOGMcHzkfUy6QKTQXHWaF7rMmFLbL
	 vnQTeoleAvbjZetldOpTmnJi8XohMwALaLwYHU6PTfgWwDGuDHYamtPsR08FND+XnB
	 19F34mjiJcC6Xn7EO8X2SJ5iwrdWb2boK6/7IP9hVP93Ksp8Sr6JzfCzDmFayEx68s
	 uEIHPm8GoM/ry6uAOW/YDr7GYKAiCARZuxU89IFZfT6AZG47Uhybyr2Fx9RiAesb0x
	 sNTt8/mlAiUiMUdnuyBMC0Zu9XaQfX3TnIORRLTSTUiG8tIZDsECY/XGp6LvQDdxF4
	 7ToTqABepgo1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CC9C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172451855361.927.1478531251977991366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d41b0f703126d83e3c4632cd4aac49c93f1c2c281f3ee99868eb30b1839bfaa
Date: Sat, 24 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724518553
