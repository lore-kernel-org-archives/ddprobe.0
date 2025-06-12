Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D691E570D
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749692994; cv=none; b=Z2qZafBR1d7F9+bsILlON91Kd8OwgZJD/QxOsJXlNxk39Ahr24DJizaau9CgS5oJvPJdFfUbszMK0F0S5zsAoNlejHY/flR7jlHqTsGQfGNjDAkkdJ+4SDb7yE81yWg8H6q5BHYbgK/BsLDGli5gyE0xlPok68jAEulZ4GuQeqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749692994; c=relaxed/simple;
	bh=7dVg6j5oeOFF5+IEbP/eFGLwHkLIcs5UfALUJWS9u9c=;
	h=To:Subject:From:Message-Id:Date; b=t38FlQvmWlxny27cnCUICVOKppDEVrmb7c7adM6RuGsqNuxeJI+bGvLIu0k6fpM50BULbamrLUsRXxfOal0s2x8zdYkbydFFFXVs6sS2jNmQXsHFLsP0jhtaUlXNSY/pF85PWodc9JFvXJbOzlN/R3g8F70CE9NRQv5OjthI2Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EccCspFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EccCspFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A679AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749692993;
	bh=7dVg6j5oeOFF5+IEbP/eFGLwHkLIcs5UfALUJWS9u9c=;
	h=To:Subject:From:Date:From;
	b=EccCspFAd7AGHVVdQVOVfdVfzPIW4A9FwGaIhcOmWcXjSuAZ/iHc7YhmrHqRq/Gly
	 4gfggIhendslWmOfbi/5GahcXK8bjwDXEnyrj7Ep1vsWRrQHEWiqV0kAHMfrK7DpD8
	 P8zklPJNRgxGlayq9G/OgWZHrlL3j64equmCv/yh3o22eFKTECqt+VGXR6bqvo5QwF
	 5QCAiC30VAZeOHSPjiwT996bB2e5QVrw2R0iip64WZ9tsH3fAYO2rHNs4Fom2fSw1S
	 PvdVWjKpTmPVtBCOc+5ns6Us/9SKoF96JP6w8Nkd0YKgDl6cdYcgmVz0e52Ozz6f6x
	 aYb0nUp4fqkpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E01C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174969299358.1571.2510234326089741071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fbf2f5b72e65850d8c2546f15cbab892b0c64b45bf1809b13194daea53f72f2
Date: Thu, 12 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749692993
