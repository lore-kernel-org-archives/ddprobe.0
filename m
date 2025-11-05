Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C1F18A921
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762348194; cv=none; b=UXx3LdUK03vzVtay5xRfhsYV0E/advlP6PruyrEDor4E+ECjKRZVWgyKGt5/4X3+GGwkiXcUqPVahw3Yv8dWBAA4+TEm0UAoTSbw8cnqkBzO5j/mgMb994m/LVJRjG7RYrLjT/8lnXDWePE7Keu5YHD3JIdLFeDbP9snqjEwIqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762348194; c=relaxed/simple;
	bh=0sUhDi23hygE9MiZNt5fpLRuxTfYaAAfEVS0lPpjZOk=;
	h=To:Subject:From:Message-Id:Date; b=IcZ/YcEatkspLKJazf9+EyFyq3c+97qrbrO5P0SCsmjbtU+7NMThCKmICw0eDJoUxy+nQBUXO6nfUt5ArpGfejGgWmFeqm5V5gDPQ5SbADTpCijoKSqr7WgbaSzdvvJVudyeZC1s9ACwtA4Vb4CvdhcJme9BSPaAcYsyuIyJ5lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3yPnpeJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3yPnpeJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E51C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762348193;
	bh=0sUhDi23hygE9MiZNt5fpLRuxTfYaAAfEVS0lPpjZOk=;
	h=To:Subject:From:Date:From;
	b=U3yPnpeJkKzKqEnGH8uEfeGFnl2ZdbHq6PWBzLcqVRNhTK23mYN5e9TWN/TMBd4vD
	 1jRkPFqZPV7XxYr7ngloEf+e+jwqzVdAaiqygkXPUCG4wJ3kEZCYGho+uL2z675O1o
	 ea3gg2WPVXrh1Onl2TOlBr9CV0KPoOmDHtqM9MmiCmLAzfGodbGJPVOCEGNuCkXBG0
	 lhD0lMvMWeR/m06KB+qDsmxD40rBe87xpJXkoWj62oqAMnFuejg24ZmkKynQkeanWU
	 68vtf00mu5k4cy4VFA//JQ0xeHlDSse92EUe3bh5k0s/wKm+Y5ZQpMZOuCgSDRSrzq
	 Z4ZAdDWrszfrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2E1CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176234819360.16097.10142632626656379406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a9399354277f3ac1887e8714b9ce5686327b8147f48809dc7b84c5006e059c
Date: Wed, 05 Nov 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762348193
