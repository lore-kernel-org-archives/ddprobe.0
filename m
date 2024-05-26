Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55560944D
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 09:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716717263; cv=none; b=Wml5U9siKo5HCT6twhWSxZ+kOaXrWu1LEFc2px7U8MIxuOyZkk/jK/xO4z0qObPxK/Htl/z+6k4x7e/st7vOuHPYkrKPQwgd9UD1L/UlzQVt6OHLixfFQJNKEcFXVvsi9qNYPmuz9431PA+l6FAkLMBBR4fdKOvvino4TD/EnCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716717263; c=relaxed/simple;
	bh=V97B/wHznjtjKM1QMBRW7px4R2ZK4ZKm11i0yLuzlHM=;
	h=To:Subject:From:Message-Id:Date; b=BylLkQU9UCjoab7mzJbwFK7IsvaPzwDTQU0gDhKkZ+yioFQeiAf0Cy+cVLFVfgoh/xUq9B6OvMnHkoclArDoUPx7wbzihiqa/OF6i02HLnU8W2hmtAK05DeA9ue9py0mW+cQrgIdO1iToGsdWERn6eMU9fCXhWmj30dYvwhzrGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfNG/Ls9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfNG/Ls9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC995C32782
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 09:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716717262;
	bh=V97B/wHznjtjKM1QMBRW7px4R2ZK4ZKm11i0yLuzlHM=;
	h=To:Subject:From:Date:From;
	b=AfNG/Ls9sbm+VRdsXUImRn0adrhMvAx8KK9/MlIeMhjwjowNq5+0R1QZITSq061xT
	 grRbT4een+suOJ/+pPsln1f5b0Bk9DKvhucnLtTajygrDeSwHDCWg3KdFEBwVP9/u0
	 uUUGnzlFcD6BnBvNanXWuLrgyYTh2lMXgPeKwMQ6uOhi33fBrfW//V4n71ZCClxRKN
	 u/7K3cBibxH4HjiLKMw9PDygwe/JY/6DpZsY5B+imJBu/7c6IPjan766IQbbjvV1Dm
	 +1N/3YFIYn0gPtGVdtrTgLdPafS7hc5CE/fIt56+oyt63oJf2+xrwLrw8LA1HWRB7N
	 nPys4WwemfJBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5726C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 09:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171671726278.5016.3407407941252160561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da4043f77af9d9de79a499664193be796627d7cba529fe9b1cea5b89b87118f9
Date: Sun, 26 May 2024 09:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716717262
