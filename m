Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1950C17A309
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756561794; cv=none; b=PAfDW8hn9RgNI9/MdtG6pYs1dHjsLb9zSKWucfwBdWmURwuLNYRoTn20sJumRcooA/E/6s87WetDBMBKra7kEd6B7LvrtPznCqVL64PX6BEmXGszH4/XGH/1952gOMSkk61c/49MA0TtBM9TZdaunmfuV52BjG7UlFzPbglNbPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756561794; c=relaxed/simple;
	bh=HMUlC/kEeCoUdEyFnOp1n0ZsCJchTtRdFSokyvA0dRM=;
	h=To:Subject:From:Message-Id:Date; b=WzlszSLljfIkPaGrjaQqw9HvL2BDt+HrBFLygi2o1HJA0A8KIiNFW4KGeH352+oHl5Lef+6RwMrSCWdP0di8X46OCGohIUveN9mSwD+7f1vv7UwwkfpAJzpWPDY6hmBfjakrRD4O2kGkcUTLpovgjnr1SPyo8s6uR5vqmKg5Z80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOXVCPty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOXVCPty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E0AC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756561793;
	bh=HMUlC/kEeCoUdEyFnOp1n0ZsCJchTtRdFSokyvA0dRM=;
	h=To:Subject:From:Date:From;
	b=jOXVCPtyE/tquHh2NBTp/8NL39qX2Fe5elbxS7d8kJW0jA98k13QSxurMxKNFuXS/
	 kZ6MbrEsJOip8JWZKg56F1AiIWDcCSmHlle1Efqr/o9yh52YS81rhgXGkLsMqzNjRb
	 uWBmu1M0QmH7CyDxBy6biQ0aIMNDRzWpnqIh50DzeWRA1qytJUJmvWOxck1KARcY8r
	 bBqZqNhThw/V0nYdLJmwRSnMkJgI97ZQYKsbC5OZpKIvTwUOFI5xpUFLf4De6Yly6w
	 RLsyqUokNddLDdMfn5b8Wp6N94YAJXIOesrH06e8PbdIkPyV0J56FShopagUI1O6Pk
	 69JkCufKqbYUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E69CA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175656179357.32619.15230453368034146875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3ea44312b77336c420c7489dec7db0e460076b6383deb4230a3e2291295b8d
Date: Sat, 30 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756561793
