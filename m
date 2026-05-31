Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CFD2FD1B3
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780210474; cv=none; b=sIKOW5LKBkdyYPPesVeLPn27YZy9NDPAC5VH/rkFGviS8iWnbyHWyaquHof1uv8GCJKfYYg5omI6p1J6J7F8yD3rknZFHOjyAduYqUEaFfd2IYaqEgRQmyrgFTv9xTZgjq+q3U7S1VAcUGUahrc5oiMqsDf+vSVXjjtqDj7rm2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780210474; c=relaxed/simple;
	bh=cW6ti50EuExWJsAOGIgdtN4r8uMP9yejH2tXU1mHanM=;
	h=To:Subject:From:Message-Id:Date; b=k3wVhltGChzdNvaYG6Ps7DjtFI8sBeIm1nEu9axbDTVveaPyXsWJyQN7dMNVDGOUFDkRhcEINyUg4NEZ1ET5RByp1oGXg1RRXr2RXIwzpqBuG3b//MGsDFr/Xc8X1EFLzyLEup0QsKKpV29U0NZtzaVAcmoMcWGEyhH8mOihPWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8cCuPl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8cCuPl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA5FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780210473;
	bh=cW6ti50EuExWJsAOGIgdtN4r8uMP9yejH2tXU1mHanM=;
	h=To:Subject:From:Date:From;
	b=P8cCuPl5Pq3lKJ87Sn4z+MUuf0dJA2DzuMNCzJjP4qULulun0NfLwyoC9kE6oi+5x
	 uugfnaV/NSmPdueAwZYcmzHaGH/MwH+cbm210kAKMn4j+eWCTses6Xc+i6ucTr7+lg
	 d4XksdaQTnWMY5+R5dKlSAGZ7vQTh0l/fF+VsqKCr4f4tskwMv+pMeC8hza/FAZ5dQ
	 xQm/LwNBtbztnbyzmBQ6dzf0FMaoYA/N7LH8T2T1MDmc/aQjxRu3IOoAlJ6uZ6VOBu
	 EjXO7okfggmSYBou2/iplDuL1PRIeOd0JMM1sSeNkfZbp+dki2+OZ4FpDypbpvCgI6
	 2nKxHgP4nGtIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7CC7CD6E51
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178021047368.16752.15752701382111333936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa90e7707bae0736af7846f8deca8846fe97d8d6330eb03c8e1faac015f1960b
Date: Sun, 31 May 2026 06:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780210473
