Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C469E1F3D35
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736782553; cv=none; b=DEhKkTkOqJXD1Ovef2RsvEIPy83bajKXeQp3edW7dpkZf0zisH8BEZ82QIxOzhyhN0EXWOgb/9oAb7XlxOoZTn7wE/3GLBjD9wZlT0S6uLXmv2S13kWkw16Qjqmi0b9t4GX53pNRPF20dftRxnn2XoIjl43PQAo4bS+VioO/pt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736782553; c=relaxed/simple;
	bh=/hbRU7L40d12fuSLwWuIXASZKm234OwHnKoaQ32VEKI=;
	h=To:Subject:From:Message-Id:Date; b=iRnYFioWym2L06/6WQ6KfWN4iuTPUGQwctkaLsYT7xiGroV5YiYya0ZFAq5wtM5jsjfS23iFbWwT84Axv1Jkn82Uro4eijukSTEKlPWTE6G6/ond1zu3BR6+/xGwVjgFn/Rwa7Nb+PPE7glir0FTdx2/L8kCAwbgBBz8Vkb7jI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZJUxgpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZJUxgpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2754C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736782553;
	bh=/hbRU7L40d12fuSLwWuIXASZKm234OwHnKoaQ32VEKI=;
	h=To:Subject:From:Date:From;
	b=rZJUxgpuK2BAFESuMgI6A0zp0XUbvwfmzxUy/V39cXEmknTIXiIgaiT2cpE6IJY80
	 9gnspK/oGFrRnfw+RmF8rEt/8Pec5k/P23bQnOyWEYZnTTPVujdkXoZFigJj8a7E9y
	 7FPobZkvD4/Rxa0OEqJKDkiubizVkDE3CPqv/U/SP32Gg+y4wt1cOXNPxjYh2Nvsc4
	 URT7BJSCdtv0tYIBbc8zLXFEJkd1Ha7aLgfXDmdUThTr/EZ2UnDBKgQuGNHJum4vBH
	 eLS+6zlb/eNa3SiYRtD1C6cCjwit8QGRQDphw6sB88WZ4vfENyaxE4ek2MbF3F3upI
	 8T8w+RVMKCYbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F28C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173678255358.8688.13789882187867894678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2555236be4351737afd99f9f305d2e916f532c7c7529a924062d84c46633188f
Date: Mon, 13 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736782553
