Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2703023BD1D
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767181434; cv=none; b=ELSD15xRApEzINx5qIk7hrtsF/yT+Tev6goxtKT2AHIuTgD3WE1ZARnAjSB08gUqaPDYSIA/Tn8JFIu5NKMfv0IR/F1Njh/XiGUXH1esVYKV3lJz3Blw4rRTlVATK4GgaP/Q45esJdakh8PCFo2vFtERH3gfsbTSrws+DGfghvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767181434; c=relaxed/simple;
	bh=cd1BD1hf//MBP/5bRlakAdKUB8K/xXANX3VA1oIy8E0=;
	h=To:Subject:From:Message-Id:Date; b=meRV5Ar/CISO2rPH66Zj73NY8UQC0PIR4Y0g8xAOomqhPn3xQp67uhxj7YoO6/mFfQK1KSa9zO43vNSLAwzr2+3yFxixUGDtgH1QsQWQLXQrbI/R4N+pql7fZKgNNje4E+u2c2Ia3g9SE0x6SK5tE8yVjrIxd937Db0EJpEEVUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bck00GUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bck00GUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A37C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767181433;
	bh=cd1BD1hf//MBP/5bRlakAdKUB8K/xXANX3VA1oIy8E0=;
	h=To:Subject:From:Date:From;
	b=Bck00GUgXoRVU3STdE2YyIlOUYsBiR4Ik1EyKzh2uvy7c4p697qisZxVOM4C1dgzi
	 Ty9YpEGI1UWvZblLu9mMSW885KU0iosdgbfBkbOBltV1ZaemFyITrrn7wcZSsyLRdl
	 wX5nyB7wOrJ10NWf6Yq+JWSKJaHJBLheH88wFDWhwfvGfsD/PMfbg1CT0V2vgb5zbq
	 CakwHAkJbk43Jk/Sm+nYP1hY/lpQOBYB5lvImHsWhBgZWP67XAFsDPTZqIvUQZUFg5
	 Ro2xDozU+qlw+A9UKc8RfdQ56D9KvsU3S6NFjq2NwpCxc2nVhCFAfwP1pHnc1QjeGM
	 lZvY88iroLP5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956B6EE642A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176718143358.21169.33536003772610939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa6e8f0925516205151961b3eafd30a363f847f34b6d9a63d11b4fb2625f0ad
Date: Wed, 31 Dec 2025 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767181433
