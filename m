Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235D22B9A4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777862854; cv=none; b=kuE4ik65tC3Mum/MQOG0XmwdnP1/Wb8svfi2pu7cMpk4mo7CblcI4eZngu4F/hqEUf56Ium0NbaBejV+E8rLrZ8BKF4crYSmmVz06jswJYwyPGj3IY14SKDLmMTTaAjaOxCLga5eKX3pI+vFSTPsvXzKs7fd9oRGm/fcvrPk52w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777862854; c=relaxed/simple;
	bh=fmVfb7py/GQgIKIXNhHorITbxBDaQv2VBq+4vyKTSDU=;
	h=To:Subject:From:Message-Id:Date; b=Z3ZJcPIhcuryLgf2YbHA+MXd/Ti256NNUpoyjbaqMhHspigJWCjg7AJl1/15DucMwsoMBV1fE3ohPr0LhfoBASPSzKJuRrc3MvVLI+Wu+EXLnxGtUZwGUfhmQsASt3zU1Yj4QyrWiWtx5mk6seOZTaNzhEKTTXrzQiNyjPcW0B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UH3x5tg/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UH3x5tg/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F20C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777862853;
	bh=fmVfb7py/GQgIKIXNhHorITbxBDaQv2VBq+4vyKTSDU=;
	h=To:Subject:From:Date:From;
	b=UH3x5tg/6lSxpIYxeS74U5RakhfpIp4o4TC6+H27mH/aHjrSPKlvWQ4puwIZmz5e1
	 a7FFY2jW2Q7HMWG1s+Il713HQRxdbVgyBfeMXZCij2fYMhl4V8SjG2JHe2gi/OLoxQ
	 OLufkS4AH6VegQ16ZEQ0YBdghE//e2sd/8az8lAzG1uRb0VRMEoojRWv82Z8xqdE0g
	 nTAEN/ehUIev+Y9HQABjsvLvfZA2qjM4DJvinNvKgkPsjUSAr1vwlxz8ZIuPVGgPaS
	 15uK9Zts38q8uC7oFT8ZFJl+Xs58+GT0rmY8q1huTldezmXvhN5IfNSX287y8Gv7Vg
	 +2fqXy104n1iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F59CD3424
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177786285368.4876.10871796508004859359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87803d5500dd161596dca75b193f3d1c4f51c2697161a1144ec337b4f17c4278
Date: Mon, 04 May 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777862853
