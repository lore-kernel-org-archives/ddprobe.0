Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254BD29CB39
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750699794; cv=none; b=JR9USWUejr95JrkG5E1QM78boUvbq/RWxzBnpWKCcQdhLX63YylxRLWIH8I4LQf6v902mSZe+mEGBKIOF2OIm8HoiCn0yyRVeaj3EgV7Qi7n8NJqcHaiV9mNB+SJkz4oWFS5F1jZFHP87Qjza7yg2oYG62HlTZXsRvueTFHx3wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750699794; c=relaxed/simple;
	bh=4dXnwQjexdx/8LYrR11NF0wunZfaBMc/wIukRMK24qU=;
	h=To:Subject:From:Message-Id:Date; b=ksvMznEpvEHwtjmT9jlDXWs7ZR7mZ0ujXfe1YhDoFKTKlDNPVWxQBpFbzdrkbwXwHxmAcC9u+tyB/vE4Uc4q6VNSTjXB2/yvJTL/GrrzHKDMPem5ozOmJoq9bvlXkyPTHZ/zml63X6Cs5/YsTVE9kF0uT6+5sPIvdUv6DFOITWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1+Mnkn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1+Mnkn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3BAC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750699793;
	bh=4dXnwQjexdx/8LYrR11NF0wunZfaBMc/wIukRMK24qU=;
	h=To:Subject:From:Date:From;
	b=K1+Mnkn7I22ZFB+oqeYV+mHf4GklZ5XIyUEl582h87JnHjGSKmECvYCmFrgGDMiih
	 SzWR44EyROjkgYpuZZ0zYo0yj2NeNaSAdKXlHrZMcZUIbK0mMmOBiEkuPGQZtZzDqF
	 RisFY0XfpR1xblX0Go3lYnfL3rsJNAEFxixmrXat0WsAOtexMzV/EghGiZo5yI8iuZ
	 RIuA9eSmRyjEIBNBUXeZg7Dwz2CndGn7kNDETHGMj2zSoY60jprDEvUJMRfoRAO1se
	 nNjAr323uZIDgxD8f2wiKIaGd/eDw1SkE3kLBiY+EInHuir8Amfr7IvWuituFWf1cH
	 cwCVCLNzFVpkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8EEC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175069979358.25761.6458953243477944027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee70dca9cd794f4a15f3e40ed8ee247a49bfcedec140a40803c560078bc804b2
Date: Mon, 23 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750699793
