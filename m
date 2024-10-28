Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2F517FD
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730076354; cv=none; b=Abu/x6VhorW9mZ3XPWXoomHS0AY+CVale00U+sRjtayJbn1uybm3MO3UPRFQIs5NelpiEPMEXiXQLlNr9C4bndc6SM8GwSK1cvVh57B+FzzjqKs6kD/tIbTlPMDJPh7M7ZeoJ8ollg8OTeq4pQ3g53HMb2YDzSAM/qWuQkVwCp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730076354; c=relaxed/simple;
	bh=yK+EAuTeeQKenz1fHbYMV4DHObc3gsY45sBPIX4rQl4=;
	h=To:Subject:From:Message-Id:Date; b=Fei8V/ak2dKN7Hz3sHBLmlKqZHvN8RisCXBfw7uEVWF5FzNlCM4zZVvq6NOMWnrhGK3S4dks6wnukSzdPjgYTWNeuiLbLfvXA5nDnzPLVZOFJ12JdQHwFD0b/7+5bPOMMvD5OEILTmTM6YJP9QLnCRcY5yhZI7a0mRKAkw2fhM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbArx/8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbArx/8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BC6C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730076353;
	bh=yK+EAuTeeQKenz1fHbYMV4DHObc3gsY45sBPIX4rQl4=;
	h=To:Subject:From:Date:From;
	b=kbArx/8/u5///mKUlGaY2BrsAU5YGMB4k0Gqhmqpj0vgfYyKN0/KpGaahYNLPza7A
	 bRBMID8AFS7z/Sm0oVyOjD8hmWLtKMk3pKpaxqgZXdbMEzFN/yJC//NpNU3PD1ylsw
	 yZR49isZzLyvu4eWFA9HeuIeCsq9hKxfwOjT8QZA3/Rq6zPyLxhN7OMh0rbAttckwe
	 Cd1D17H1ti0Hes6Kt8ZkAiV/3VXRCEYxSsKELBBIqbYCWYphx5eAdWtGgOQEORsqeg
	 vF9VKIhq4bSIL61PlXIvnecAdw/JVJBsw2aa72QIdvRsaKRNbIACOu767n1mv28q6h
	 xb25nTZjx+9uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E16D1358B
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173007635362.4738.6737657126545951221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357ca03f485b5ff3db46b170024d4e35c40efc7eb848ac9b7a50ffae060d7cdd
Date: Mon, 28 Oct 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730076353
