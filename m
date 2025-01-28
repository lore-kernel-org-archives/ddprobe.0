Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F36A46BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738032354; cv=none; b=NL0kfixssoTQZuJIIpVCBuIcPeG03vC4j+Ln+x6xaNuf7dXz6zTa5EjW0cO8cAasNUH1fMzoQGEeAA8sKeCG61VTn/ORzJRh7VjFmTlqQy+FdkxW5g3OObSbAdBbiujq7ff2mPOqacfRKmK/RKOZFSJw3ItYO79XBe9S9WNgrCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738032354; c=relaxed/simple;
	bh=l4hlpVt8c1puuL6G31IydgJBJaRNoAQ46bBNMiiza24=;
	h=To:Subject:From:Message-Id:Date; b=eBjmuT3JAyF3IpvRlz/MLvWCga2B6ZvDh7rMJ1q5TwdlAwfAdZ1rIJBM7fXIZ/sbUcf0kXPbJ2gukjRGWEtEiHs63WUuIeFP9A2AV1EWlsdhLQ8k0c6lugJumBxapPmnY36Y3Sxkr7oPsRPQgdgTyT9OmEh1GsgCnXxmKgdvG40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4gJv23r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4gJv23r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5ED0C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738032353;
	bh=l4hlpVt8c1puuL6G31IydgJBJaRNoAQ46bBNMiiza24=;
	h=To:Subject:From:Date:From;
	b=B4gJv23rZAeg83fiy2oGAtWY9lvUkyCaOV023FTjzEJC7V0Lk2Wowz5/K+k43pgUL
	 jIwnMV3Dkq/d7bu8J3JAI7/22pi3sGpkeQsej/s/ww2KfuVnJxLz63PZQHtK31eLVe
	 FyHyjngfHwOSwEApIfx0s1OZ6n1XlVBXQcFrBfERQXUheGS0CM0mXYPer7hCiDBnz7
	 BFY+MN4jWQEbrficBeY/9cKVVpkGX56IU7eScnYZPVih9dCEAH+/8R2voGJxCg+ENM
	 WQCQcM9P2ipDBKlTXldiHGogF4OV7VEtgKutAJK1nRsehN95u8UeiVqG4AUjX9g67w
	 nA8j1qVDO5xVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A344C0218F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173803235361.7789.14248188990546098399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3e380a5a53f2298a6d3648612e6e77d32c9a52709632b595a3683ab9b98ab8
Date: Tue, 28 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738032353
