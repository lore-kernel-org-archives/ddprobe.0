Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCEB345CAE
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778248054; cv=none; b=STbMsFJoX9dQFiTWzKTiJetIg+3xrzpCQb64k1ftt1ZG08UOZSUSVWa/EJeR8KBn1sLhBzTL7sL7hipAIlc68Ptw9+X/Ay9aQbWCPIzMI5P+TuFATiYtYBu558Yb/M5CxLEQdDmnL/YDf4NoDAGPimeovpzJFLJTHnUnMeL+/A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778248054; c=relaxed/simple;
	bh=ETmXhhulWlZWOsxEMmzavtRaW/+CIQseXUjqkHlKtT8=;
	h=To:Subject:From:Message-Id:Date; b=BfSvvq3SH2FmZu4brU/1wnqMg8+DrDl045ZHua+E/qcs/c+xUkfjLtHRx5UcvYstx02c8YoC+5jjHWqAJ+6GSPwVj6sw7mW60qt6PlFWU0LHX2PjX9PbEGKWYf2YSLTcwTFLShsNZ63Dp/CcbQITCeV7MEjTlBkD4lyHinOXyz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UoJQFeFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UoJQFeFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCA3C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778248053;
	bh=ETmXhhulWlZWOsxEMmzavtRaW/+CIQseXUjqkHlKtT8=;
	h=To:Subject:From:Date:From;
	b=UoJQFeFrBoyUdQVjphacZYcrJuZmTMdAVxDVKlwbvMNuKtTvuUX3r//TVofM1qzP/
	 fAaqV3Deih0r11DB4H8OWa/r0g9aRD+3NtRcPub/X13BSoM+Mnc18jRKrMgfhekKJc
	 zN+8CXgh7fMOwfTNklQ65T5Mzt/dUQoBXir8uhnedwLmxUkkcbc4iMr+pg5l6EQt1U
	 J81v8yHTcPosY2vlCel4RmljL7+C9MJlvpzxuY67OQhezxZwGOGHBcHRjw6xRmDY1o
	 D3YH8EDPZSJWASI+VhnghHcMqFlx735E2HgBTsM8qSKuaJNS+YuM5sfoFzMiRX8lWY
	 kXnoR2+EFlUnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6604CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177824805373.23051.7573861879762143873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ca0dee250f8fc0a7a503f4eb4f9a104923ad0b27c5680314636d38b1abb74d
Date: Fri, 08 May 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778248053
