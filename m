Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5D026ACC
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753112994; cv=none; b=PyvOrV3HADV2LK/lNl8R4F1+7XP6sqDnpxy0SaAHPjm8ynIoJKtCorywLihnDxjcL2ArM+old7hWWqg9+KRg5WTiv/asQJb/Oyn3Sx7RXSQvnA+Z9kRq2Hwecq25VLiZrkSzYccou6eQX5NE5uKnnWAZFvBHvMqTFQFNwziOQpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753112994; c=relaxed/simple;
	bh=HIlv+ALO5OMfGXrFt/Oo72IcYCMBjrr2+w2SfCFKOiY=;
	h=To:Subject:From:Message-Id:Date; b=E00K5ouWYXorBvgx7P5O/LWuUqfe3p90X0GHJHpq/no8mZVC7rUtiwFgHZlhd37OhonsA/tJM2VC27VS/5MY1gTIgS5t0A8wcDeOkt5JWZo59RlZGV/DZEGmuaVCfJ9yd2sNWjgvd0AW2h5e9TI0yhNrleN0qUShTXpdqhlNG24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmjwXx9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmjwXx9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21D5C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753112993;
	bh=HIlv+ALO5OMfGXrFt/Oo72IcYCMBjrr2+w2SfCFKOiY=;
	h=To:Subject:From:Date:From;
	b=kmjwXx9+hvQi75Yrsjdo4FbEOcnfnhSNSNvl5TkhUs7yutuU67vyPWGpcdFtkxbHt
	 YsV7AjlpJgBpj32+9fPDBONOk6vwL8qzVWEExbUI4t6MQYhZ6EWquMh2cTmY2giCws
	 ydkMNsrJFkC95p9UpM8wia1xwz+C4UtS8QuwUPQD/19jvWmmo7DPyYVf1cRSBCuEef
	 vfJcFxuGzr34sJi/YJlDhgHMi1Ucx0GqrUd891UsTcVVNfNgSp0xRh1fA9/CLrec5B
	 oK+WMBoaVaaVBk/sFmXrUISvRJMswqUR6eR4Z3XGkB9diaQgDxTIh3Y3z0tYVDZ2ZT
	 1+ErV3gD68IOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E70C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175311299359.9469.2650967533368264103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a574c49596c25cb1c24fbc7b6245a5a3c9798b013b871490918a96012d81f15
Date: Mon, 21 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753112993
