Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574127081E
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789344634; cv=none; b=SBnP0wsPjBvhvPjFo3s5mZNYrFAyuoKx//3pXtr8aR4b8NKNd7zvWyfYRJopGhppjDrgUuluPKdYApuwX2IJJ8GSdbU1Bf1i7qLeGckYh7h6uNT5jtH/coEVeZAB6a2wiHaCZvqsUf1T/UvXrcazx/+64zkJRN1lVbeRx7OZBnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789344634; c=relaxed/simple;
	bh=sVfPx1NJTd0FQq6CEXTWKaxHz/hWsVYn2t7vfk9kqH8=;
	h=To:Subject:From:Message-Id:Date; b=dzS67SE+tKsoYLTyHzD1A7qjw1e/iT5UxV0p3U87JRsmjuNNHosIVBIBA7gqRmcIHiaFZzrAf0ynCPen2S5Ahlneuc78F1eQLMLItsvJYEJvyhex7oYTIIJGIRriOyPBXpBMXLqtHhxGMyZPgttVmaUFkdwtmsBXi3XEc8wuFag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RU5dUoxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RU5dUoxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF3FC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789344633;
	bh=sVfPx1NJTd0FQq6CEXTWKaxHz/hWsVYn2t7vfk9kqH8=;
	h=To:Subject:From:Date:From;
	b=RU5dUoxlfXvSySTbvTqGLTkcWkGDoHUkdeVSosfyttVxXBBKOCnrJpAMV4XGb75ov
	 0j1wgE2wHH59n6wzZ8ldhl0C6y64a8sd1Pum0WbuRccWc13fAkDICdCsxwCKxBhm90
	 LXLuzPWuayl2JD/s7QFmlfvDNJXuuW/OgonlE8qE9yMpxHYf1VR/LmJTkzT7yEYSEy
	 XiSQvEwvzCU4S6nUTXmX6bFdAxgawlVetly8kwumaNRcsjuaM4IDbbQJvG+Dl8cdVb
	 luPftAhhR7k3gsAG9qjoi8fcjYm95ZY/siO9H+7sYzersi2afY3kI3tuRcYpP8GENi
	 8+jiZS3T7fLvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A994BC88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178934463368.15248.12408164766976662957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ffaf86305ab27b38c3397addf8de1c39ac0e6f728c3a52d7255ab6405b954f
Date: Mon, 14 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789344633
