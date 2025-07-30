Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFA0294A1B
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753874994; cv=none; b=FrTEvqswg2mygOQVpqYvYZOOd/MPy5qrV2GYTdDWxp9DrqH2AWMIOyw3dzNbylFsmurjtnED2QdcUMfq17/6R2jwlqNxbDCVcQqoZsdEWFYUMAe5lmvVCuN83vGTpFBeNNwAjlJsLNZaMu43PV7NU6ROPy1mOG9h6SL61NaPo+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753874994; c=relaxed/simple;
	bh=eWiBSZ2GW7wDPffqtgS42v6ler4UY59qt9KwEOZazcE=;
	h=To:Subject:From:Message-Id:Date; b=dS09zblm6kzaRYSJo1VK39XBNrDs3bkR8CSBvzJMYzoWWTimEci3caM7oT2Cs5DLAiajCmFVBvxzYfbcOz/rO0H8x5zbiPPQVYWuRGbz90kEKs32JYfx3dtpYXG9aR792O3TxDmA1EfoNbTwhMUP2XIKpOZVubmoAQHGM3i7RQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNXBkiB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNXBkiB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10FFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753874993;
	bh=eWiBSZ2GW7wDPffqtgS42v6ler4UY59qt9KwEOZazcE=;
	h=To:Subject:From:Date:From;
	b=KNXBkiB+eNsd976l4t7KtuKYkug7lOyflsEUWJs8FeFatfq2LwG0ty3zYD/rKDrWj
	 zaN0fQDKgHNKIWXwqIZmya43VlDlWg9rlqskgoqwnTBjGZIEx6Mn8cNQloT826ftk1
	 XyCI/+V96KpxoGmPYGtjpSgpPgqI2Cq9lOdK8QS9WyHjDZcEFfkT1VMCQuPEbRD+eX
	 qPU4ZorNlhuM2FKa98Jqvieneo+1HytiXEv7Vp5yndxjaHhhJjdq24+aUM/fMQSUup
	 VvfqRCAkHxYhjCSI2WeiSQqrZLiPLsdXjQjMK+io1G6lfgyS88ry51MS+sstoarTBt
	 yDCNz0dZuWNrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC3C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175387499358.9550.7697224649514276416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6927fe067f6bf95565f88ded88b7ad6adeb19e54cd81618614151d302fc3f62b
Date: Wed, 30 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753874993
