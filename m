Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBCD374D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753675195; cv=none; b=fkD757RLbHJWvlhfSQJAhhHQ9jcFKb4R+8+LaWd4CYADpLfemTYaypFmJrgxoyATZrunuko4ZT/cu/ponF2XiiAqigZ04Jbp5tjGxn8EvNlp2Xj0SsHcRp9MNpmsfnwfh4qZeWxjmDaao9NhHDyoUy18O47XDVlSgUXC16UCyDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753675195; c=relaxed/simple;
	bh=lXem6ewvqjSfcXEQskYR+oZTIFVx4Aea+1uKZ9A10kE=;
	h=To:Subject:From:Message-Id:Date; b=LkAQocvkEO9fZO8UEovqgbEixtlo10wSkWtw9+bfTLPX0XVQxAzGImGlcCvQeGv+Bz9Nb+GMglRkNJCIGdH4hdgpnr95JJ2o4TOIRWGsSsBPderORkc7AMlmfKYcKA9XcKm2JY3VqGFipPbh7bXCdsusNNsnoPVZUhDZ4zjo450=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbOQ5Ft5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbOQ5Ft5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4A1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753675193;
	bh=lXem6ewvqjSfcXEQskYR+oZTIFVx4Aea+1uKZ9A10kE=;
	h=To:Subject:From:Date:From;
	b=AbOQ5Ft5sklkC+T5yjnqfUZyS6kPQjZI4GXsXa87BDvb4k+nOhdgoV+yyaf+TJMTo
	 aM93NYiESFJ/xAI9pCnX0wc3uyvhNYN/6MFiYAfyliOZvuyZ/iyf1l8QA6fyivgwgN
	 qRzkaCLIfeylaTCxDRFv6/ERU9A3IOOTkg6zfsBtcaqgWJ/JEHu9yflACI4EfU8tdw
	 20C3vn9TWU8G+c2CES8IXIEsSvtMO7T5e1VJ6inz7ZFtkhK+dFIOJFlWwtXFnJm9IY
	 VHic8aJMzuMM5Uty45c7taw+mF/wh8YdxSsu9KEGEkm5oAvR9zZWxDr1E04oFuXfuy
	 UMORMahsXLw7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58EC87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175367519358.12062.4381960574183953092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da59a475d074c60091a6c9e1e778986a1374503fc714984aa5372054b84da2f
Date: Mon, 28 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753675193
