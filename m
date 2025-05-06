Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C4330C1F5
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746502795; cv=none; b=pUc/CCStkVynZjyPV/ya022PelRu6uRW2ZGvlxCgWQE2bS8YO756mfK73DPXPnhg95pNNmOX6P5ckTiY073GqkqdC51uEIKLo4xd4bDs04UOeC4DTJfx6tXOayZtuEe4J4M0eXtM/yEWU/z33Aq3n8/zQrHgvkbZI5hFaob3g8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746502795; c=relaxed/simple;
	bh=r/yA4HGUl0CU34iLyaHn/zCi9Aqd4cPQcKkmgGQ7+d4=;
	h=To:Subject:From:Message-Id:Date; b=tbexQDJ7FfWjIw3AOdTZBddfVafYuWaV/N3oq/1fpyr8Tnf1wN5Wx6CFPZM/j+KoSVU43j1GbnMMJYSzQVopIAVYsTLpXMkXB2QXLuzyjtS+Y2sx0UxB7YlvrtK6FTErL11pz+3bnmXoD4rfms0UzBoz4v3Nf8jIPvWoURl53MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpL+aSXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpL+aSXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F4CC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746502793;
	bh=r/yA4HGUl0CU34iLyaHn/zCi9Aqd4cPQcKkmgGQ7+d4=;
	h=To:Subject:From:Date:From;
	b=fpL+aSXJFDr6vHgK62NbGW8r7Xt7aVVE0pYBr4yUJi5n3MVOLbOqVkwKJfWnCfT53
	 fVWVNpnnNGXuLmxN/M9uariMgh2sHcMks7t2EnWMXHAJT55zn6fTL/0BSSy0CNranN
	 9s93yErAaw2kBD3eVyGaQ7ibCtg1+VnpXFHB+QPST3nC2HeGiDKyFmVtLNa5k4It/f
	 D24Xn7dq2Wt90Q5Oyk6R3u52ZayuQTLqGouOeKBTfKcvGNM3Z6TpacvUzIC2oU31Vr
	 liN/MZ9pA4U3r9kGCSkcIVFfBhHW6GZs0fC+n4gND7fuRZjX7z+GVLe3EZflCwbEmB
	 GKSi+x16IzW7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EC4C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174650279360.19849.11513253129404927068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192a8f72586d4da451828d8d06a21cb51b47d22432bd1487dd86491416a84495
Date: Tue, 06 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746502793
