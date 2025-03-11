Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F661C3C1C
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 06:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741676335; cv=none; b=RAdkrSrXX4jyt/hTTGTrhQfV25/7eO3O+hkIVYO/8+Jn3L0cKxyY00BSjGwoGFYild3FvT6CHyOJbfIDyShpeaDtgMzuNr7bwMlAJpBJ+DSf2/xTxvQVt7RllNGg42JKRbgoDYrdWzRRHX0Scp4hu5mLP9A14mu2SmqN4d+Iwc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741676335; c=relaxed/simple;
	bh=/y+8/MjgBzJAwLNp91rbDGjjawVCz4D7gU87kXykch8=;
	h=To:Subject:From:Message-Id:Date; b=WciTQFdTy6MrVTQTTfPnRk99r3CpLL6J+1h5un9eHUR88GflgUBeLVqUmwXH1QxLSer1awDKxA6yCC64HYjnAZRDJp6ExHg1q+KuO4vE5DrvKfYLTlgowjG2oJ66/jjJf4Er5XA7q9qoky9hpY/JsYFxqoqQVcFkgOwWOGkCdAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIvYiURX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIvYiURX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD79C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 06:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741676333;
	bh=/y+8/MjgBzJAwLNp91rbDGjjawVCz4D7gU87kXykch8=;
	h=To:Subject:From:Date:From;
	b=XIvYiURXxg3jRKQERJHax0FJfd5j9B1/ou+iby3526P+kkBUwaOcSwj7tuJe9wwVO
	 BFIXjVSS+4UZ1irXgyA5DTHhLxBe6NN53G3S6nvH0Czq9MV1o5E6vPvw3ROfwkfDHj
	 ovf1mgxpZw3+i3XxL8+c3gOn3MFrq6sE0Fpaf5A9+MjdWIr8HeP0FLocAfxHCl+N21
	 KUDYEUkT+LBZYQY+UoB4vDDzZP6FhjA/iR0IRiWcQzpqplJyFWuTGnIsszd3p71GOF
	 /DTcO9d2wMctWL0Xt7nPSeEo1fBZE9lmMOx8oM6h1Z0CDnhQ3WFUHrTKptweKFSCpN
	 3e7E2xUjisIgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971EAC28B2E
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 06:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174167633359.11803.9973040925976169491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4acd0c39f8a9d0516b94f1d82554b92c78f87808086c99fe156ed584b5ac29a5
Date: Tue, 11 Mar 2025 06:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741676333
