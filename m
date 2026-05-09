Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEF91C5F1B
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778292454; cv=none; b=rFvvRD9NuOdm9TMwmiA7Huyqvk+KKnm/DJaxVUfTfGR7y4Gb8ulx6iie1rzKBTN3CpaFKAOsKgIzyAnx1DsXzr/K5a+sUbz/gubfr5rujs7WiRuc2KO20rycaBYoJ+Ia9thcFhzsqPb8O+mFMqgGxqP2NpL++uaRUC5QNeN5QL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778292454; c=relaxed/simple;
	bh=ZSsSkDyWexx5/xTCK/RYs8aDoQC/j/YrwStfVI4/4CA=;
	h=To:Subject:From:Message-Id:Date; b=MYmDRtLT+yj/0qdJhyl8L+yluE6poqwSyI/LcM4XK/R1Yj2V0r2Iv3m5oY7BW5KX9BVzCD6ZMGhzMDLbXEXZ1GLybZma591N+TIdFRCwPrxcCk/HAMLOyE0USYqZJstR/fAnW4/d9rKFn/jbgV6nE0opQKkAg9unKZpT2UD41Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6HlZ7xv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6HlZ7xv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE28C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778292453;
	bh=ZSsSkDyWexx5/xTCK/RYs8aDoQC/j/YrwStfVI4/4CA=;
	h=To:Subject:From:Date:From;
	b=U6HlZ7xv25FkWOfAyM7VbIffCGxQivICi9VaT7rSKmn1k9OJf4FEvkGuSWjdFz5BH
	 Ys1Bkx6igqtdHYrckI2lGnw8WyZdoaNdRHDC2QLpZx/h+ORCKM8vkumSvu4/KmRIHl
	 EbAgnp25wEqw0xRDjM8+6butIO2nqpkjyQaGYaWM5Ahwk2ul202SMO/VQmtfHCwhKz
	 2C+rIsgtx5HjxTpxO/yPtu9WV4mq+JC8VTIxROS7qEu0zN9xA4hgHPor02Q0S23psO
	 rJcee9YgSYTgE8fdPenKPz7Ov1C4n7ePpPeYJhCPY81oMUs6bC7f1V7MOIVWWRb3kd
	 pJsPq6buiR9OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4A7CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177829245368.11797.14485884206206965935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9b2dea0148f2d38c68b443901d63107cf049351aa9716f53036890ea1fafda
Date: Sat, 09 May 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778292453
