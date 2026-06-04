Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53280284B25
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780599874; cv=none; b=MitraoKR3YFnKx+vUorshtegxmDZD9eDfiHlacvBqvGAmxYn3e6vjf3NGEnCENnA/CQjmh5M/YEuXlGeZ3U1RPC68OFwkE04Ja4EukP9fO8z/RquNRnOLqYmGdNu4JgNbGnp5Deq/h0ex9yoJ715um8PMa7bGtAH8JRvXpHymsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780599874; c=relaxed/simple;
	bh=rfg43Qw6ekeBAK5RBWH7RGNYS9+DwZbF+uF1ZfhfPlE=;
	h=To:Subject:From:Message-Id:Date; b=bf1mlKqcIGsmnQQdVipJgtoDq02hO+4Zpd5ZsGMh2LwxasXWHbESRMoc0V5kO0Dy/v7TmEsh5kWnoXhe3+ojSQIj5qUoLxQzKYuN/ZupdZs0FfSSVmxoOOPazgfuSqqi/DXRRnZVD3EzaAEemHHjNZ7Zm2Dq3VcT52jrt8AIlvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPDuJZCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPDuJZCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EC6C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780599873;
	bh=rfg43Qw6ekeBAK5RBWH7RGNYS9+DwZbF+uF1ZfhfPlE=;
	h=To:Subject:From:Date:From;
	b=tPDuJZCIU3gPvSmry6yX7Hk7JbNh48A+pLfnv1aercbgohjboqtVs8tvGL8JQ5T4K
	 ld3BzjZa1H9lDL9ASR9D6LHIPVxpGCerQ3A6p7VnmRiMNoabiI3chSpFETjGHbifQI
	 SPIFks2s4FN+8liEZZreHJALPU+faZ41uQ+p1CwjjXBohXoYeVnC+LUvvtClL95CRX
	 ZrcGTIPTLgttKPVawpLVZz9AOhDRwAtp0VhgubPd2wxzHK92v9yEmfc9jUqpGKEszY
	 OrBTSjaEms19NjyCZS0ZBkwXIc1MK4ZyGjukO6Vhh2Wd2mGBKKDhzhWT2SWWf4aCXn
	 yE9eY+pLX9Tag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3644CD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178059987369.26178.10022514267373728232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3cb24076686acf932ae8251de15b364741e4f84056ad9265e9c17c10948945
Date: Thu, 04 Jun 2026 19:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780599873
