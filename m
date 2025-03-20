Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D13D1F956
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742436594; cv=none; b=ec3OCqz2dGYhwr39pGu4ImZcOBMC+5BddOQJ3eXNGWeIOa7XokQuqZj5BakGy2EYquiPtQsLYXIx14c4O8QoB/rVPK9LL4CFtLjuoT3lETf6iyN8r5+x7E7HGeFirgVE30V7+75+uOz22woZFJZz0DxKnvkVe8MR64Kt+9CElPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742436594; c=relaxed/simple;
	bh=1f5m7lXv20nq/KYkwwF3zKmeqUZ0LNFGxlDuCydVwrs=;
	h=To:Subject:From:Message-Id:Date; b=nNalyBS2zZCtKJZ6erRwTmEkh3fmZi/w8e0WQ5Pn0Afhl88o/Uy/pCiERKs3m7kkEaBuZBV6FK45sV5cUjrd1TEYOzM6gFJu8nkntH4FHSTafpLQI518/ftM3GFLfqMYHylToqzhInV7tVk7pwKsqybY7hfHiAzuGaPvp27egeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Onxzv192; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Onxzv192"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D6FC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742436593;
	bh=1f5m7lXv20nq/KYkwwF3zKmeqUZ0LNFGxlDuCydVwrs=;
	h=To:Subject:From:Date:From;
	b=Onxzv192Z8ufghGRkKjsbWZyQ4Ji01XZse3qzsdLQvEyGCuHjy1wSd1NlX66dYn38
	 6EyM9MDsan8AL/tcsmwOiEVaGK8960UZ24JtNfBglNJdJJE3Bg/bh1FKLSF4kNYDfo
	 ijo7Eokv0F5u151pXwWqIzao6A8dT4MtRFRnqOfbsTw67bD9Oawtn4KFO0Ao+4VDYY
	 gDMxdKaNsdpTinZ1zUaI0bJmd/8dqeRMQNlLewQcHV0wf1y03Sm4v0AfuD6W6IdvcA
	 EaUXJxGLGPKHgEJA4JBvfNRhvFn9pDuHcXMmHth+6Phqp9uM0WmKsO4HqvLQcXMAhe
	 vlopJOnjl3pZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914F8C35FFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174243659358.4665.9797885910384097036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8904bee03a12f384e2c757fcd140bf45929601651180d991638b8e87212340
Date: Thu, 20 Mar 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742436593
