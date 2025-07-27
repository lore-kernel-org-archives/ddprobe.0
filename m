Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E473B7A8
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753592394; cv=none; b=OG3qiBcfhtltFnVdqZf1FkKn2t51HdJWJz6ia2gHy5kfXYRNaeZ6pT5qmz+HU/WW48MKblbOfAKxQ4NuzarudPvhXQWpZnW2AIedh8Yc5LFR2fbKlmA8msd6mBVrwpI7Eum3SpLUomNcTuJTP3M63Y6BVssudIsJ3lYI53zoN3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753592394; c=relaxed/simple;
	bh=H5yR887cUzvNeF3Fh9WClvd1mw3lsyrf7E6Cgose9F0=;
	h=To:Subject:From:Message-Id:Date; b=eEb28wCENsC+/4iU4UVyBBMcpgjBjSso+CAOQFBqc7erzVBXQNzVWTqv0MpJrLdI92mJdQ49hIESBNa7akG1MPU0S6YWvAlsJY7WSDwyseRHXgsziXJe3Q01Jf17wcNjBJAoN0nr0yfEtIZ0Oj6+CsUQiE9NITyhGXDw/aA8mGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATdcqRev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATdcqRev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD665C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753592393;
	bh=H5yR887cUzvNeF3Fh9WClvd1mw3lsyrf7E6Cgose9F0=;
	h=To:Subject:From:Date:From;
	b=ATdcqRev1iGV6Cl3iIoUKZNmKnHkiuSIq9eJDaNrH0knADXWfLveu3lcHUxT4vKQq
	 E0PCm2ENxo56lVHcT+QJiI+PSYGbt1FXhsumAP7XoNY22CasOjWj7/f57ewH/GbpKC
	 wWj2rt/fJ0/uWo2Z/2p60uh1LtTiXK22+F2KjzvNxp/V+6FtNSzTFS4EHNHDE+Hqz7
	 IYJElRDf2vhDERLtnm4RqZo8g3dZxgmM7+m3fWXhO/GaiDsx4Jaga2LqukoPzsuXXW
	 Z30KhyiKfbpmx4XrYqi8lMKOo3WBvS1Mlzt8OORL0vIBagPZJZr4G2AYWZhFsgdXYy
	 tsO2AOvppUkrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB21C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175359239357.19075.1067818045961867736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30aaa2c9ab36c0a768973df509fe3c4c3cadaebad2c7f2897ee36814b41862d
Date: Sun, 27 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753592393
