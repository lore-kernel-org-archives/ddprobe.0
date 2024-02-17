Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226376D1D3
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708193297; cv=none; b=dRqkp367XMfCgyPE4SEH5muuOif4dnTS8gICOZkfmy7u0PgKKUoWD4rC31P2NMapXal9CV9t8lU3V4L+2lzkkT5Y4HkdxfmvGgYUwPFJwCgSUrtJKZWnkqDnJCXEEmpjI2qfPGYhpXa6+v6tbIr0i9+bqcqoCmE5pr0uB0VOAnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708193297; c=relaxed/simple;
	bh=2WIZlitfAl+kDfiEugCUFZFp+G7KTREEqOIsmhW2FHU=;
	h=To:Subject:From:Message-Id:Date; b=DVplN1CxSvnNm609Osr6KhglhJV5IUCUWqxd1KPt9QS8n+7yKcTPqfS/qVKgLY2CfTepupnBvneSr0xW008QhVx1OgcfvNPUcTda/zk7elBh0DcOwio7tht3+ElI3pPab7cS1/e3et6pnJPQCeLELwABN98WbECZVYZRMUB7fi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UO79OxTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UO79OxTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD84C433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708193296;
	bh=2WIZlitfAl+kDfiEugCUFZFp+G7KTREEqOIsmhW2FHU=;
	h=To:Subject:From:Date:From;
	b=UO79OxTigxpcnbfBNwBmM8FJF072JhBHMRaxiZwUSWvTtILWBUJ1MBS4yq/qVJXPm
	 5/AJpBD8PdnLfjGvXLbL/69vt+Rij2E9ezOploVsIAx56U8+g2D8T076nFyaDgpFAE
	 Tq30JqAaTD9S/Bq5uFaFy94qRGHpOdWA+RZ6PZSGT5awhuMu1HoOyp0njxheraQ8Ea
	 l9WfZTQHf7EZZyMGRUhHvo5F69UoEjBfDgre4tytLEImq8a0SoQcQtJclEi0XpqpIS
	 l9970QQ4zR19s2DUXfPj4FckEeBtyEeT6uZEvf3Blt8vZSilnbwKFzVdmxA+Sm6kKm
	 XDz3F+UoP3NdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6476AC48BC4
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170819329640.15941.10366761816406926968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a822b88126b5e687517232f39fe8c8dd73e9e0f9cbd5e3925848970581b3ffdf
Date: Sat, 17 Feb 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708193296
