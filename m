Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270936FC5
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737890754; cv=none; b=I9PLsY/I0Sx/RSFyp47bcSoL/bDPCuWk6igbyiqa2yQd9AF4SH9sOwe/k4Oq/aGsi+XKlEs6/B8LNEBumV59kxiZYmGiBJMmhuChs/Pa99ueA5cwtUCf0M3gTaZ3oRG2z4SNi0TXtivcwS5ledSjcoO8OhRLjxoeEwPxRZha1Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737890754; c=relaxed/simple;
	bh=q0kZ8ssU5yu2OKhXLXxw3TzCG1SX7XGX2EvZR5QxxmA=;
	h=To:Subject:From:Message-Id:Date; b=cDN3uwkDoMO0v9CJGbI+3ZfNW6MqQuyrtHhBwlonAWY1X2HzY5suE0ekAa4mb5bA9Lm6j1Iu7+C+7Ghh3/1x8oWaOefTlpwEfSsSFR7XAh2UuTBBfRtPlOWn2xRqbKaGZN3r1Vv5zY1Rx7IF5iAN/Dj4VFHFio3tMlWInEo9t2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhZpKIS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhZpKIS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFFAC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737890753;
	bh=q0kZ8ssU5yu2OKhXLXxw3TzCG1SX7XGX2EvZR5QxxmA=;
	h=To:Subject:From:Date:From;
	b=HhZpKIS0s9lrLjpMxGf4QPhl6XFAAO8igdlcNjZo7L4KnO+HLkUjyoWGhW9hXp7op
	 ZC67FTikhQ4eO/zT4PU6I5oSNja21Rnp4M8DnwWycbT6GQ4prbAKf0xhmieKFQ2FYs
	 NdnJd7VLjK5arGP/zbR/3Jj1P8zx98Z/ospq6ZC+swXO9hoe7eTtTiRoipm5++65rl
	 OfdJXrnLMkme6HFEImtZC1DxzI//6YynL9WIznmMemCTHwSQIqSYc0Ld17T/9CzzOO
	 r8nl1klA7cbo8vEyCpjs1p204z34F1IpNi2t0iujBkLm/09tfIAIDOzKXLztRvkFru
	 Dy3izKZdKfKmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F883C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173789075357.27909.996422955260605107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca0050df677447d99a498f8b5ba60f13886cc9e15698c42510bd942b5a65cf3
Date: Sun, 26 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737890753
