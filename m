Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BEE1F76B9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736330154; cv=none; b=NiJfod/V9uWsomjy6wr692EWimBUtP2Wlou5jbuhEbhI7f60zW+MzzZUHb7oaSd2X2XrHpDNbdyFcaQOwlEjFbLK7NnAwyFiYeQZs7lTIdftfy6UjczJnr6mn7wJ8YAyHK/ordQ6cxBfsheAR6j4oILXcIACvAdeCwf2RH+9INU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736330154; c=relaxed/simple;
	bh=CiOWqA4+JjqjVpgdZ60YSbRMY/ZeW9tHAOuZBaGesT8=;
	h=To:Subject:From:Message-Id:Date; b=mv3gzu3dKRQQQ6VSivd3a5HnfFxFF33xKiHSOf2CRq5M3mJ0zFomeFD2aKvZka5FQNU099LkWBydZJAEj6c34Qxt0iRVnaeIvP0UwC9taTzCsbXTTGJ2Kqfkq2NvqalDneaUirRCy04YKlV8LgRdpKLyD04TP0j6zm2Mq96EGQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Urto2GVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Urto2GVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA689C4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736330153;
	bh=CiOWqA4+JjqjVpgdZ60YSbRMY/ZeW9tHAOuZBaGesT8=;
	h=To:Subject:From:Date:From;
	b=Urto2GVOlVV6HckkmSb5MwpdEeyTG9IE61SwPXs2j6etzb0JY1YmJaGt1REX0cuep
	 vtpmu6i7PBDJZk2mbGN5OTwU0BD+1mbdZrkKYe5MAIBiiIGPvMIj99LMNrOx7L2WJC
	 CU8me0DCZBq3deVgdVl4NyuI6PsCQWzpmaZocD5CgZg/VUr3f3OXSLdrNMaTz6a59o
	 9o/19LB8rmi5u/GjLPGwY2M75wtMtrCjrP3yFmLyxgVQzqkg8VFTyZtPobbky7NWGH
	 eceXiJ+H/Ojnl3tYc/TA4+z1jVFgW4Gx/0GCDEkrO3QdqUC7dvINC+GLPpBvniUIMA
	 APBsS3e+nf8iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ED9E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173633015360.1074.3212362988998886048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d492f3048ade7a08dd47b8d5047e588faf0a2369e68587180ed0e41053b00cd
Date: Wed, 08 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736330153
