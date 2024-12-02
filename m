Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46191F4FA
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733154354; cv=none; b=dGm86rvp9Y1MSSGlimPzW7pTAS3O+EwPnPT4QQ87/FoV8KUeGMRvbyPc9OYXVeAcUJHeMtFBOHqdSyHI+eBhmOJWvV/unQjVfiFr37VM0caTBtupPiKbu5HX0dBGBZws7Nz19R+/Oj1dKAzXZ6PXxjEDMk+TUuYkArH9KPT//ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733154354; c=relaxed/simple;
	bh=E16NdycW7R9M/5SsrBiYh7iT4OvVznqnxgKacYNcdxg=;
	h=To:Subject:From:Message-Id:Date; b=ei9+eARw7mngKcFBlmyf6qpjSalq8L/203tUeyiq6c47WNjnymZXVu2UzA/D6lgdli9C/4qN96mFnNo2VTWk9a3VCToe+ZMay4Kjo7K51ahk/+TamWtu/9n8AuxvFF5HnseDg6SUi4IAp+wGyDLnXQL1LH22o2+o00Za0rhdwb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djKy6f7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djKy6f7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD698C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733154353;
	bh=E16NdycW7R9M/5SsrBiYh7iT4OvVznqnxgKacYNcdxg=;
	h=To:Subject:From:Date:From;
	b=djKy6f7A9eu7KRDpQFG7Pn+MtN9NAmSeSkrYAesI+wfXZ8FEYuKL5is8r68+N6lKl
	 A9MrgG9Gyvwgd4kj1TI9+tBvnbOdaDc+JcfKESDDHbHe0CxRj8hqHSc0F4rlppOWOb
	 Uo2LfjLpibcp8HL7Dqs7xVgBYr1WIB6z+Vnwz7iB+GlxEK+EYV3MCDXrATYTVbK0MW
	 eLMpbYFBCq9OS/Tjl4o+YDVhZME6WEEJBb7XCnbK3uroSPL1NJGO44Z/beWOQpgHLA
	 tPkRU6BO4hqSL7iaybQmGrsHUGD/sVqqXb3bZ5Z2YsCJTDrLLrpy3bkr9AoSIs2LWN
	 KS9yG9l6YhZHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD624D7832F
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173315435363.29439.4713793529523561347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc80cfe269b1eba28deb279504eff6acac416cf279b8c4f8f897c91410ac75f6
Date: Mon, 02 Dec 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733154353
