Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8521F942
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785059434; cv=none; b=hl+B6fXObM9aoXdrdE/3OlJ8kH0dAT7e5FmQ5O3a7ZCyZspSsm0ISX97Y7nbA5V154APkiZbjkmla6n8fYiXISwd5V9DsEaE3G6JLnSDOFEGKQleC54QXx38TUQ64Akk5ig7B61043Tr3MOwf7CNhllrOlEVrrm117Leq6DinZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785059434; c=relaxed/simple;
	bh=GkdmSOKOoK8hBpq4ZmAqiOPy+Z25Ksc9eWcTjljBNUs=;
	h=To:Subject:From:Message-Id:Date; b=jbsrnaOfrRuroKe9++7LhPDFc7ptHLbHqiXa4HpLNxS0WjkCvbOZKvj8F+HLVdQFchwpxXqM9V5GgVvGeQtvryK5ycBJWZXYFgdijZqB342d/67TSjegPiJd+4ktpKlnapvt5152asaKXeE7NKS0b6MWzNpPOPFlAEOT7E6pH3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saiOChK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saiOChK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A9FC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785059433;
	bh=GkdmSOKOoK8hBpq4ZmAqiOPy+Z25Ksc9eWcTjljBNUs=;
	h=To:Subject:From:Date:From;
	b=saiOChK2MelLayFtiUThAK5mSbOKtltbOfNNKHC9wMQ4Bglmp653CiYFOjXfhYghv
	 ZLNkQ+aztxaDkJfPMck3x59DsMeTME7P+o8gzDLn/vXd2F3B7qqUyBZWBfTlnRAMnP
	 ZoucoYiOuUCIR2gAHFhjCpXYYbYFoIYUaX8oZSNzQDYDn02iBc2gT567tM+bhhMMLd
	 VwQdbMLiO7apDr80yxkqefVwHV+ndtan7UtVNIuRQg6+GFf7WoZt9bbp0LgWcbXpcE
	 8g+tF6ca1PteVjr57V6s7QEmKf/z5ixVO+vqmj4L4cHiaHQH4tPek+BSfifldgMwRq
	 RMoOW7jTsOPVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED57C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178505943368.13098.6406330759546691070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b79fbf6f4d716769f39e1a453e2c3b421ae8d1488a6632cdc7afd7026e8a35f
Date: Sun, 26 Jul 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785059433
