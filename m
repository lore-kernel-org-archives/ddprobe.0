Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF6B55C22
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705706297; cv=none; b=iKvswceYf4y9NyWgKdoMMcNbAbOXSj3NPAQ411VGwGr8ctVtbGBBZtE7PFbu4bhsjFQERYuckn9mmUJ+wLWPWTHzCvO/NkFwNVpRgm5xPDsVDHCvhgQG+eqmV4FC6yioLCKc0C696KyLHpwa2qj7ODIovgewNG1KUyJOgDLA/jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705706297; c=relaxed/simple;
	bh=jg/yQCb095bH76U+joGt8SrSs6QbAebAbYjs38zp9pE=;
	h=To:Subject:From:Message-Id:Date; b=WXmEmItCBwFxs3M6fHqN8y4DPYK2S8idQAJABa5iWr14T1SndzE5gB9QWmhOXV/tf+CaJd7HhqXH9WEteiJu7eZwgRA3SFcbXG2tLd2hk42gH/g7uHPnf1TZ/KWD3Q/2g5kL+NIcd2nX3j6/V1xRn68FVBUi6HQUn4gIyo96G+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTN7ifYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTN7ifYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BDBFC433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705706296;
	bh=jg/yQCb095bH76U+joGt8SrSs6QbAebAbYjs38zp9pE=;
	h=To:Subject:From:Date:From;
	b=oTN7ifYOkA98AgiT+CWtx65EdMnrt5Eh9CEnXHcGDoXWMXkIeLH6bQjXS/XJuTn8U
	 mW0f80KDPDvhPNKPjdbGK6SJ1kfnwaHrywOqzJRwFrbbmhkdBNOhmI3O+IzQkrlKrn
	 ci7B2EdhSqmTBP1dbpVk7flpIZ7otWNvlFBwg1Yq3GI+x5Bv7RwrEwCw8fw1SCFVSn
	 Qhna8q1a2CaSvDKH2miKDGX2BIi3jSCYWo/eEdj1T4etuvCZzw9+QMik9tEaTJlbQ6
	 Tphaz/mCigka/I8fdX3eIjQ2ySYwVvYwia4lWYwHBo90qaHqSwD/kaq+y9vnDh5G2a
	 aqfnB451Lxl5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E32C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170570629637.15537.18245898078303742716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 195b1885d87650775633b724867d765f52381c205db1250c0797e5c80eff98f8
Date: Fri, 19 Jan 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705706296
