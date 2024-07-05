Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE37135417
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 20:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720211123; cv=none; b=UJhmpgE/E5zOlDXgUk+52mJ4x8OWZmD6Hlw+hlTi1YDfdUQVs5Ys0UG8Bs9L7pfH1/w/e5Y4l/IwN4fgnn9dCDisuS+PvzRaVzchL2RcrgjD8H7BIWCWV7yeBK1ES8GR2izKKAbp63GsxsV0BBHWmdo1Ez1xA4fjC2kLPvMQ0Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720211123; c=relaxed/simple;
	bh=fMxJFG2RUFdLrqQN1X6lgNAPMzEnYjTse4ZK7Zo/GC4=;
	h=To:Subject:From:Message-Id:Date; b=LN0cuL5TaKDByQH7mxNue/VKgDZjJsvTtfymFR0JZYz/JDtyuyPiO4O9rZnBWrdGOEGsbSmfp5/8QVrocB3bSXgF67k7atFzoGfO9z6knnntnx5j/nk1CS+uy/x0UkTk7Vnif13ROyEzWzp+vuBiV4wBTSvRIBSuu7yApiWRYqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLqj47OJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLqj47OJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0F3C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 20:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720211122;
	bh=fMxJFG2RUFdLrqQN1X6lgNAPMzEnYjTse4ZK7Zo/GC4=;
	h=To:Subject:From:Date:From;
	b=VLqj47OJ1mRkl91uDJyoSTlNwj+5nRl6ginXLiFlCe4g+CR7E7fSCj1FnIoBvTWdp
	 Es2NzR8iF+k0CwWlpU7oQguO1PeeakzJm5y/GAncqxH02p0d0aokoxLWoDkst+8SOY
	 MtfnxkWDToTOOupJiCFV8AfoHk/uDMz4gZvgvDR64gf+ou1Q8DntCY0SEMacPVAoyT
	 umo3GzhZ2OX6hsHNRvFwKL1iBkp+AKsJFx23QIfzqRNC/C5E8q/xF14NxOiVhr3xCg
	 jgV7Rz1nQCP86uAnMKpx/n8IT7njG+9g8Wy37S7QXazgUmJVxJhCa1B/uKFEo7y5fC
	 Swn5cQ1LsQu/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C61F6C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 20:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172021112276.17157.16087521060437274173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ada05909bf4d68621c5f576e8177c92fd42630b912b6d113a79c72116abc70f5
Date: Fri, 05 Jul 2024 20:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720211122
