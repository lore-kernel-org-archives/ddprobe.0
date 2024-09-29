Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E25B42AB1
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727604954; cv=none; b=mbfGQxGx6cR+GgAlXjllHWKlPEHm63jAg8TNrIEacNtVcIOrEmNHlfcv5okx/kSau3VyX+HB8AxqEKNuVsqJ0BggqPAWAaiUlL3rNvLiGv1OGL0OBfvdE9WsxqKM1VOgMM7E14eTOQ+UAszEQdYqrVVYKBcjaAca2yPkbV/n7N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727604954; c=relaxed/simple;
	bh=IAy4mCSf55r6i7tTfhc8qaErO8F2HOfXnRAzjhkJ5YI=;
	h=To:Subject:From:Message-Id:Date; b=MoofwtJChfX8P+8Jh1w+RotkHaORkS8Uc4mEAJPAgYF7dLyDMdWZ7N2+0hybC1bufls4jzDJX/fmrd3wR6cQckPGY2HDUhxabZ1frSRPA6TdDDozOWw/vplKTKMGPyrAlb9PLFjGaKoZgmZ9GjflhFQpX+0KlJWRXPA95Kn5YCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAKqSB0k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAKqSB0k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0079C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727604953;
	bh=IAy4mCSf55r6i7tTfhc8qaErO8F2HOfXnRAzjhkJ5YI=;
	h=To:Subject:From:Date:From;
	b=NAKqSB0kcOiQ742UNfVgF3Y1M33dQrtpdfNgzUQKlo0vyZt5ui8f83PAG1ca0dwiF
	 E3DHYq0icKNwhm6qk050uqPE2TgOSmI0bgeaLh75n80fu54flJHuSN3OfiqG58lonW
	 qKTLUpRIpVvXe0pW1IvFMZ+99OqtSFXHK3StG5YU2A9NHo/GJFgShXMQQALDIhZ8aJ
	 h32f0/9ZMD/BSKLeU4bBj8uW2IbV+tKyB/95uQSu4PgWBs/FHSoemBQ6/n+W2eW5SY
	 7Xn2b1OLsnibsJlNGGc6bGSPytmNCGt8HR8Vt4e+Air+Zg5+wfauEsLRwLlJCsjlds
	 Ed5L3O2dzz/4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B547CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172760495362.9513.6847708626176991084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5ab5b671145fefa0fc64366d20109d8dcc1d122d326aa0c45142e6bd847d21
Date: Sun, 29 Sep 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727604953
