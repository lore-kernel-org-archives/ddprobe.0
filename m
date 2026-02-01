Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1248C221555
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769931834; cv=none; b=olqwme3Qtz3RV47Qrpo3Gr+8HhSiuWaLuTKWXzKOLcRq8gJxL3SMdlMoy14P7NdtR/+GT7rt2qvSA8lT8Rsd+ealplC4NClbMaWGAaLRYA22xgMSwkCu6W6OJWCUhBKlfgZu/L75vQgqQVrCYKT6vTkqbHYDzv47qQBQ4US7nz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769931834; c=relaxed/simple;
	bh=UoTnelqwJ2+msgJ56fnHkORFB+/PY7gcriMLhg5wR8g=;
	h=To:Subject:From:Message-Id:Date; b=kexgcHv/zP9J86XeRRickYAIMRjWBHXX+nmGxFLsr1TpWUBhqFiLX0PCv3q24/7QYCJ00A+2UiUsGhOadPOKCqtTJ15r73RQBIa8LsebwlAIPwE/BpKMqLck9DUPqGAVyfI/sorltU7iykC50nJYnLbZ7mz30C02kt8BbCpu9ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmB2VITI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmB2VITI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5405C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769931833;
	bh=UoTnelqwJ2+msgJ56fnHkORFB+/PY7gcriMLhg5wR8g=;
	h=To:Subject:From:Date:From;
	b=BmB2VITIkeK7paMG6MTOWUEl/lHBsaV6tq42IYxP4AIILC/pdxmF6bOTxtk1HQiTL
	 prDpgZ6OXA3YpSejqPlL7cHCY3bXESx83aZKrwA7/6tgSnnatSP4xQe+g3S/j6Lv3p
	 4dGcA/3rFy1qdClknmSfdOAyde3ci/9xd3KjBpGLoGWfS9CW3gOBu1wWmxhCHlEyi4
	 ZDDGoOCV5jlSwthUWsGEMdJiAsjKUi0TRbzvkd8xkbhwtXI20hFqPt7YeK00Gyae18
	 oImWfE3kemZH9c6KbOtOi9ig0Sb5vYijdl1wRpUyuRM+9KiT2HmSuRkBIntG1UrrQh
	 T+42H2hCly+LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923CEE7C6FB
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176993183357.12313.61379970230515960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71cb6d25c59a59737c6ff45c832b0402136ebb160388f44ab884bc2297ad7379
Date: Sun, 01 Feb 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769931833
