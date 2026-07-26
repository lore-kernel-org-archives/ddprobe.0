Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FA2137923
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785056434; cv=none; b=kH37LTePAWAnqNzdhZZ1iBqvmbjby0HhCCDtn5Tvel+HHMf/yrFz31tdjJR5PViuNFWZNN0jjYT5lamFTC2Fe5F+D7x29T0iJkrlCa3GJm0X9JSNyx3Yw5TEtgKCBHM7BMDGkYOrbUYW47PvBvI3TmR/KhG/cVbG/bAN9pjppUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785056434; c=relaxed/simple;
	bh=O2zan8vwsyczaij3jkRPs1AcBnqc4fWidS4GqW8Tu04=;
	h=To:Subject:From:Message-Id:Date; b=YfDbiwgiXV8UujBa9I+nzpnVRrb0RRmpDQll3YlDbobzzovDE34GOZaj1O8KbFHQIGv4LGWjETbL97AwnQtkLOQzuGI1AX3ODj/HQLA1hda0M97fcb7ykjMqh/vIpV9YyiRlS/x4OzcjRKH8339I1qnWVGgGMF+ucgtN7MM5boM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9NiJKb4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9NiJKb4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1550C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785056433;
	bh=O2zan8vwsyczaij3jkRPs1AcBnqc4fWidS4GqW8Tu04=;
	h=To:Subject:From:Date:From;
	b=W9NiJKb4SIEEB3uZPwCx5bYPW6pq5MlY6lsEzpMIM/8m40K54R4olnjIYi0xg/0lE
	 619QHZ+wKHvlinKNT+qeb2q16pGpV59sHwEvjVKQqXWzU5JTODiHKq4cZEdxfYjp7k
	 r4Bul9OpEJ1cCMfsNb+8luM1eoRjq6mWrBkxMARihEALk4gtmGE/cLwvuQp2M8Mdz4
	 bPxsnr4E2st/7z6rfLLksppGh/9ilcgcrROZPec2Mw3TIPB6XPMryyzMzmUOZqmIiJ
	 uiYQ0OjuihflDqzaKKWEPmb1n57atmaIKDSMWh7ULhMTB3HXQdecF0w6+5kvwyzMBm
	 ZRcZyxQTy9gSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB862C531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178505643368.3991.995472889950460615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba926a71e8994b667324ae9bac5ecacddeed4372b043d8867a756e0c67911d7
Date: Sun, 26 Jul 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785056433
