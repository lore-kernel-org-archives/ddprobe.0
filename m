Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0965C39E184
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771940694; cv=none; b=eiGNolNAYGWanK9mbyibMSmCfQ30uo+aHSgFxm/6hyItnE6SLLaJ2DzgfXpAEIyxkwhd9FiI+0WzG1p3Wu2gm2kbyHUsMkP+JwSGKQ5PNo8SCYhaN3mfYbIGgqRekErJwOo9U5UNAIlP90/UOzyeRw9o8TWXD2BsH6LmPIprPJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771940694; c=relaxed/simple;
	bh=neI4UccMWMZsVgboKIUb7H7fpf2/EIpkWmHhrLHpx2Y=;
	h=To:Subject:From:Message-Id:Date; b=AXC2nlNvPnG8HCdIOxkDGIQhS2eOmJi1zunb4zNICktqyyC8mnQxxL61JeEoT/q9cy917ekCAL078p3N2+jufMy97kOU+XNAppoXbyl6XexEQYzWWhliH8cMjgYXMw7zmscvpgT+2gwFTehAv0dnWO9Wir9XTRkMFklBxYt1rh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOKxVgQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOKxVgQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6440C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771940693;
	bh=neI4UccMWMZsVgboKIUb7H7fpf2/EIpkWmHhrLHpx2Y=;
	h=To:Subject:From:Date:From;
	b=mOKxVgQHWtrRRvoIud0VgqZOhD/JxLGKBZUGXpJLz6z/OATE24e/Byg2UBu0sgK6T
	 wGCV+02Jy9GUD9ddjf50mL9WdD7x/0SXMpE9F9LudkFQ91dzUmDOp2g8oTMfROMGdL
	 SCLalLJs7v+iRrlLU5auUDiU19wohvPaHLId8wOnZR3qh1hy4f+e9EuZlmmOsA5EE3
	 2wJ2bEdLJOQ2Bt5uDziZo5GX+E4HE4IffHB9IQKFXz8FLRwAXDT2rs24z4LXHvxXlU
	 qhRp/unpF1EwL/1s7tfLF9fzXQYULVbNJKen6skl6Bsvoh8lmhPu4LrW4SbYg7AqRl
	 JxIdL7Jh373Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9474EE9B262
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177194069359.3292.12516315623311820290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a270ba49daaf0dc5d7d575d976b1e16bda257430946bd9454f60d2c4d71b3e
Date: Tue, 24 Feb 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771940693
