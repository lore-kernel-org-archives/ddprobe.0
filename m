Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262B1149C4A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752306594; cv=none; b=nVrfaGMCUrj2DmEb5SiOoXOA2w9sop2apZfxC0YNYnxAwGFrnNjlbffGHevwe+4QuJwyOvukXTyQ1J13PSne+L46AdsjSvYR/zT06c4TrugRRJtSAmuAC3OBtqqBJipnlGu8j4M6F/a86+XO8Wq8UolU0jIBsTZ++UO+PPTsY4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752306594; c=relaxed/simple;
	bh=cVvpUnJsVQXjyqdEEm5yOmv+ON23ILTOSXg2KxqpSk8=;
	h=To:Subject:From:Message-Id:Date; b=HMaZt+XkLesrgdQbZseGaxAQzIDc4tw3+csw/0Kx7vx38fUnz01TAFGy13+/AvUP4+AXOMp7BRnbJ7z0OgvEGTUlgW2F12LQ0reH6wl/CCrsOhfLvTdXvOy1xmxCzFW6XGhSuzgD3zDse9xkxj0iRqVVi57A9cylvROdmM9k/mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xre2lDuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xre2lDuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F69C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752306593;
	bh=cVvpUnJsVQXjyqdEEm5yOmv+ON23ILTOSXg2KxqpSk8=;
	h=To:Subject:From:Date:From;
	b=Xre2lDuuD0dMJIQ9ieNr7I98QWsJhnDL66xlL/eStcgPEtj4VCx9Wp3sZlcN/lA+U
	 6fDPn2xfDoWKNIz4hFCRjpKKQ1BbxpGtSjmvw8anaF9R+kyWWhhlhflQ4371GQFCdJ
	 SB1gTUiYIHH6/GCJ/yUGBaFxPbq0C1zpvvnJxx/NrdSxnrT2ycVc5cTx0GOvcndGBM
	 azWv2zYWEFtPApp0B2EQ7JiT0cGzHYRnoLE6KkuTBKfHUezpkGW+Hp/7sEjTImKkAm
	 fHf5uit5p+UJoakmr8nJbW9n9NUg8l7/FZjfld6bUUK2oCdE8kyc4NbH5vhUtMJ3+E
	 MhTCZygtwubcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF75C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175230659358.20574.8684089967484420852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fd969f486442b3cf0615819fb72815b0fc43ff3ca1e2265a49664c56ee63621
Date: Sat, 12 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752306593
