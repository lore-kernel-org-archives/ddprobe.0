Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5792A26AC3
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791171034; cv=none; b=Qfvl5T0pLa+uvjN7Iof8XxEuTCff0AkWj7P1iLJlkd3nwy7dRuoBnU4Ji32GYGCDVBADEWVyT1XdIGkpBBE/xOO2sp4NOjXnfygoZ9z1vyWTIp+RTBaUb2pqoQqIIKxdz1llcyZY4jvw7SUgIkcNQvrXmG1wLiG7BZ32xdNjM7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791171034; c=relaxed/simple;
	bh=uZ8F4GeGy+2v2eRfG7unZbBazMOvAoUVMCa3OL1o62E=;
	h=To:Subject:From:Message-Id:Date; b=p9HxoEXt09IOkXVItDUbg5f1pqJRdkeKvXfsbzG7HUDCARnGgcZtgsc7E3DgNRKqdJQCKUwWSmTxZ1GOop/3tRzIkTytnNsrMut+G5LlzeTkt2DTGaB2GJBPto2WcI8ByvLT3/DvnQ/Fi31IXo15kyvalMqzF+E7Jc8Ow/1zNF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTbHHkpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTbHHkpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FAEC4AF13
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791171033;
	bh=uZ8F4GeGy+2v2eRfG7unZbBazMOvAoUVMCa3OL1o62E=;
	h=To:Subject:From:Date:From;
	b=UTbHHkpzosbpL+Z+WCLY1IbW0fK4xBmhIKvHcqjJidRiNXaRDF8eWZnrA2JasMe/W
	 /ccDK+tygcPC88QJbB3I6NKPeOkAiD98sHh71SQf4nDqXHyKGyI9z3SqMSfhkp2bpi
	 TtEf3Ge1uPdflrCf65Sh9KtbUEOoZqP0QUGlmdtWNZHVEU1Wen0pKSpOkQoUnhb5am
	 tTtd5aFxhp9Zg5rJYwYpPN7Yhlolq0nd+/WRiro9wCQnYYloH/k/ikuSHhEx9yfK33
	 nMjsaHRaYswSDZ3qybrlbQJ6iqw9V/IGo0ZXCumDeP8jq8hFoWdC6Csg+VWAvrclUv
	 EwOVaWg22SgTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C22CA5FE2
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179117103370.10869.873701851522159812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5dc3b1ed95179ee823153ab0ccb489e2fdc68d4018bac1ab4f0305b417926af
Date: Mon, 05 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791171033
