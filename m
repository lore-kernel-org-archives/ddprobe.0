Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACBE4C62
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752971994; cv=none; b=jFsxRYgYdseBxrSH4+ZQkQSWQY9tKNwCuMBz0rEiu4196QuUwrp+YGqqpqeBnbL5oF4u1eU1m2F/FFJ/BaZnJoTW7ZXmFOiIo+zf0N/uNbalTA4l4UoQOJf6N0jdFm3qM75SbCdCg9uQPuOjsGtTRGro2C6zw0EK6NY2+7GyMns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752971994; c=relaxed/simple;
	bh=FIqBR19JKon6tBIA/I93qcZtM1KjaicEEkHKojYCIkw=;
	h=To:Subject:From:Message-Id:Date; b=j4xZ7nPW9fxolzPFc+EA83rG7S1MZf20nK2agO1FTNDe3VBw3soLp+pO+d/baXfdWR8lwAKtYp9f0jHMKofKyQARr2/FGbyaij+QO+X8bf0sra0twc9Roxt39jcI1uIH3QmIW70L09N+PgTdDv/YhiCj9BMtGrJid7i33ImK4ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/yFSwDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/yFSwDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D8BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752971993;
	bh=FIqBR19JKon6tBIA/I93qcZtM1KjaicEEkHKojYCIkw=;
	h=To:Subject:From:Date:From;
	b=C/yFSwDWaiymbg75lI0BR552mdYd/o10LzYbK9K6Lkc38PdWayGT3zmmV3UDtDWaQ
	 Th7kHFmbPeMSb9DG3HXOwWg1adNGYUvj9KjADhco1uW1LctOx2vTqQLNISc/XDVFUL
	 A+g3aJvs8jyZUHaufzjND0kPkbJYzeThs0WE1hrQBUUhoihIKVYqB9AHDX/qC0Fh1x
	 qub7GKxMUvdE7CHCKrWMFubOF2HhWc2ZKiM+UOxSb/f9pgr7XiYAI3ejmg52DXTOIn
	 74NuoVy/whbgZn3ORAGe/alyHK18iz6tuYNN6+UYIovNWcJcQs6LUE0LgKHEDOdKo8
	 r21jv5mcIA24w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900CDC83F3D
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175297199358.7660.8281957690519243416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003acf986a9e0c071a9da22c89eaebeb87cfb4777ace8d20eed8ee4fd40b07a0
Date: Sun, 20 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752971993
