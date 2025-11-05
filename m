Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147EB332EC8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762355994; cv=none; b=svLkbii0oqIUklFaHNpSqJeNnljsHx3bYs7Pa5jOXnbu8/q/+8Q1SfVphXyWIg9zmB0copzkQTgPYE6N+F53MXQ4tH3zsAP82pK9LU0dlrD9Jq7Rf6BOFQ63NjpTJ35nlCbdKytStb2Nd2xfiHh8M2jO+CxvR30hl53oBrrD5+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762355994; c=relaxed/simple;
	bh=4CDFjztRkF9CkX92oEWIqzdruwd7z/pXb31/l/swnlQ=;
	h=To:Subject:From:Message-Id:Date; b=Zg5kLHIdM2RcDAI3Yv/7/md/AV9snZ6JFh3AVxz8uqJNCM0ebg0uxnrIqQ2zvYCzvBMRQausgwa3jyW5Go8GRaM/NkTPjhaGVR1EucQEXobCmB377NzC3M8ickpRTh68NG0AwlpqeyPX1S6qQDqIpQQBYgJU/yB64MZUhM49GPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sq19RWD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sq19RWD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A252C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762355993;
	bh=4CDFjztRkF9CkX92oEWIqzdruwd7z/pXb31/l/swnlQ=;
	h=To:Subject:From:Date:From;
	b=Sq19RWD4utyGbkRmZ8htG58lCxoyTnye/xliwBK31YXRg/WAuCsm8TevWWpKfXt/M
	 EisF9yv/VhbaWaLFO45gjnah2ckZW4cLlEwH0Jgd7CYVSbcic7UYANdh2Gu5moEzBK
	 0IcHs/DyX4+DrpKQLh0UI0y64SFl+hGyJH/ciqPai3PNA06ocxIGuiNKtaF1/2a6uf
	 itGbgMd9zl16unhhuRPUOZl2EXNPF1re4kbVZKU1wRrONxAi1+W9MWrglDM3CrV5y1
	 S5AG0woYaJjmfV/pTilPRw8mm+AcboBqbRNZ9qkqvmMATDuB4OPELHoEFSUmGZTr8t
	 Lj3ys7YGKMbMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB3ECCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176235599357.27794.15624354164923881225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d796af689e3756ca306efbb6acc20176e00b4d3124051bd5690dae02cb0cda4c
Date: Wed, 05 Nov 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762355993
