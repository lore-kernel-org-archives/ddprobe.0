Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247402550D7
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764838374; cv=none; b=uOFv92tihRTrZ6D4ayV7/JKi6L5oidOGJEnNMvLvLhHzFDRiJAgV6xWGmNvytC/zctXKbCV7U7ZRJ601Y7qNGeTa0JrktgOsCcYmeZlN6wTZNJ3LIRD1K3ImCWhpLn72/GBnVmtgsNRiE8K986FM3jk5SinYyqrz8j3nnbtoJCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764838374; c=relaxed/simple;
	bh=iu755AZvYwNIZBHxCJWNGe5fBKJ/TYg9uzJ8njukv4A=;
	h=To:Subject:From:Message-Id:Date; b=PqXop7YVw/eOzl/xTApbBECh6MIiRiGEByvjlYaD3Fg3mYKq18WOx/tpZG/LAFxdaVp1Foj5Yks4LZiuwYNEGBARFL+jo9bn5HYDSWe1IrvvyrDNfcHHdeHTcI2md3RaYfrjzd9YGqIMWe1Qi2qOda9IkatYejkp23rY9wXrOlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PI4eBWxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PI4eBWxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A963FC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764838373;
	bh=iu755AZvYwNIZBHxCJWNGe5fBKJ/TYg9uzJ8njukv4A=;
	h=To:Subject:From:Date:From;
	b=PI4eBWxS2HkdiDfM67/QB4LQSeo2fxbQhiO6l41GYvRnpMr6SEmpbPE31vfec55jT
	 TcCkMfxtZj71BV+A+J6vROvPeuCvdtjAvfde7SYOuOQ7GV1mY1j4LdVV6bw4J1nNUF
	 V1Jd9vdjTHJiPK/hQKscODY1ZQzzBJc9eaQQZK/YnEd7rlyCZs51EZR/L/zOwUPbAL
	 t/303rLfB5O+QzFJ2Vaq5r7+5k0MgwACigP+MR1hdDbVD2uEKaE+VuT59kCO5pO3pM
	 8Cw6yC0ftOup0gYbzU1spO6lsjXylpetiavrh5WJYNbLoXU8SRUdS0FRD1JGid/k8k
	 gpQkdG6BjUa5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E32D1CDBF
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176483837360.30581.12690577534779673595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da3ba3439e6d5373e57250bb0050b3e9f69bdb1a5074f1506678a171dc092ba
Date: Thu, 04 Dec 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764838373
