Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F85299AB1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754500194; cv=none; b=XIalCJI9BAmJm2MiiXZPxOOw3FWEK8YDAHCRJX+3QFji9LzMkq4lQVysVfC6wowjRAtxTPddfTi9TegcfYdEHf5g6kdZQlDuiIIYPIeR++I1O/7sZnsT9ES1JCYBwd4NkIQzQTZYApVwv6uv+rN0n6opMQwuhB18htTBt0lKGpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754500194; c=relaxed/simple;
	bh=W5k1A6xnbTuBEhfMDyh0CGTuq9gd+yfSdutsF/EWgQM=;
	h=To:Subject:From:Message-Id:Date; b=IM791itl/n7VGGqdPLb8MlAAEKi4fbapAmxtottlKetj3Y1k/GtHO60K7mRFCoE24bkcIoHWjkQ08Zy/8fOu8jAT+ViocQwFX02KnbUrNXjY0uX37DCE1y1Owl4wtfyuBOZA6XLTDi1bT+iIjuXExcVbbnW8qucjUtNZ+mBDQcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxzKQwdQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxzKQwdQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D891C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754500193;
	bh=W5k1A6xnbTuBEhfMDyh0CGTuq9gd+yfSdutsF/EWgQM=;
	h=To:Subject:From:Date:From;
	b=LxzKQwdQ1JYtQdpU5zBVxrH8MukKCsjtcpuRZYZRvoQ/hf+dfpNo6EvfFB455IjGY
	 gPCUWvygKA77KPBtZS9QWRvibyfk4t19TFf1zGSN5Z3HjtpnTurG6BNOAMqhOE6SAL
	 nD7p3ATEpjN5XNx5P5yUpS1XSkSavhcxnu7dnGIsvX7pwbV0KDRRlgZzxwxMGnRyTK
	 uzsRAs60TgbDm2+ocRwJwbr7eg9w8CV2ECmPMkQaIMLiEnBI6/PbMN9UcQFfwWQuTn
	 eV5rQwVvsmwrIMghzzBGg2NqMdFiBKwbBBN9C0ZL1yMumR3TabfdESdrDksGeGAqIH
	 lYMa+BmsdSnzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFFC87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175450019357.30952.13998643840546148238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e6b88bbe3692fc14d5f1f5887c2cdabd50543cacc1a106296d3e61fcc0407f
Date: Wed, 06 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754500193
