Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9883AB29B
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775855854; cv=none; b=IgH1/5UX3G5jz22SMUfhIoKaEBHoZepwSnquLITGIxwsTOwUa7fG5/ac3qAPdv1ZxgQgmcYlXM1sQ4FSCoaxkH17urjDEzjxZKbMnbS9Y/p1C7NNi8nbgvt1xLJ1Gh5KTDziXa9br7fgAzbuUwcw4Oz5f7df5hWpnuS4TDmfGkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775855854; c=relaxed/simple;
	bh=g2Yq5UGWsZu9SGc72Rzlhf0HkfjoV+Vib3xp/+tSk1Y=;
	h=To:Subject:From:Message-Id:Date; b=ZlcdTz1mXxaABeuKeegJN1FIqeYkQikPoKW7ZLa8obFCfjxzCcRyBrbjQ78EIxtZFgLV1pKzgPKXiIp/76rYFnOXcdv/t3BF2q3to/fX/OwglLRG+wKyqnIv+XWhvHDQhENv3MpIi53/z8sdgEq1IBXOzTaiyT5BtjDf/5v/vQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqhUsPf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqhUsPf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA3DC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775855853;
	bh=g2Yq5UGWsZu9SGc72Rzlhf0HkfjoV+Vib3xp/+tSk1Y=;
	h=To:Subject:From:Date:From;
	b=CqhUsPf5agIprtIbyk3d8Gm07MXBe0U327xLJHbuA74yh7YhQ3HTlqXFIaXfBdiAv
	 WZod35egFiB80C5UFETsq6HFn/TtRAVdAzeKF9NquURtBKEdC6zqxty/hn1DFtryYs
	 7DCVO1TmR0FiGJPLsT5WYc0gQWjqDFcBdOFb4L0Ccb+zZMsnI56uQTw+Aov4QOSLIT
	 XpfiEpSo6bGoYmTDprrtwQNvEdHaRE1UWnZnanCX0FGf+cIjpEWGfvRcKAu4vfTCQ/
	 MD9p3OncCZfWTK9o6c2BwPs2KTir/MfHEaLNSWSJsnZC4RU4LVXxEY9v7IvNdZm+jA
	 yFswyIG2WgBBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AD4F459E5
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177585585368.22996.8967761669847457676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47c9bc33b07ada6715bc8a77ed0d25ed8345a7d7176eed857c8f8ae1278849f
Date: Fri, 10 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775855853
