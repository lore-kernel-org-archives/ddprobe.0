Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE9625D53B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780723474; cv=none; b=UH4O3tLWwh6PxPE80qf7ru/E3zjyn6uYDKrKgo56s4U1+dI592AygoT6NTSKDMv+/zGfG54T+H6XDgRZ3OSK7Eot1QYKoIGwXUUv+SGEiyfUUhDKUrhb52FCqa2Q80WCZHi2RiNAJXfkUaOQr/qVNGkZ61G/aksi8lAfs4Et7Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780723474; c=relaxed/simple;
	bh=wHUTnUK4z2K7i14mV7R3SnVRxlTtdDdpCBASTIgmGho=;
	h=To:Subject:From:Message-Id:Date; b=XagwuBF0S/6Mx+bV9h5MJISYCsCix29r5DGSpYzfOazgfDN7uj1DxlocRJPtR1XFfWpqPCcg1RnlvNxQmC4on7XRhWqOB+pEVh1gESh9nJdRXaFRJKAHoerRCxcmHT+B+PLkrCmxqJ6rJ7rN58gPSoGMVtHllm9ytJPdiGLfWJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ach9D2Lk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ach9D2Lk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6592C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780723473;
	bh=wHUTnUK4z2K7i14mV7R3SnVRxlTtdDdpCBASTIgmGho=;
	h=To:Subject:From:Date:From;
	b=ach9D2Lk8VZsasetZcQ7ALyk5SutQdw30lMoBVfkXkxmrkfwc78whYMWYSroZJpqe
	 2D1Z9ynFkNhAV4+zpXGl2zbCF+v+1ohdI+bgI9bORxmhO2/yv1sitWp/jMPQXTUNHP
	 oOI4oUIBiT2L5zYcEkGzhPMwJY9tpeBZF5FIoZVX+RYm80IiI1h1LJg/y8emtcIVna
	 NHeqofKxT+LUXda9D0f0ctkvQm0CaH+t2qAgl6DVsMzP228JNN8A2yIoDfo98hO6hv
	 LD7mZfJX3neuxfqRobD9gJDZQ05x/X2336qkYoYe9LM+xGtpdumou1Gi0wselT9Wkc
	 Z8ryvnHQ/j5Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD846CD6E55
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178072347373.6288.18321684515911252612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb3c87b9d9c478a063601c23cbaf4cebb5f671cb0924336bc94af13e1189f36
Date: Sat, 06 Jun 2026 05:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780723473
