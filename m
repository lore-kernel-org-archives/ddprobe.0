Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AE925B0A8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784395114; cv=none; b=WCLd6m5lnr51a1CfyGc9ghQzsqf50ExG256d1bc4rBCsw7VYKk3cgCa7Z+3KalD/BNVxjauSiiBL7UxzUNseKDP/6LIYotIIH+oGkQvBwJHAuk4gXDYYKSi8kHuSv/0Qf5CGLYjKr07aQqesQX2BQtjhSr1gtAxHAydVYxQiqQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784395114; c=relaxed/simple;
	bh=V5TFOCZlQVrgIkDZX6BZ6wzMeCZMvSXp5rM6cMd13DM=;
	h=To:Subject:From:Message-Id:Date; b=j/T/TX2oZORnU+nh+Qp1/ip4qGKJj16+XaAjw1j3+3u7FnZv4Ya5r5GtwEPAFYXE5pq1dqNU0yFgzfVHp54Eg67ppGNwWHOTegiWNb3K+M4RBa8rVz5+KhbOCnncSE91jyH9d9dxZlXb73wLHOiF1crRuzo8PlTYvx3ZvjVQDZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgH76K2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgH76K2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18DEC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784395113;
	bh=V5TFOCZlQVrgIkDZX6BZ6wzMeCZMvSXp5rM6cMd13DM=;
	h=To:Subject:From:Date:From;
	b=YgH76K2B3zzSaO8qnaJTHpM7Tnbjl2Gqno8D0I1Ib9oSbIdEDRgKgzaRMbyAvcNDR
	 iudXAPuPwEA4oWSMMmf9BJyO+7BGTig0jEVheZDxp96wuNcrt3/0xR3qIFpJF6k9VQ
	 wV89gmEcbdF5Twwsv/JzC0zSHN3l1OsZS6DgpjqET0e8AJGIp8cB5X4TR9CmGg5n3z
	 IuIMzSJ4Iml/BDiUEUmUT84kWzRwoABWHpdVd8CpaO+g39uRfryJQU4IzlxzrZ/h86
	 EpOQq29k9cdIChmSS7jkZ7DsaEVfzc7TEoi46P2tKqBvRR5Uccn7GztIVJKgX4CpE8
	 GO+3lMelMjSVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC3AC4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178439511368.27032.6866610463235138358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81c64b52e18238eef49fc282a1408c9a53e7db37b5ba06b51494a5201e96dcc
Date: Sat, 18 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784395113
