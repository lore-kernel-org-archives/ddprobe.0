Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C3D1474CC
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774629294; cv=none; b=SOP4zzGD+FMUYvAV3FTkBDja0dHiOQCY6d6svBrh0mMvB/3K72FHvKGvNIe1QTU8H5Om8+hyMo9bur7itj7AG973T7I4CVtoaGwqa3dLrP0nhY2cYU0XHNIUZrURFIDJL/BDvInFVKKqIL7VMXeDUcR8Uso4/sEQZZ+Vy9rksTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774629294; c=relaxed/simple;
	bh=tfaBjDzp/tuWx6W7ux2g6FIPzLaEGKR1MEih/k7snIE=;
	h=To:Subject:From:Message-Id:Date; b=OBzu5s2Lumtblyn2H9yIU2verD1Okx54ymhckc3VVEtNHQ8QCZnjMmYt6cd/DuFjam6aMt6pIIeud2qsWhFkSymUjoiR72x95/QtJKW+x1KvVuu+uRJXsh9+IGb8KR/236ZalfjT8SVpVDrcFOoAL0aIDzXFY/StkGZxWSX8ps4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3TiLbUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3TiLbUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A633DC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774629293;
	bh=tfaBjDzp/tuWx6W7ux2g6FIPzLaEGKR1MEih/k7snIE=;
	h=To:Subject:From:Date:From;
	b=m3TiLbUDKzIMz27i9tYFVzMpxEaPw6ysmZQ0dEiEf5q16qwe2znzWE37gMQNaiYrl
	 8niyWXb9GEuXSasmb22CPn/4nLhJDQldmfJACN0ocLPl9mHO38r7Zvf3ZjgSi4y3eL
	 v0R0lV7LhE7Hb6UsZdp9Y4e1sQGyUg9sdw7Odb7VUWtMrRMJG5zFI6btKzYqXNsYZv
	 wasnwIF9i3tThqKnweUrGJo7R1TOH6+RStISaAJAc2/Ex99bblrHWxF1xlEUtyAN0o
	 zskdJw5euyMebhLYnBuhEvd0C2/x18eLWI8KUiesHqzadnpo7sUelztJnCyAyKXU9P
	 WItHoM52ZrCfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921F610F284E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177462929358.15971.13792135077451795781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4254c8f41aa9bcb325103c471cea150582ceaef9832668512f9f7355fa98800d
Date: Fri, 27 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774629293
