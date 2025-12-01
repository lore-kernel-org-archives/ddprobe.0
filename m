Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE879338592
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764609774; cv=none; b=KXsi6hJ2zjUJEb9wnM463lWHWBMkNb+VQ0s8syne0AXGiRqBQ4VIBZUGBafPGRaykn9fq68jn4gFWN47Bnzmbtt/Cg4jjHXKc0jFDkMq6+PcaVDx78aP6X9rg4WlCZdzH4Rf3mN7tKfiMlD+cFNTqR6nF2Bu5fqZcyAvAeJ5QWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764609774; c=relaxed/simple;
	bh=IVY6DB1Ls04DpUzZV7APeTj9AG84OHEMExu6pxBLIyo=;
	h=To:Subject:From:Message-Id:Date; b=CNQg5K6l8GCoCDB3Dtzju6+B/HYjBHKPX0faToMZfGieBN70WQpP9WJwv5o+fRSBrXpQK1JcCQ2ecwjC1Z9ZCW1H99HZG8asHnIniiSKy2DTty+oFPwxNRTODgIMQ3DaAQyqlDXYIrljlPbw3oHx53ZwSc5OYj4LB94YXZDh+Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1UNpMOR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1UNpMOR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F98C116C6
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764609773;
	bh=IVY6DB1Ls04DpUzZV7APeTj9AG84OHEMExu6pxBLIyo=;
	h=To:Subject:From:Date:From;
	b=E1UNpMORjorxWzoR1djY4okGOsUDvz7ygAlCM7NaMNJzLFlBT5RSJbBwCccrsBHzb
	 v+GY8qgV+PKAfKCtPqag03UcWXisv0hJZNowObN9ju70WvtK2aLqxEwXKI7W87AoSO
	 Nk6smHt1lFBz5IVdI1Y/kjw8k0sdAWisXjnx40QPUpzLgZDKd0xkBbBDrc2vO+JqUf
	 i29sNIMSKKBw7JAGlVuVicm3j2rYV1xeRcy0pozlzl5YIao8URIuCpxUz6nW+uCulj
	 mnAeSUDNatNZcXud7rLmz+4WSS7SNZyP6Puu+UNXumD+6b6XIdOZItTC6os0tYoU0x
	 hK0zNWilAPO3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91206D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176460977358.14528.11328726524632177986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd6fddb107edcd4c110c81a5d944b9fee4f694ddf113163af97ccb19a1cd0d7
Date: Mon, 01 Dec 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764609773
