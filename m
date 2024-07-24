Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239BC22089
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721846754; cv=none; b=gSn/TGFumG6XyJ7gp8UOJ/wu2ATLFWdE0Lj8qk1YylW2y2Aq2XO7JoavqzgEjZNO2X0jFF6+dEn74Obg0VuPn21zPyWGvMS29cUD3gYpnSN7JMLcDTnYPFFBsJlFNDnLbsmCdDwAP6VnGSg4rfotpbCym8OQ9B0VVydTsJc1XcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721846754; c=relaxed/simple;
	bh=k2ANJMGyPykEoIGk+z5f4MeIaxX8bugRQU2/b7homwg=;
	h=To:Subject:From:Message-Id:Date; b=B99QVgfjmR04caxp4yYhjn8qhunB5ekWufAIbQZn03D+gjGTDrUyifWo0jaSUCTE1MYQxYvcQoPrt1C/76Yx51ekDnEWE2yO/E4hhwcBzBVDgfOriV4nNxlget1Pz1hJTvzSXIRgx5YelruFP4oLfKFYe7Sfh7uWFPijreHSuI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5Ht7KCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5Ht7KCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFFDC32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721846753;
	bh=k2ANJMGyPykEoIGk+z5f4MeIaxX8bugRQU2/b7homwg=;
	h=To:Subject:From:Date:From;
	b=o5Ht7KCH1x5fpRmz8fKnIGEOq3L1TUuB5ks3ur47MzKw/XGarhs7ojsCbkE4zd3os
	 tnMPHwE8CoeLKGUhS7sHE2TJXtfGwE8K62ueiMIJpJD7DsADmKde449q3g/6YX+xqx
	 EI0U4nGc/F1HtHKFCOcDFiBkrnOE/QBSofRoMghgRbmegDhCnYZZH4eeKg9prAwPCY
	 zqGmXjdE2l14Tb9y2EuB6R56bMz+8q89ID2TkXlBiXGQVBxG7ggkejpdsU9ilwUFuc
	 AqB+cwLZaUM3tCr2Qkw3S44LrxpvIRnekD6caydSFM0b2STbdVwYODVC2QG9tXeLxs
	 t656fTGBqe8Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94404C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172184675358.6399.17049816797964971506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 927318fe8ceec5871eb7eeb68c8d0bb3fd50ee7f41565ed54836afa00314ebf3
Date: Wed, 24 Jul 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721846753
