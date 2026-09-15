Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6617D3FA5F0
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789447234; cv=none; b=jCgGnakhVv1MuMJA1CEl293xn5oh+lQzakcg8tZckznhZ0uPR+otKqwUvMJOsHSs2QNpnX6EaNccES7s3hIWemjuuvLD12Z01NSoeqnaTKDj1YGaRmajIFRyclNAVKpKIb1Ju0TnoS/BBcQd1qdt6NLO7ydbb50n8lO8D2QrHLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789447234; c=relaxed/simple;
	bh=XM08pgGId6GzJiGo2zCbdDtzx3bp5GZLQrKFOH032Ek=;
	h=To:Subject:From:Message-Id:Date; b=s2CgCw9AyqLC3OUoYoS+7de6YVYJgE2krYbu346o7QHr3QwHBnkh7BVqF3nHF2ZF3k3ob/owh+5fUfrOJeQDnbSkiigrQGlzBcFgmcCKE49ltrd1vhUmnHT97R799iuEpeJEZq5bJdmmCDMeJOYXCO9MM5WpSmMXCRDVOxoI3Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xd3lAJIA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xd3lAJIA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D508CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789447233;
	bh=XM08pgGId6GzJiGo2zCbdDtzx3bp5GZLQrKFOH032Ek=;
	h=To:Subject:From:Date:From;
	b=Xd3lAJIABwQraKxWXoefM5ddaxVvIlBD2qQR+J+AcF+CJhPMqO2jqbOqyXur/34j+
	 6irCA+J+55y9/5HppLIt96XM7TfK386Pkex9/a0qpJ5Cibhgl4xRofS7doACaWn2t5
	 YdaRbfcwV1NtHVTTzXR2P/UfYkNIaEFOFyPiF4n/oF7rtAG2vupqvvtLjpGKUVWMUq
	 aNUHG3jZUEC67yRkxNULDb5+RjjxKLLWO1sM4/i4XrVZjlWo4DbTGv2d2koso3eXDA
	 IKXe+oo91WxrS511RJ+aNhWLQCfwjhetQnIHZK1Ag6bPe28ZASWjPDG1OM65jFwq6b
	 HTivWHVh5YP1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD23C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178944723368.29127.14132392646871808422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46ba39da1d30983a7251f73a71ac430c3610c774332f744650ca363b5d0348aa
Date: Tue, 15 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789447233
