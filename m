Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14762253B73
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764198774; cv=none; b=l8BA277kK5L7AedFAjyojoveaqBLzUI4arfz8+uGtp2xl16Z8C4u36lmMSq9l9bbOlVJEsvQphrr7cpgbkJGqkSCgk2+YK4KoMOQzfhO2Foa/XAvZPw9ZZrWY6c+PGErPLN7UCIIbDrxhZGiLL17atvOzx75ShqxBr4t8cJM0yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764198774; c=relaxed/simple;
	bh=MFtnGBrSXjqgMOiRNodlemRj47qIgSyx7EqRMvtXGaE=;
	h=To:Subject:From:Message-Id:Date; b=XWVrY5Q9oBBL0leeS5Y32OFIuq7EPTYB7HmhpQ3dlL4uVY00dyRizhSgEHjPoJ5c4KfcXBCzLg/KcM+P+nDz33gg9FMLZ0KAzLDRp7l7LKZ19n/NQK5qJPuM05u4aML5WUbCdT99zSm/wfKuvdaqDaC9i8VzDPTEXMH14kxL9Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUV/vhvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUV/vhvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EE9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764198773;
	bh=MFtnGBrSXjqgMOiRNodlemRj47qIgSyx7EqRMvtXGaE=;
	h=To:Subject:From:Date:From;
	b=fUV/vhvdL5TvET1Ckw72UpgMrh7nFY0xXVTkvN/OhAgCcs79CusFeHcKkGPQQdSaF
	 YGeprFO3WFJXD9dLKCqQmi0e33tvS7d/bxdlJbzG0s4JnSJsmFhuTnSwgMlaHsZc4p
	 fMr/G23tO7I2PxCGXkPVvMG4+80tExwePS/rzhbr15S0jVFQVgF3EJS52beIkiKKel
	 rz3RDQt0TdJKnNBbwflQnkdn++9Vi/evTPzks/kFeR4EiFN1XTsixnsWsry6nXqVen
	 xesivaNGxidv4jD3spLGGM+boM9p0t5oRbRByN69e7K2j6IUGbC9R5f5wqn1fyuukb
	 18QmrJ+mN20JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927F0D111B7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176419877359.16275.6423523373170391176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f66069a2a6555d0e5a7bdbc0b298bf07736048df5fd159989853b393bc57823a
Date: Wed, 26 Nov 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764198773
