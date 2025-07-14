Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163A626A088
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752506994; cv=none; b=sQxf79hdZCqPswB4+D3OCXhe//VfhIFFR6pOYy7mkkB6bXcFurgTnYPr8xfgIaXk9kbVb3IKvXVWarviiT5tsyVlir00pwpnucOzcXTM2nxr9J5z70fZVbFXfVhgTqATmqCU/RK7Imfi3UXHLvAaDTRF+Jr7GVHdxmuHSGuFl7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752506994; c=relaxed/simple;
	bh=pGB+W+HuaEIzM1pdSnDJMUonmRCRClHeR1/fj5icnN4=;
	h=To:Subject:From:Message-Id:Date; b=InjCNiiK9nxahmU6R1N7t4WdYSXvoW+OwhH8b26B6NVt/kmjV+JIw0xHwiVfk8NVOvc76Sy4feYiS7VpExO8xbtIrtLRJ1RGUhPKsnPEMPDvcmAiRYj59tbBdRYoBWHOjMAJurZAJ0mmED+9i09rs3bdqn8BoZp2Vx7cN6d+C1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5Ca8eb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5Ca8eb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30B1C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752506993;
	bh=pGB+W+HuaEIzM1pdSnDJMUonmRCRClHeR1/fj5icnN4=;
	h=To:Subject:From:Date:From;
	b=O5Ca8eb0yneRUa+eDK0ToKurldsxQB0YUEEGAoDIweZwLA+pZ+o4sK7BpfeT2k/Dw
	 m5l4zOOlhQeps51gfYVwwT+bhSx1IDq3NYcO64jnwtoSh8Kpxs5QG47TNRnjMjMWFD
	 ME301t3+ay2oUUmKYGnfk1cM87bcde6mC1JgnKEBheBjl8Mk8Bg7d0+/WEwrHmgkR1
	 g1q5MH7YoReaI29oZQlmzOXEsuwTjI9LYWBD3zDWA71Euuw8cBoFQvbn7dYMCSUNfF
	 GS97ac2NAacl1sBfx7CyU+5oBpz3NTDlCa8Xw/h3oOWngD54Qo6roATU8JCArRERfN
	 dPGEcAsm71hqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928ADC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175250699359.6133.1591000225871569647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 291529efbe125ebbf2b289f17953c35e8814f41282e41fa70a7c459c22c39d9e
Date: Mon, 14 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752506993
