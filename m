Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F16B3B8D67
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765406574; cv=none; b=orFMBi1XrisVrBqYRUGBbuWIe7yj2QdWnA1JmbbPFePlu8gtEAi+sZtJm+mqDp4jMM/VXn+DXvRYhrnwLCtyPq9XqaOCr5T1w+uT68yiUA0jc5nlq8Dx6R7nw+1TkgkpaeoqES8Dxa6sKDP8k5FdkBIr+tY29LYgorvIJEyZfHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765406574; c=relaxed/simple;
	bh=gqs8OlSYWJj6sHawXnjkUUycn6wtBFzeczXWFr6+yjE=;
	h=To:Subject:From:Message-Id:Date; b=Aujt3DyYxSrtKyy/iVRwLvGUCYoaLY+kI5RpAII2q9Ab/QWHmkUj9AVsYT9hTs8zti0tMY+C9ERLuNcNLi3z4sz9qftMM4ylXDCV4RTLznGxzcOgzSoo8wdbuEXLyfHaLHR1e3YEi8r9d2MnmbHB1c7jNa91qKuPImoCgJaAiZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGDZqI2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGDZqI2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E09C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765406573;
	bh=gqs8OlSYWJj6sHawXnjkUUycn6wtBFzeczXWFr6+yjE=;
	h=To:Subject:From:Date:From;
	b=eGDZqI2gHi4d8MoqceH+6/vWHlBJdBF076h5toyR9+oKw24qZi2wdND3N0AjuoFW4
	 fSfom8M2GJ222Vjx8Y4JKi9xzgqrZGV8eG2CpYDgL2uBd8dQnbV5eHJyoinWTfyJD6
	 p8Y0tjb0VwAfklUfIS0EsLEr2XAKJOh0qrUJcsDcoYj3p/rv/GtYkAC8ptNyQH+Tbk
	 FydbhlzIAdtAv2tR8q3M0uhhZEmdj45SbXtdTXmK369xG6RxkHuNLXfmMiid0quC7C
	 xwPdUvpLe2KduFz96fG8iSkVgLnkiuKuS+Jp6I+1sgKYe25rOy5HTC3RPH4d4knjlw
	 STOLWFr5w5iBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2598D3E780
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176540657369.11546.14872498472011492294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37f6e5bab18e1a0cede56d214c046decc82b8994109c2efa23a80653b2adc6ba
Date: Wed, 10 Dec 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765406573
