Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0121FDD
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734235554; cv=none; b=V/u71VuxpiKAzlgFcFQZwO7O6F+6d1Hzdp59L7P9XtwbyYU/aFfkgWxNpqzG64nEnrxqd5/96mXDuAoMotu/1xBA9Gn75UF5GtWdw2Hw5f+NeQyxB9JXzhJkZzAr1PcUL70RVtJn0pp80wRUW51OtwWMLyC3fx3ZXG/Yk4dosUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734235554; c=relaxed/simple;
	bh=Mj+RSfPmXKlA5jlrbprVA0e3GGSy+JOrrj7O9D+AJlg=;
	h=To:Subject:From:Message-Id:Date; b=Ho058jFYqn6WLpSxisj0Q1rWTC9rroHdSVeMQRR4KTKzmXyt7xDXje9k0p+ClbFTFOEiS35UVG350bpzIOsJBafyv6mnue6JX4Nq4rexJF+Jjkglwjz3V/gy2STFdF8Otuz1CkCz600ZkST7s/nChUXvHfrVVjxfPGmWG2fb89A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0V9/+mi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0V9/+mi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00D4C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734235553;
	bh=Mj+RSfPmXKlA5jlrbprVA0e3GGSy+JOrrj7O9D+AJlg=;
	h=To:Subject:From:Date:From;
	b=l0V9/+miMcCsVVtXgnvUsYx8FWlFUJz4+a0Grzikpk+8IC8qoa+eIQSiAuSeGNo3O
	 GrXDAUeFsGu1gi5o5ZR78m42+5pFQfJCObht6kH9il/3XD1YvERv6UJ0Al/Us8b4Zf
	 /SehgswXcmjxMhfqVaENTd637ii5X6t1VHKT1rkDUiWwkjsMoZDCv/hyd78HaP3dB9
	 GOrboaIdqZtG3UZCAbLUamb49qQPzMAcPIGB22WqeKY4HvXmC9kF2oiloGTeYCD1eD
	 jJEe4lMeZzNY25vzVkxi6PS1MxKSRix/IY7wQHij1QetA7avdzkc7l3NqnYCtM7OAi
	 QTtEBteEoC8ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D43E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173423555360.24811.12536314193955854493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a96fccbd5f6b45d5228be3fd808ccf4a0604a337c9f1320f279b8c8b5d244f0
Date: Sun, 15 Dec 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734235553
