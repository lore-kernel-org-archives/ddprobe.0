Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79C50360
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721002343; cv=none; b=IAxrbkOKDJye4wkGBa5ZdClbD4P7Qn8cRzqvpZJEtBKW824gysts4gv3fnRuHK8rxWZIE0orgJ73zbLNH8X/LT44VOK0V/aSxktW1SqOUK6I5ec+nUbFGyNb+vnW5utKXziJRv6XIzsQJJswUi71xbhDNoxjSMiRTvJOn0NV7LI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721002343; c=relaxed/simple;
	bh=3vZsQDLFqW8tgf3wZVidI6cuCJ2DATn2uU4150yR2jc=;
	h=To:Subject:From:Message-Id:Date; b=hAHhJS0e9SsOObXMl1b1VUryQ8xWc/B9nxY9pGHgvWMpm3VA4XYuWX+0vU90gU0FU8XNdXsgJA0DtqcAOtXb4qGAuvU0tuHdwmuh7mWTAc3ULbNKLdtWt8KL3GuSNHv96/yRTERCD/lIz/bcokfOis24FilMJ/DfX69Cx8VeGSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzfXv/Dw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzfXv/Dw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FA75C116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 00:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721002343;
	bh=3vZsQDLFqW8tgf3wZVidI6cuCJ2DATn2uU4150yR2jc=;
	h=To:Subject:From:Date:From;
	b=nzfXv/DwH4Lvq2G7I1BXyYk+8gmdFqJSWIgPKo72Uwd4Wg0wXvre6G53hMbuPFgvZ
	 o6Ey2ESyjlaO8EYQc+R5YJeJA3eiLUK397X7XuBl0NtL7gIlcSYuXf14OcnQX0pLLj
	 5H30Y1hy7Fo939rDs5+8EbsU0oM/zhxL13OU+8DaEYhk1xvMt3mhLp33tSD5GGS3U5
	 N2Ssm+b0guA05s012cHQEZij/DZP1++QRbv1+vBBiqd6JzUITXFEGhU67NiIXE9aBM
	 FwwVtwVpEd8W0JZ0hTT12IzcRT3vqLzO5AeknDdAUda8qxMZzXVo5prDQvCnv+kVkU
	 JojHIznvHLEGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E534AC3DA42
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172100234286.30122.9270107189257958831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e5b1b8565f3c6afde2bacb83fa4dcdf9acf2a9b80026a1f839ed70a91ebd0f
Date: Mon, 15 Jul 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721002342
