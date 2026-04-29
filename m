Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CF52517AC
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777490254; cv=none; b=JxIEialiiQSY6kaZQdQye4DnuSceb4mA1YEyFrxWqwCFI9XjFrO5ZlFapoFDFLQD9y2X7veEQL6UDu5A7grSnv5gXWmkemo3FMhpAPwA2GdeXQlcYrg6vx/P61fLbJGKzXqXNOjx0Fq6oud9EBESHSlVvQBo4VnQ8RiPOlyckyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777490254; c=relaxed/simple;
	bh=fz8WQFlz3NBmnto8AL0p47q0YreC54L0BXAab2GEcX4=;
	h=To:Subject:From:Message-Id:Date; b=V9FaYXlNtM/d883TwgbA/q/iSUco5V19lkkZhqe72XhasMbShnpZ8JSkkWM7CMa75E7Z3/l7DQQ82wI3EMC9uRw8oF/tx59vGEMcB27ILkHhMSp2MyQolcEp/YShKR9HUDd3M5GsS7Ofc+HOe4Bz427RUgYeFUe0DaBdWi9hF5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UVv/QXHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UVv/QXHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84A3C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777490253;
	bh=fz8WQFlz3NBmnto8AL0p47q0YreC54L0BXAab2GEcX4=;
	h=To:Subject:From:Date:From;
	b=UVv/QXHKzGQdzFN3SDmNx/NFBE2J3flAA3AzH+DTjEj9aCOvfd4VheIiKcxpTlVdf
	 mwRgbloA0b0w7tZF8Hx+7KyigHIeKUuNaWwtVM4O0gXa5xuo1IFmShxxKHggNYZDY+
	 vr2myx4nOVrNMkx3ApA9v23Zde476eMFkq4ClHohchjD23eFKrPpee4ecu8cD7/R5V
	 a0y5nv3BjgWUEEQVWt5ssfqH7RzPPacSj3aM7HQaKepy5LItFGhs582pn+0iRJgehZ
	 F/mjG/zbyjN4ZcQKx0Moc3civeTUtpDTruls5dBkXHCXT/JNMe8pPQG88WAnPmQd7/
	 bQS8X6IkZ1yOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE30FF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177749025368.17782.7211740820840719057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581e5ea8656e5e122cf185ca39da83bcc72139d46c1a66a36a497d707f930012
Date: Wed, 29 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777490253
