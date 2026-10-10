Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A8B3ED3CF
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791638434; cv=none; b=QFdjwwETqNa32gttLSyK1TRbI0QHjgimAIFdzPKWpn8zyHnkUL5vMSmJiL+FhvqR5MxqaqpZvpgnFulqzU1DTTtTD46pexDPzZLPKlhhUJWL3meK6PTpvlaknx7jpxaWqggoEdW98Eco7E4/QYDC9P5aD6iLgQzzYmLuD2kMlJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791638434; c=relaxed/simple;
	bh=YfjZZY6Birc03LNMAE4hhCvOBnLNiLUQYuFa/NG6iMY=;
	h=To:Subject:From:Message-Id:Date; b=LRusNgVlsbwI5d8ivfTyxeZCastwhpUKo0VuVPU+LdDnkRCaAtnlbfg4/d+JTI3pQR+TDmvK3BUv2VpRtLuXVul4S6JSA+PQGSeJEuSG4jTElVOYO18inU/e69NPdnOpRHoEPSpkLX7uKqovhwv7HvTvYQR0yRacMkX2PG/lox0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7znX66O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7znX66O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F94C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791638433;
	bh=YfjZZY6Birc03LNMAE4hhCvOBnLNiLUQYuFa/NG6iMY=;
	h=To:Subject:From:Date:From;
	b=P7znX66OiiaWJhvGUeNyJHIOJ8fR0MpBSBNHKv85n0reSJwYgffPvxbf6C8MUxnG4
	 BKlTOzWKmu07n3UCBStGESzWEVQEnlS0OzAye2LsjJ882ncTA5VnfyLFvqUqpHlf+o
	 tojC4druvGrh9ehUp5xiUioUh5QZRGposj5oEJRbWou2E83EQj8bWlby2tVQ/+WuZ0
	 vgMBEP+0vlHn77M8zpQiteExKtVYL9bhBqHkOGJ9DGFe/SBDoctbCLn6G/bWpqxTJQ
	 gHjo9s50zwfLILDlnvM4oKVgDnZzOw0fcLrZ5lDnEbWt8Hva4cyCI6NV/d/DTXmxiR
	 WnVLSTAkh0OIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF187CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179163843368.31591.13982783506995368075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab948299aa6ef5004ce38c1f7d618e74a1af37d4a00973a8e6a3fc608419fb5
Date: Sat, 10 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791638433
