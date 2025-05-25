Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4316F14B96E
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748207394; cv=none; b=VogxVrkjobxeklCxbwcyIg7KVD1nUW2qYCyf+RjiwOnW7dty8dX6RI9WWd1bxxCjd3OteOFOu7AIv06C25nqtR3FE2eqBjO1y3ouD0ywnPyoqlT8pWH79DSjQ4g30/o9jzojv2opsV+KB5WY/8Bv0geF+jOCmxKcT57oKcc9oAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748207394; c=relaxed/simple;
	bh=T4JGCysRZWZ/gHDJTT51aPVgrbL3bYS4Di+xDxwhLfQ=;
	h=To:Subject:From:Message-Id:Date; b=dfEuFK4/NUXQruhbmxcw8ZDnzkiVGeS5csDoLeZFCwJFpZAOh4DXE6DB1yIhVFtGWuqFCTEAvFKq4TjGEICpt1V9QQHdeOtycr8wI54NFcv33A3p2bwY9wT2BlEO7lk+q7vozr06kHL1evZzldZVef8koPWlIh9uBAmK3mx4UDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNr/e7Gk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNr/e7Gk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DAAC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748207393;
	bh=T4JGCysRZWZ/gHDJTT51aPVgrbL3bYS4Di+xDxwhLfQ=;
	h=To:Subject:From:Date:From;
	b=dNr/e7Gk6AeNzlOoBKzqIS/VIYiw8n3ka3IymQqkd6Grye5phIzz/L2r7WbR6rzck
	 K6HVyImf3WY/FfwoBCW1X89fiXZnajeCYEhkPTyIc4f6o+6yT7/0tvJ7arDzVuBPuK
	 i0IAi2fRtjjKKwVDtuwymuIDhf4h63MUWlpLFI40AZKOn8sQb91jtPwYVhW48KBSGG
	 6rR4TSuKyj71cP/mgpnpddm/KaSzfc8Ai7DZr9zIf2URHcrCHOk5tHXlGCFwUpQn3v
	 Sqn2Hg06X+xIl3uLjIrz85iWulY40H/cZDVYzjLRamj9w1j3DhAQ09uNauCeEFrb7J
	 oeIOcuG/YOZIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912FDC54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174820739357.29298.3945077409385128990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca0a60703f8112bdabbdc585917d00a9e6c94fa0c2813669dcf2989b2b23667
Date: Sun, 25 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748207393
