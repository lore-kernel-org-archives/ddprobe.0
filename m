Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26269199924
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750142994; cv=none; b=L64co7qSDDkIwKzUy4VAZClNQGiFL4wUEBDUcWGgimq6jZzJaHysf7aqIJTgV6DW0FD3Kf9TY7YC4VsyDWo4zTyacAgb4C/OsSsJPQS1E0nyG0VmBsRUk9uNWR/JfhvkDSubivfxF3Ik94IPJdioMfLU36+rTf4OOWHwzRNI2OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750142994; c=relaxed/simple;
	bh=8z5415oqkbMQLbsNqpYsDBALhFzIj8YH1j88P3s9sa8=;
	h=To:Subject:From:Message-Id:Date; b=IEQDM4RFQ23Iq3hPDGyUCJYJM+Mm/xMCvfjTVrZBeAWdtc94gWrgTk2Pn6SUWS0P+6M9RWkJbVW05N2bF2Au6iP0g7J0ou4ig21kqCxBR3joONfKgUL1UABi9oFXG8vccH0LzAORVXcs0SXkulavCISYmqLOp1o/KGSthetogI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnKIzAPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnKIzAPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E8AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750142993;
	bh=8z5415oqkbMQLbsNqpYsDBALhFzIj8YH1j88P3s9sa8=;
	h=To:Subject:From:Date:From;
	b=bnKIzAPXVRJPSMXSfQiwt94CdMcI6c2xfw0aPc4tDEXNWdsb90T2quhS0BbBr+eIg
	 zBjSnzep0GGCPLvbcy8OhTsmzpjXUl3v0aX1qITcrceRlYHNljUoy2ZnAZpbFxuDoH
	 uk1pBJRob5GPyQrGjNuApUlmOeMTUpd3llM3XW1UyImT6llnN7wsXacio+N6RDJp66
	 1TsLW/QoPhDZOSu2QlnZTdgvEdGf5AX8BC7qmGmkooJC8b0c+q8p9dx8oEb/5WJr2W
	 I2vZq9Awrat2wsFRXirrK1IGP+qeSfnQ8S9MahyYEjkrWzOuIwvhALDH7i1yx/RBlC
	 4Z9GEoYb5wHYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EF1C7114A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175014299358.5270.16806610493139185832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4947f81fe7cff6f606f4a127f28c68f99b4091b4af1271353cc0d5c3ba8cd12
Date: Tue, 17 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750142993
