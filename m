Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9373AEB38
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787151634; cv=none; b=fE+nlhSh8D3dJM+3cSE0lC7KRrPanO3WRHthRoVh/fgnW66Q6AS5g2x8tgcXPY+M30E/+thuoVqvKrU8YwgAoUx3/E1OmtYSo7/VW7nlvkhGJvu9Wshehco2pDEtqtUDYeGE19TaoT9QndZ3Wot3pfFO7rTwfvgogRkdlMg9Wrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787151634; c=relaxed/simple;
	bh=a8qPRSBJ96QVwQ0WZH3Wj0msF36nSmH3IfPrhp9zwwE=;
	h=To:Subject:From:Message-Id:Date; b=GljjRf1P5uQlsCuKsTRFPVmvOEMpz98Emr79EnP9XvvCjPFjM/NTb6wCwP/QVB3A3gTl3Q4YeSZELWdHGpckT60yaBxhZzjotO9wJP8ZYcquJ0mA09tHyve1ZRiTLW2Vkv4yUkoJ44H4wFDp2/rFdxPWi61vhAla1zjbAvt/bOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=he8aG7vv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="he8aG7vv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C2BC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787151633;
	bh=a8qPRSBJ96QVwQ0WZH3Wj0msF36nSmH3IfPrhp9zwwE=;
	h=To:Subject:From:Date:From;
	b=he8aG7vvdWgPj3igHvfpoTWoBu/FYJ5fX7I0j6FVm8D4App8SJ43NN5wXsJbierEB
	 2H1jrIdNsJ56vdAgQTykHmjpn5wqHZI8f7sYvKlZLOigjPP3fAyLGtXLmLpMqZE+uh
	 nO0907yf8GPnIFcYRTbDEcurIpmpZh8WCQVAfV/HpgeWGU3gjMv4iq1BygrHgwl+Ax
	 NOAKvzpT9LAJdfhJVAPIGxv6SPQXsRo5kJyIdQv8p7sAC5WZv5Rwieb/Go6ukE3BaW
	 Myy121oIpTpIJqDHwDPdTKflzRsWCKn2HslAikJb98M7xavjQjcRAWjKejlIMlZKj/
	 FtAkMQZUjQFOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF2FC5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178715163369.28528.1909209346395708534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b8082e87ba7c86c526238af13f07b6fde680858b00465d7dd42c95b5c85d443
Date: Wed, 19 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787151633
