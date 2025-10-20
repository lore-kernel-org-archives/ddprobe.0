Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4FF208D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760959194; cv=none; b=PQIbM2cIIEDI/OfWf2lphZv8d7Yr+iQqUvu4HY0fjVkWmrLM6Tv0FiwKUdXyiSx0+A9tT2FKYRwNSoWV4SHyAIdkfQlOMEqOkaQNOLX2DJRhOP7RgmEr8eD1hYaIXZ6OldxpXhuCSq4UJjczTEaPjK6EQlwqgIreT8x7AH99G1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760959194; c=relaxed/simple;
	bh=DivjwbZzl4TZ0k0YIVd4Rk/4YeNKt6ubmxdOyNF2aPc=;
	h=To:Subject:From:Message-Id:Date; b=oyxBF4iUIr0OR5aXAKrMGEEjUfxuQ6ZJZvhRwAr9gSh7rRDExfpUyDFX+oLQ7y86ddjgqUK85BhanKbxf3NpvkIv+uUWFZ37qv94iJtfNa9O21y74j9w3c7QJZtyfG2xLz2fzn9GILbUPblAi7fSv7pFaZLvMhvKVmfcUOwZ5nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czDA6jSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czDA6jSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0478C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760959193;
	bh=DivjwbZzl4TZ0k0YIVd4Rk/4YeNKt6ubmxdOyNF2aPc=;
	h=To:Subject:From:Date:From;
	b=czDA6jSvcZ3FSKBkioVwmzdijQo35BVyzdNMvlfbe52VWaztxdgi7+/Flpt4CcYmF
	 Eok5TVTUas0cop4bJlBFth5MhxyE9ZlvG7rWgau1KMC4eykUIpWG4m+ZGkhRIsxngA
	 CjdOGXP2pSCZc7w2vTh34l6Bj84ubRdwZjC34IEp07zcQ4Bxcr95FrrFh4XKFydKqq
	 ALJUhX2p2ay2i5AMXZhTyi52jxdCxOhLsw/oNuAydKq41GQ7VvHLQzWWPSALzIFl8X
	 TFzK5HjkCRZgBdWrA8s4k5pF83rvk7OJLpceqcOQ4Hkx6kngsjApc55iV2K4ToA/Ux
	 bq2ViTEmxe3Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9109DCCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176095919358.7446.11190546236782207126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eddfec1b2594e0686b77f23aef072c5892452c13d7b651540668a25a7f5151f
Date: Mon, 20 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760959193
