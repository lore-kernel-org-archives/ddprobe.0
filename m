Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6CE70830
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782188194; cv=none; b=djWQkmCB1VTkSsTRd89bfn8bJcb1gd00ST1IlfGYheI0JFoc9JsVtoVnSaGGqmpUBhB72eng90u2hyaKaLykTt2a5+57dZkXMR1xkJOycT2sivX73q16jerhfaQiYZnToPJiTq43tLowUEU7AwvmvO1grHNzPKe2Bcs2ArmoemY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782188194; c=relaxed/simple;
	bh=/Z4JT6BnK2d/2rp6QUa1HyzEseFTiw1CrS1a3ICGuMU=;
	h=To:Subject:From:Message-Id:Date; b=AsbFZYhBoff8jX4QVBrDNqDFGGMzCZj7LivgiaJxCr6r0FATnkQ+MbL2cvKVmfKByIbyMCsTsP/E/WBOrZGNeG9/p5FWb8kkKs1zqrR22GXJ/JsNl+PYr+ml1WiMTpaJHqIV6tRW35tEBdkbdEi32OwjWK7tGXu6S9/t/Ho2nFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahA8eYc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahA8eYc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA1F0C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782188194;
	bh=/Z4JT6BnK2d/2rp6QUa1HyzEseFTiw1CrS1a3ICGuMU=;
	h=To:Subject:From:Date:From;
	b=ahA8eYc/A3Wpeduz+SDFkn/5Ub4frlGyCpzvqt2/MMxrkZO/yCNfTgbyUTpo4pi7R
	 qTeVoeEE9K5jTFq281M28JyTCAAzdDYockdmt63D8PilmTNEvF9BWtqZUMaf2ppUUy
	 j/b3DCwDO1ff0hcBWBVeh2BJQn/bBzQJjQY439RT1C1Ikx01B4/5FHeWlpcp0m/mIt
	 LJ/hgr91ivbc9HDzXjc0OX7t8uxHUuW9xYMUnWODS4Xa3mUKtXGWoMzO8uEE3HEb9b
	 ef/SgTUhJVowYGJUzN9Ot9yz612mXNJ4tqssnduX/UK+KDt7zEzreEi/fUdG0k3Qf+
	 U516vbRVS6iXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB2F4CD98F0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178218819378.29726.16742102281922699017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04adb0efa594dd3ccb9108d4cb0502be896c5f5fb77b192ff36eae4a53de8ee6
Date: Tue, 23 Jun 2026 04:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782188193
