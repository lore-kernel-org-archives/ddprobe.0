Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEF110A3E
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724745954; cv=none; b=d3fgP2AN2R2IcLC304dcZ8qIx59630I43h6lQmyawGHSd38mRP9ZBUrviyMB5cFLueLghMg6vGo4hN94z2fSVxMExz3cpzHfrFOf/xDgQUYoHrRyr6LHRRibVxW9gm7HHv7Dqt0+jRhWSK/sDpqGhU0dkjRkdaIgIiMpxF69nCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724745954; c=relaxed/simple;
	bh=u+2qQAyMoJqq7/5UhMFkU0g3hnu5yKm1V6GKtdSBZFw=;
	h=To:Subject:From:Message-Id:Date; b=NhYH2uohHtCPp5et5klaj0PfX2nc4ff6Qb0lA0GMeSxxObNY2zBdKZzpaNwwflGfo550EafwYUH2mWN7yZDy0v7XEBUmvV5o1N7DP6skg5VjN7BDmWcmGVXHrdAyJLs6nrQx/ek+FZNGAzFhxeTv35AI2dRBj+pXp1aVsE+BT/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWC1ZO7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWC1ZO7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B68FFC8B7AD
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724745953;
	bh=u+2qQAyMoJqq7/5UhMFkU0g3hnu5yKm1V6GKtdSBZFw=;
	h=To:Subject:From:Date:From;
	b=aWC1ZO7D3Ty97C8gBZWllH5CjyuPUS5q9UwZzg91csgbya9ovNYILBy3DJ1YzHRFF
	 GHwzLt7glo2VERGCzz81m1U/dJPJDvlmsRg6GmCf4IsDl4Pvo1o5mpvhdYHTJ8CGxc
	 kjxO9n+TmYLvAqWIz+jz64kfWVfzGs5yGOzvkG0/0xikNeIUe38QJiGsve9IizTdJc
	 qVuA6AyvTerj+Tcy1/0dJ/qcWs7/SpATD5dr6fPQMXGiMVKsSPFCZuSPgQfN1PD1F2
	 eiWrvCFJU40eQly21s1xXs/+w1xswo+ux42H8OtNlC8yt4Ixe4EL+M2EsZ+UV4TqZ3
	 jnpiw8fpaBNdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C98CC5320E
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172474595363.8069.6901489925575646750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63d6410939a5fa592ea96da21e8047cd7d271411f2e54bff5ee47982eae135f
Date: Tue, 27 Aug 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724745953
