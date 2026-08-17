Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E492253FC
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786942834; cv=none; b=YHwJ0xr7LVclVyMbPSG2UYodB6RH3b93Tq35IWZ25M79+B7VD2AqAvJY1xgKOI2gBZqxZWBEYctYb3Qk2p+xHnga3UaiSG6INWzxe6gZWI7CjZmzm2VhYkdUGjG+n5/XE+fl3dY3ARZq3rSHO9IbxPA+JO3UWMIDN+04ISKMI4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786942834; c=relaxed/simple;
	bh=eaBZ65FSxhE4RQViaKSXNASEpPGGnhetlcY9UkD85Jo=;
	h=To:Subject:From:Message-Id:Date; b=YdxIAdtHIZ8zmIQoJF6Dq+8SNe72oAH4u0GviSvAxr7mP+/HeN5ojIUQcYADdqV2IyoWxM1B8gmX3fhItnTGPj72dpsbv2bZaIk9ZA60m8MqG0ExOShyN9UzdjsF1mW0yNhhDHaf1Vj9t1YY8VV16Yt3i39TRyvsgv1WipMTyM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1OJXoBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1OJXoBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE1EC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786942833;
	bh=eaBZ65FSxhE4RQViaKSXNASEpPGGnhetlcY9UkD85Jo=;
	h=To:Subject:From:Date:From;
	b=U1OJXoBCdUcG1iTtbwzVte9c/E+fM1wSDIbQipskFV2TULQHVv1117w6xF5ZhIaQa
	 LDXFXNFq7ymxOrFVt+Ck9LM6JaXWHYpPQC+8BFB0RwaFVMVtto+mUV8CSqai60an9R
	 adSnRwyRyk83dmsz1kO746wEYdO1gEbv7ejWSYDXzEyApkwhebHKax/gZBOOl4TtRh
	 gRhdFbzhxo4p/Mgcwee58Hb/Qb3IaBvtTxPXHfHLKn2FjCXtf81uyVEyCYN3pmpTKb
	 dHz3/lN7ptu7uJKUeTj19JyedbTPzcmcE6t3IsjpvIWpOm6s2KlWfXYOD4+zSklsKS
	 2309mxRu60nvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0487C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178694283369.32472.10653936340989360312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d855d0358eb3336e2b43bc1af4f666403ef7c1dfc6cc776e9bf279dd327c473e
Date: Mon, 17 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786942833
