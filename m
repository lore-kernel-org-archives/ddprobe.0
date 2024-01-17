Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0034BBA26
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705474097; cv=none; b=M5G0pN/KkxksY9lEr16KtFZy/NRO7bYycAFSwOtBlKtURIZ3ysH8M5dn80eWfponTRqTaC8Rji3+E7Ug16kOE3QHsasRvpTUu92fgdqDdH+tidQfDUI2f9geuaV+BamoW+rCB0+T4TAxl8NvfhKmsBTMHuBe47yrfEQ5je/+PP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705474097; c=relaxed/simple;
	bh=ChZnuEWddRpxmoMEWI7pDrK2eggLxc09QUWMLmUSxWY=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=anIf51bPWokLIJH5ZsCbRZfl6L0xUBz0yQiQJtBNlD8aIIcGHX+Wjno+D4+rHIwb2SNzso3FgSrxiq1q5do+V5wb+2oj4otWPMgG0FxenvptSyvVcFdA46d6xLkVSn5hEqQneosW6f+BlV5Kh37DBUIpe8SSIttyrfioUKCgp5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCrrW/dt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCrrW/dt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76436C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705474096;
	bh=ChZnuEWddRpxmoMEWI7pDrK2eggLxc09QUWMLmUSxWY=;
	h=To:Subject:From:Date:From;
	b=WCrrW/dt2a+g6nOPr5poyd7QwObawtVaNcHAG+5wHpvcS/TEKpw1xOekbTIc4mLkT
	 dFU4I2+4hHQV7Frys9WLXJJD4xbWJm0wOiwapwI9EULIYV8wAwwQaCFf4XypFtPEw+
	 hZjZqZKvlJxncW2vucXKZJy1MTrIDE3+QlqDrdFboC1f5j5zTLxHYUaFztljgG+shy
	 4RTYagdPjiygbN9GqI3PCpkS8E+qmCnRy+rCNl43mjDrgvrAxVoiSKUMEZHvJpgmPT
	 QfhOkNBQvFgzhWBNv9WXhLRsYlGkf4M/g8o5s7DngsZQtx3Ti3hwfdV9X2Lfdkywy3
	 rPrvY4h4yOGAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F3D3C47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170547409638.12334.6137773026349224616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd474c8c045f0c90d2bdfa0edfeb4f475415aff632fe5b32a6eaba6cc4b60073
Date: Wed, 17 Jan 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705474096
