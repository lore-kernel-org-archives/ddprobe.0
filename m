Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A282DAFDD
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758053994; cv=none; b=er1TdMOKTydmlUZDmuDZ/2Xr/dPuBAp6AG4C7YSyYfJc4n8j5JWChhW9PCY+gvTBG27PiNFQg0t7aYW671gGMfh/T8uOgakuT9S55Y9DUqC2vbRhVQcIPsiArQrYbJ3LOqfW2IUWYLs9s57+ckyD6X11aTfqUDyTCI0mlaFkFu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758053994; c=relaxed/simple;
	bh=nDWDejZWFfmU+i2KhyyTTGGICuUR6Dzw0Bw4OHwjckk=;
	h=To:Subject:From:Message-Id:Date; b=oiBUR/2MY+VJhtQevsiVcx5wZ4t2Bmnj7cWj6DtWKMrExEjWgToewEAhg/8DbccadN4pMJDjLb2D9U2tJPnpL3jnBiKXnpafp6rDHPQJVdGPsQhoxbJQ0YKvDhv/e70Af0wSvmuRXfxsid5iSdds9tkbKMFmYsB4ypy7LsKAz/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJ7WXRCa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJ7WXRCa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D01C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758053993;
	bh=nDWDejZWFfmU+i2KhyyTTGGICuUR6Dzw0Bw4OHwjckk=;
	h=To:Subject:From:Date:From;
	b=ZJ7WXRCaKP5s11HFpSq+TMfHuel1CShZZgoih8cfacOHA3IEV2WV3NVfKgnsJMoPf
	 4dL1sjHqAlQthNk0VkT8wD97d6YhOBIWegG+ggLu31fq5Om/Lp96de7NvKL1wpti1d
	 8N+AD3U964Kc1xThB3aOrAeLCw/ppel36utgGEkat/JXJTSYw3nMs5AEg+NzHkqd+T
	 738xFWBam/wCrC1P0wdr8dELYEFlg1aMsr8Rat2dy+6RwXPuXlYaEaPD0hG492sF+O
	 0bLZLrLFfH0MmVBKJjKisF/ebGI0iQ92jFpk0oEuQFQToArXd+SSTqR4Ce2UP3QxVn
	 c/jJTE0vWrOfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CBCCAC59B
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175805399358.10717.10230161003883077069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d348442062e555a09a9b0d5bb2759a6a311125a4656fe7874b567b6e07ba428
Date: Tue, 16 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758053993
