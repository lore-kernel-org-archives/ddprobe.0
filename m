Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D943841B360
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770216833; cv=none; b=o4rwZPCPvnKn/Xhae/PQTIDxZV5BwNrJZdl2Sv1tGJqxqc+DvldO3zwJ2WcNVA28eXqGwGgXeV7PNwpRCq9cZH3TN9WhTQevLzqxIzIr3+E1Beet+J8liZA6NqYCX/tw8Yd2y/sabizCRyRN4hI1FBbf2ckpd8gDHiMPZ+aS5DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770216833; c=relaxed/simple;
	bh=AQiRQLgUYKhT6Hg8oX/PDSYNqThry0ru29Nw+yXb7v8=;
	h=To:Subject:From:Message-Id:Date; b=Q5t300Gp61x5+/sAHoJ5MAYR0HduTD+0hBSfvo5IPbVzbd5YsqYZTCm/GC72ysMPmUNl/rasPj7IKKUiYjYNuAcmRLBNTFxHoCsiCE4sfz74uFNsgo4yT7nNG6C93TEf/mJf7iJOtEsZKt96NCBVcPX7O0NXwhF0pnLFG+OUOvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kX7RyrHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kX7RyrHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E6AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770216833;
	bh=AQiRQLgUYKhT6Hg8oX/PDSYNqThry0ru29Nw+yXb7v8=;
	h=To:Subject:From:Date:From;
	b=kX7RyrHOgJVkihp0Zb8gMaT7JnxU23BrzRvfnvWz77GrK02519ETjnAve1QpRIN4V
	 E9u1EevXZycIbWPM4A7Rk6+872Pi3NzuomXn78OONm28TDfLJXvo/KESe/7hGd0UlT
	 x1rFeRa4qROuDFIHKInjfb5IYiyXZKGZzcMGU0UfPJHFkQ7S8Xh4yHOEPAijdIErW1
	 vn0SvTSCHls5/aV9dv9dLiID4Mk5q4HoH2doiEPhwsH5mgwjb09O9W7U+P4lKRyDP0
	 IA0dc3LYkzysXW0aoeKO8joKRjQHvpQaE6uL+HeXeZD0IkXb41dWk4fvpsnvGdzKwC
	 zO2DRJP00ehfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FE2E9D3ED
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177021683360.32449.8940564568001749402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 260099fca77f04ead49dd1391b8dc8b150d3a3f8ecb0178620b4156ed6dc8b25
Date: Wed, 04 Feb 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770216833
