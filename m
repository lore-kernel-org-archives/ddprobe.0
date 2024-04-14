Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573E61A702
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 06:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713076763; cv=none; b=A2K4PcXP1RKY8E/IcDm7DHOM93KGpd/RQM9asbza2Q4E85+jBlx2/yhzYI5NGuPm7LOJookYxXlSuo6cwOeK9CJ9IkdcDVQwr60IyVBwsfzDG0XM0BLQTk6hqAkAT+aUN3b2osKjtoBrsORW9qcwITPQfkcX1KiB121bfU1txQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713076763; c=relaxed/simple;
	bh=JeNY5bQGF3aEc80O6alTx9acH7BAeRk53yr15i8plV4=;
	h=To:Subject:From:Message-Id:Date; b=pmxI4HehISBhjJbFX/bj1v25woYzZJUttGUSQzN3OxNaPTWotqKOLMizO4G983l2umbEah0DjFUS39A9rwJmL/TEPnK+oxnbOnVJgoip05Qnyxc2iCKPzJMtKdAvXEtrbduD6XkTJyNpAwT7tytwRFF79LVAna8Vu1xOF3lZXO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgtBlQ3i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgtBlQ3i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6485C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 06:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713076762;
	bh=JeNY5bQGF3aEc80O6alTx9acH7BAeRk53yr15i8plV4=;
	h=To:Subject:From:Date:From;
	b=sgtBlQ3iShw2ipSOMPSZhlLTgW/JhpWlcQblESmmPD9IdjVq38fAjElUp+wGIBzB6
	 6BqpwDQFVc2RaswhHI0Vn7ldTuVPMX4CWarREOpD5QFkXvXk1jApiHJFOt11vySDEu
	 Yr02ro76M92RHKgbjrEBtgM8WhB1162MTD5pNwIUZhDv88snSeAWjvy3gK8eadWyDv
	 qbWY7L/Wy/sUTsVtGSZ+FUO+KtmTsX5XHLDBh/6tJXOgQKBhorz52fYDRD4aJkdU5N
	 pqufN6B9Rix0k43HoDPj1oJZh/l5Sr4Jy9TRJfGHXp+JzPjpc2KwegjUgA3L9Sr1P9
	 gCeTuUyGIA4EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C06ADC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 06:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171307676278.27432.8783750771597978123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f76dccd60331ea22c665ee88b7a15059f908218ef804f401a045aa513642f22d
Date: Sun, 14 Apr 2024 06:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713076762
