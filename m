Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370852AD16
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758287394; cv=none; b=EJnVAcf6h4FfmaANXlQyR3XgvGolS0kdImZSeB0m53lp+2+UcOvXIvCIstYdBlIBy++sxl3Ib70+O2lDAlfdakhQAHV+I5PFm7fvjzUuqefch+TbBFpWYkFp0h+/7lgyc1YTdKPdRD2KpHFTEOX1rBci3ML32lZoJxm07PosHdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758287394; c=relaxed/simple;
	bh=17aCf71ehO9p+lWCgmM3wylSLqe6JMH6aoFkhV5fOtM=;
	h=To:Subject:From:Message-Id:Date; b=ZlbQEHXWtfuiCZhDj1fn2n9Lt3nB6fQ5Jlp6sh3IC9+so5XsOnAxi4H2pzNWPhPg51P3wzzhnu/dJuEaHqqHgevy+IWRNz6abVZhWqa8mZKZ7qduuDqj48+eeLy3AORH0uHFZXUu6Y9pio8igZLhdg9EfNiNsAb3E9Vip3HSVZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEoTgPL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEoTgPL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CEFC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758287393;
	bh=17aCf71ehO9p+lWCgmM3wylSLqe6JMH6aoFkhV5fOtM=;
	h=To:Subject:From:Date:From;
	b=eEoTgPL9ZUkXRegph3tkD/J2X1mo/ASqxfYja8AUyKO9AW9PtmG6qMYntE2uW8lDj
	 untrmnc5YqsxRBNWU0GhBBjyNNWpYZwzYImFaHSzIFUmtIrw7oB0H0WobzZJ8W1HC4
	 B35zMboFxzkIV6S2Cj0Tq8SKLUSog39Sjy58M5FM5q0NYleTQnDdVvqx7rE/KOut+M
	 hSWDwwsJ9sT3J4fu1CSB+iBwrWgfJH5gp4HzKLBigy/VgiavFU3HHwyfIHNvEtKZdb
	 B/UYmiMGYt/FHwL/kqfKeazfHQ58QEKJXXy3rRvqxfs5qBInDPjb8nmkBiCHSI0jn5
	 8SUpf78rtTczA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D433CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175828739363.13659.5023589174049509907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b1f07b4b8db92697a4c7f469df7a244388c981d6bc93b31c54ddc52d1fe764
Date: Fri, 19 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758287393
