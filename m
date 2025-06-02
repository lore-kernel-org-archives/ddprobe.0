Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1BB19341F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748824794; cv=none; b=qYZx4APDN5ctet3GSvhdLncflsB/9QkZIadBvEhNHPyfaLaoCZJsl1Kbos7N/nNJO3ajTZwNBEpKNanqKM/ByMNqRmA7WD/N8se5WCeVjmPBv/8yGTSEPKdupxhNmc69q6fF82dyEK6T+5RNeVa591nN3HPagw2ZJrAXJPjZkxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748824794; c=relaxed/simple;
	bh=aCUfGwSsKcQDWzHOsuFcDbbystU7yXO5XwNAdeJbWHc=;
	h=To:Subject:From:Message-Id:Date; b=mVOaARmd+jNUvmmEQMzB+wL683whoedAowLNbj/j1Y7F48ze9ZvqFV+/N0EYS09U0oIuY1B+TaRn/88w9KRMP9/poYBvxXqjq8O6UehTHv+zTX+/GTyiF6HFw16JgoMq5Lc+sS7ZMJuhHoGYBrJ7hXLM7n/ZCZnqF1J7WlmevWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvHG9bzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvHG9bzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0733C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748824793;
	bh=aCUfGwSsKcQDWzHOsuFcDbbystU7yXO5XwNAdeJbWHc=;
	h=To:Subject:From:Date:From;
	b=hvHG9bzUN3tfLCH/ZE3Zl6URWt/LjUAKCcRk+Sg/mUttpk8nKLPWxMKvGjUWRmDKz
	 qBeu+EKjVrdVS2xtcCsEMbXsKzPH23ErcgJVuAg5SC6RhVC09pbfAmvbNHNCIJzM4m
	 PFuBBm9d0n1X5Zcq8ZPyw34VlmodH4imXd7iLY+TjvEfE4t/aFi9gRW/Rz/qYOt7h4
	 YqxzC960+yLzVYV7ldxRh5XJuyta+C66b/mmAfOj26b3yeZvy9vORGCHr8MP005bHA
	 IsZAlC85LDg5SUQKDrKgGv0gdtizSUFcnwXQXE2+peu5pO6MlgQ7/zDSjdCnaGXFcg
	 HfopjOmpP8Evg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB3C5B543
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174882479357.14235.2369198688456107834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 826beda65cf614a58df81da575781378f8c4303e47038684d6ba32e5ab105692
Date: Mon, 02 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748824793
