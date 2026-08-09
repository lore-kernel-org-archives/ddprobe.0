Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A4645BE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786234234; cv=none; b=WiC3v/7X6BBRXUZaqVd9N4+EWRI9Ed7X59B2cVSisa9NzbmOAQMKfSqc2ZtFvDkkaYUJg6RxhVlWKmT8PzH+4HOOjU0FBucqkPzcekTCqJ/KIRC/zJ/Bd42CiI1V8iaotLUyVXT0l9JGDD+h1MXNMAadngsyyg0PPOCrj5a/A/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786234234; c=relaxed/simple;
	bh=Ac4qxlBRzuPB+f2TZE0tMt7JPkYusxcyk5KzrN6veWw=;
	h=To:Subject:From:Message-Id:Date; b=SBwJf4RY6tGN2pvupHFGSmPtQIFYDf0CJFGGsSpKlUN3V+tMtWgP0+eAdvCZs6nanNwAu+pETG9GBSUoLx+3zgOBLlmFJG+39v+vVEwE4FzVtqOagZ+4hNoS7L1LO/oFkeybwwcTSUr7u1R4Beoai0pzRTKsvV4ZAHpyyheo97s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmHiqy/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmHiqy/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D505EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786234233;
	bh=Ac4qxlBRzuPB+f2TZE0tMt7JPkYusxcyk5KzrN6veWw=;
	h=To:Subject:From:Date:From;
	b=QmHiqy/d4BpKH2Qzj598ri5en9a39gZ5Xt/9IxsCbItTnDoxZGNWa4aNNpdl9f/Rk
	 8oT0xVt0ParUdZGaaQVz476yjqTwaOcQVDgIaB/CCI0Lhq/YLKMc9xGaU+qMGzU51j
	 f7BFm9tCL1+i0spGLRvXHrIO1fHUGokAgdkCy+sGgOuP3kkFB/Bole+H6fm7UUYhAN
	 YxPaFI3laDABDqHAgFoUr/rLyNXOzZlO4ur90lVgrhYSx7VfcCpNqwNlqp0U37WLaQ
	 +b9vxZYB88P0tuB67x6QaIVAVxLAxnquVRzIQqHb7GAjEnGDAHhNIjFoJxD/IhNzHS
	 Fe3KIsYuihlSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1119C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178623423368.8461.4599650624892469822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ccba96d9e767fe2264a504dfd380d797a61a52d6ee10ef79a7f75c632d0463
Date: Sun, 09 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786234233
