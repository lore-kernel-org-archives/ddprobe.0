Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BE152B1F1
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788886234; cv=none; b=MuBl+uxQRNk5ZRgUTayuioRWj5c53XgPakcB/AUYVbccw7691aGSB4lm4ecc9KDIHQ+G/TwUpCzBfUVSSIwxTfhokCX3cPCAln5bIGsu9eJdJEyrYhcPgIbVJeI1lRPL6fN/5I5fAkyC4IpIU8Wtd/bURCLSngJc2QMW/ss1pwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788886234; c=relaxed/simple;
	bh=4WcJE+zYGrtoQRb4BausAIOiohBujrRji8yTtUSrjHY=;
	h=To:Subject:From:Message-Id:Date; b=Gycr8ydi3u8zb3FgKMcZHJ4FKzjRpPFLW9lVMKIeVBbYO66DqiuqIXJjMNjm+W0S7hjL+bwpfwX29Nw6Tj76tGQ3E4//DWmgqH8z8uZpEWVa4iLbNR4aJ6CEDNbA3xIcjJArT+7CnE99hXJZ3Wf3neiHYLG9acPbZoAFqgub55E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pr4qa4z6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pr4qa4z6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6118C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788886233;
	bh=4WcJE+zYGrtoQRb4BausAIOiohBujrRji8yTtUSrjHY=;
	h=To:Subject:From:Date:From;
	b=Pr4qa4z614Y2j5A0UstYXvAeAJ43vrxLf8nvRWJo588KCaTIXYgO1Lukwqi0N34Hc
	 k5CFTVfBpsRxkJYnlaGnMiGyGd2jT/jyonIGXy2Tj7qbkBxB6nYnypb9ddrdiMGNz0
	 HnihGhUshrhoYlwNDzuza6kJkrUUHbTVIjkM2WRTUHr4WdtxQ1D5iWd+kNFK0lWLeZ
	 FF/i3CqgE7SZENS/J3ol3FTcfaX4BWbL8U0aZWDrfyt6zXhPrvx3exCmG+hJhq/3GK
	 Ln52BxMajLLp6n7Vhqlq4dBAsYk4bMAYURMq+EMYiauuvtWV4epemQYgH/Xg0tmfXp
	 CTRLeyjonU5pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8796C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178888623373.16273.16067820812905312284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 453625692c3d38ea6eb95f468111f834db39b11c4440b16ce1b1bd3a74f714dd
Date: Tue, 08 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788886233
