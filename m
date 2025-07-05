Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1145B2E370A
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751714994; cv=none; b=sYEcjeZ3yDTkqs4RE1nyK30IVwOg55gd8MnxS1TpaNlekmGv8lLDaYwgJ/ernr12oU72kA2kBn7XQuMEQ35+Yon1LWvo5R6xLpKOKGCblMRJ8XhpcIDv1baCi3ouocg25Gas7hiblakWbJ2TVd1womBJGpwQjP2Lj+kTWlWrDQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751714994; c=relaxed/simple;
	bh=hROjJeXO411E7Rd6U4bGKEXaQumMtuyn+N7YZJkApI8=;
	h=To:Subject:From:Message-Id:Date; b=Suvrg9bm1XWlvy/LnqIeVepxta9czbhZn1GBn4FAnBAR1E5sB7cb0oTRvQoHwumUis8XscJ2GK8WqKJM7IffJ3r3HXYNfHdRAuB2aKBOgaA4lDjsePEUpQ9YTpv26tuJsQJBRKfPIvHE/npC6KnCcDDF2Fdn0j+BExRNgIbJE14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvYiSyQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvYiSyQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A168AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751714993;
	bh=hROjJeXO411E7Rd6U4bGKEXaQumMtuyn+N7YZJkApI8=;
	h=To:Subject:From:Date:From;
	b=RvYiSyQZZcPwbhYMuXQZQGp0x5mSmR+n7arVmB/l8o4u9qdeCIJS7l83vHN9mLmIV
	 8FWG0d3AOGED7wXv5w3zt59NXYjBaDABih/Au3sKuJP1bXbSa3jnmGWlFUEwr8RCFO
	 1Uv63bMdUDwwvEMBnKBgL9DSK/G96Z9T86/RgKiDb2eSPOml5xqaf9d56XcOj97xzw
	 tig/UEGGVm0pqx9tC3viPGWYLMyyAZyw4rYSahib3H/m6+ZKKRKmJpG1dRZYIuEWBD
	 A5407nntxzsHYyJxaVkMMPBbB5NF2c3cu14zdxKPmVKfIcv0S08Gp1OFaqZUD5PL3d
	 W1She2rF84PRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F639C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175171499358.12054.16223005846324396929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0fa165c19a7b4903630e8a0251d08322ed335a2ebe3db9f431f32fab50ca6b
Date: Sat, 05 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751714993
