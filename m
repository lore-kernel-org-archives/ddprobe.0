Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244A4748D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736395554; cv=none; b=sLXSczKtmjeC0tvjxPzFaLkQ1cjORlw+xZan8wXoh4MT2YabJaEwkupyIlBI+B6XBLKIASzBfJob75y++UJ/0E/AA6k8hQuVM3SJPohcnO5vyyK5JAvX6peeVR7iRU9M2DZVan7k0+wLtpGK2Uo44pqj8LP/ItoarspUb2Z/A68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736395554; c=relaxed/simple;
	bh=KjMt8O5nfrxMxlf4jJuLjHywwFR6egD8KYZ9M9CPZzk=;
	h=To:Subject:From:Message-Id:Date; b=YdVkIKCJrNZyymGzdjvVACq5/fLBwM0MTJ4c5w7mHE9+gC4OUjgPr/msvBGmDiaQjIvpRuLjcoVRGsRmgWwK8unfK/YbjNthOo2o8y2NrxcXt1UJx+q2U+IlrdoSia6KyKDDO/8LRfIfDhzkiiITWVC4IjJUaD8oP9/bu4aEcek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sONkwHeO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sONkwHeO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E65C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736395553;
	bh=KjMt8O5nfrxMxlf4jJuLjHywwFR6egD8KYZ9M9CPZzk=;
	h=To:Subject:From:Date:From;
	b=sONkwHeOO6F3E8qpzqbXegiTnXdPuGf5O1uUsjllool/5s3dfQedMrTILxSg6sJfe
	 XLO6GJzSUasgDZV563Uu7sI1OTOBQTzDZjG34uZ3rEb5QolSi/4DDx2abaxJ1M6PYV
	 YHKUsRKqaAI8mIJ5R4q/bSDdSb7k389zhWBWPU7qfm1iUB7MeKnCPEJJ6xSPdD3mQe
	 sQ/69aVmeecbE5LyKirk2U6K7Bp00NfwE/KOYvyPVNBF2RnhOxyZbSgxFwRfuiqtvF
	 oYT+wZKCLxLj27U36ZThpJO9sSKAZaB1CztDpxfE8udA7MutKeG8tmaT9CdKeHHB5k
	 kSIerFA7Var4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9361EE77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173639555359.1731.3213813488312167986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1e7a0410c4df1b4d41f005f64a9ad0a1fd55fc856d9b2a9fecd9ebdf76d3d4
Date: Thu, 09 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736395553
