Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371851C84AA
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743413394; cv=none; b=sXI/lrNcU0qhqr0lSQVm7WEQ5OPBf6H2Jkk0dnjfWxyr8pD21KqOoq84fo5J0nrb8dlWybAjtCSvueJcbffXt330VaFs+aAj7Uqg1XeWK95RhhwU575YMQmtK7xDikb4a2Lt/oHpQFt8rZH8hMH17IwpeDjAGFwTrtvcXABY3lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743413394; c=relaxed/simple;
	bh=2Km3G5RiBEr9fXnQ7jSlqtYdsa8uWKyDqR/U5sd0ZHU=;
	h=To:Subject:From:Message-Id:Date; b=ImxDqd5S757ZXpbWD861mxQyANVnprtE5U93f0jTQT/GHDUUa70YkgC1fr0TSR2TB/bDyWanvKdU/maq1smWP0+uLqPwTce/RbpIxd5qIj+JfxOHG06dizqlK0Z+8iEY0D2wzQpKJ0dZl8jXG1moifO3PDoRVZGSNqWW8QCFZ4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAJhsfUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAJhsfUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF320C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743413393;
	bh=2Km3G5RiBEr9fXnQ7jSlqtYdsa8uWKyDqR/U5sd0ZHU=;
	h=To:Subject:From:Date:From;
	b=DAJhsfUrTESsYW6gCUvZMK99GNQzFeRbZHwyirejSWZLNL9k9DcRdZD1ZDADB2k86
	 vPPPetmUYmRCQeBvuENHWbxkOF2ihysbbSXTg/S7TkYrAtpeIC3XXMcegnafUUOPjL
	 a9TGlroqJiWkxx2RU7+3Gi7QlQWyNRbCvuInNWs7Jz52Wkwz6jHuv8NS0yqLbn6d1X
	 zNXl4auogyf7Qx+0XiW4UjJ4iS33ZJlpdcthFUcJvvfYDUzGnqdRP/uYg7DhRbFTqq
	 q1S+DGlIOB9T252CKtPnyNsdn7Wpif30VQWEzjjo+/K2ZoWPl1F+IJgzeLZFYiWMDe
	 dVZkSeNe0IHjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F67C3600C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174341339361.26308.15958472492906022730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa796b8c836e880120ba9bd88d8c8fb844fe63226c75763c99ec3cd74111b0df
Date: Mon, 31 Mar 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743413393
