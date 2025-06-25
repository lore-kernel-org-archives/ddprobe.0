Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B5A20E031
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750883994; cv=none; b=Dnj8MxADu8cXNZyekUlJ1+d29AR4S5eoO5Si6+kvNIxDxiv/6gdUlgU+UITGwxiwftcbo70LicTJ+LBFHDYfBVW9gqv0c4dO3+Gp6M+H+WyIB4TDZaHR7lz4RfJMu9OHXmhEnZtLZNH7d6UCB5AkjBU0TAZR+Jo3hDAyfzSWQ7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750883994; c=relaxed/simple;
	bh=SX4S7Dzh2OH1iYBRNykdFSm1orALT94WpNarLYhjf8A=;
	h=To:Subject:From:Message-Id:Date; b=dKNAGZs+1Yfnpl4mV02DP0xlryWPQ3YlYRXMwxWHi7PhTxqHEbHfFIrxz9vm5/PotLf9kY7YDMmP0Pzs1QOcikWRYLfdgFPIqZjBqhVB2HtTSZT61SM7vqv2ek0Kzswq7nnVqdZ4awTuDrGSQ+k2N/B5JkwuZOc1+QE1QpZmsFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khpbfmpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khpbfmpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA14CC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750883993;
	bh=SX4S7Dzh2OH1iYBRNykdFSm1orALT94WpNarLYhjf8A=;
	h=To:Subject:From:Date:From;
	b=khpbfmpYvz3y2McB3oPmqhF16Vf1mL7xXgIU0NlwtTnI4MxLG84LNH1Zy+BLbgSoW
	 VhIf0nMdx0hVAGI9NrYNQi8LCxI3UuN5Meo5nI+keopdIki8nTINBR8DJEbv+O5m2e
	 1h9frcgHYcqDGr/cKAY6q1APMqInYptKq9TbbUxmP313ETykkZwq6mBCCW90325LWS
	 UsXZfQC+s6ypdwb47MftKb66Ft4NAxSfyRB4dMFlJ8iwfUHLAE2dCaBUtciv69Jnu+
	 u1hSEWzu6zkDt88Q1SRIT5mYW6Tzxt39aAQbCIrSktU3xhX4qhRjJzydpl+i/2/9GJ
	 UaDftbvx3uTiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1EFC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175088399362.14646.10949062012653207994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37cae4d21a63f23cc24e0395a1269192f8a0b8760b137a479cc57c9f0196d6d
Date: Wed, 25 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750883993
