Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596842576E
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788735034; cv=none; b=sqn7l7tXW0fDpABPSYtckI3BKFBfsOFoPtC0d25C+k0qZb/M47nSq0VlHHmTG29dTdpNtqfg/F+4qzmUVLHUMAsOkXNVZ1tNh3Dj3JyNjvi5DIxUfyA3SudAONcytBCgNrL3lbm+JYiftoPfPXI5+4aKPFG36UreOZTWZNvqNWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788735034; c=relaxed/simple;
	bh=se9d9v+rcF6M0mLieqv4JafLMY0m+udnSg/yuWXS+ZE=;
	h=To:Subject:From:Message-Id:Date; b=h8g/EtXxrSdjqqapD4iKi3Mc1wify1KNnOLNY3w5uw7rIr0SqB9CLNEe9PCKUuAL2hj9yYE9xnYLPXUfh+Zyf8Mny7GdMAvjSxKnEtwHLybat2lqXLbLSsPmxkBfaz5ILQal1we5CnwwaHc40tiS0KvV4ekLHM3/93rLMjDY4iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bsq2hNCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bsq2hNCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E07C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788735033;
	bh=se9d9v+rcF6M0mLieqv4JafLMY0m+udnSg/yuWXS+ZE=;
	h=To:Subject:From:Date:From;
	b=Bsq2hNCgUzAsAkJcHt4vyj3D73GQL8oph4HjaQnIC9LZKzpGHX8TrAodiQNr89T/e
	 xYlM6FTQsTwdEVwnFnt83rcplvqzNOfDFIaaFpn6QkPTBpT+VFAPZ4yrIHLpqQAE8s
	 YsC1tkV98AWzWRYGEhR0UtvNF2GteqPrs1OFJGb/37PvolquxkvgrZCwNiHJHLMkRg
	 2cb3dM8wBdHK5aXbeLnhdaUEYh8nBQzcftNaqGPUx7QAy7WLcBWykDNRlaxvxhD2hf
	 O5bGf9zLmb2WU4tV9zAF0ZqqTK1DJS0OC3lg9MJd89hKHvRpaXa/lRV7q/2eiA+jI9
	 hE58U/DGZYSAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6997C79F9E
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178873503370.28850.8045501952382146197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862f46cd091be85c9ab86c1cd0f69490c1f11833ea9c780997ffc5798372977b
Date: Sun, 06 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788735033
