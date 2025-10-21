Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D80091E1E0B
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761016193; cv=none; b=oh5Ao8x080Y+OPKxYNEHTwdET7waRgDZwVFNTc8FC6GtXDtoV6JOZoFgbXDhrU287qFb2tzBAG42g7gtMQRzU0hWyq1xclqI0WJnBZrX6X7gYzUjqT+lK0kCEIlQZulcjvSdeKVBE6nRYgrEL+0YmTvKGfgYCr3lH5+0LMK2tKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761016193; c=relaxed/simple;
	bh=EptyS8Z2KWwsYz04k4xA87LPpDxL8yfCpL+wjXicaL8=;
	h=To:Subject:From:Message-Id:Date; b=Ra+nEStzqhdGosMeuBfDyf2U1tlLdJkOIftaW71757U7Mg3L+AdaZhtHRDgkZRJLzAJIDZ6t0Ylms6cfitg2Q7RWX9t73R/M6HSvImU496m0zsW4Gl9UbIoC6Gi9pyr0Wrb+6WmIPUHsFdcR1dnoHDrV7Rw4/bljl84Q/yk23AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSiv29kF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSiv29kF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52FAC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761016193;
	bh=EptyS8Z2KWwsYz04k4xA87LPpDxL8yfCpL+wjXicaL8=;
	h=To:Subject:From:Date:From;
	b=NSiv29kF4xUtjjeCqbfzKt8A161+qMxC2hHxhtY/5p53Gh4Q42qNF9jZMYaarQ4cA
	 cdteUv8Ax8147gILK4mZi7PgdFIhsahQyc5o+tFTicrC8a2HsO2KmCGmKs8mxPCMIU
	 1T+uT2GTiQTQ1sUSdydlficcIGelsshPw0yFBLR2wzLQrWdIvKrrVOWWZ0N56xOuMi
	 T11AG8jVJtENmCdFMkxZ5RF2EPw1hXxrpjbXNNvRSmNhfK09EHFFaIr263HM1qj1cs
	 tOWJGZjyCJJ2OS+vfpJw35ZSYaMLWRYLbMNrnDU+3RBseiNHZC9jVUWUoTfBGSYFsm
	 UCSQlUZi84Skg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A3BCCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176101619358.20491.16462230144029029910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a0c45bdbd755e8839ac7ffb4136fcfa5f32149e5b90ac7b3dc1439f87673299
Date: Tue, 21 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761016193
