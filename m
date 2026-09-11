Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3EA364038
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789139434; cv=none; b=tGJ923LuV5KTue8j0ZSjeOI8GX0XoWRsXoQO/BrApAfB7ppDHkfdiSOzKbjomwvdd4UCPss0xHr2FXM/4oOPu2BxL9dPH12EIjA541ewGUVgNjCn6bTUUIHbeQPs81gj+tS/TV3ofS+xjI14AizvB2Pj41V+TTd5fsNz1kpzKWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789139434; c=relaxed/simple;
	bh=+/aPoWlcuR2Y10mnPNpYiAgKEvvpGexADw/Q5TwtNro=;
	h=To:Subject:From:Message-Id:Date; b=TU9uO7rvbHYXmmJpmmzWVIo2+0Ta52sbx7K4HJ/8jBWcjOsRRMlSfaVcF30jf9Q+raJP/qS88Cw7mXdzTqkuIMHcwmchb6C0OsREqmAYnomi1H+b3wxNcfRu3lF2wHBwYkR9vBBujtO2afmE+a2g/EZHoucuFL6BQ6rRCixJFEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RH+FciUJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RH+FciUJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2618C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789139433;
	bh=+/aPoWlcuR2Y10mnPNpYiAgKEvvpGexADw/Q5TwtNro=;
	h=To:Subject:From:Date:From;
	b=RH+FciUJuq11SyX0hZoZAdAkhIT6P3S5gEM12uK5Slz3i9buvMRyFBnjrQLAWnvRO
	 ngRXJNyzUyQrEzLS0FdmSJ6N2GfmLondz/7zIPbR6A7akiZKKADuUH7Z5rMoDRZnjo
	 1WwZiBEqmS7bxvEppabfloDJgvT6UbX9fqYXWzcN4nSu36tLOLReG72IZChTEWB3/o
	 fss4VZtscfeWDFwzK3Hw/x3dPe0hZh5J0uap8t8Rrgnc/H19hWpCiIkVQ/8cEnSphA
	 Skls3oH8/WICef1t/z+Aa8wz44qDaKXo0ioEQpaHj1ZFEcFwDeEGUCc76KVmmFGBk4
	 Mk/v79kE8xUow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACB1C88E50
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178913943369.20711.11968454196712182841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc66082e7755ea1e66914e5129b8332b0af843bad092c2a87c9bb7dac6569f37
Date: Fri, 11 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789139433
