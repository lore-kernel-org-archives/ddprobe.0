Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C0B33C51D
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773866694; cv=none; b=GjHRaagTeDeSvl7Bnzn3hG/el7WLJqV7Anqz1ISurwdHTD0LQ+rt66B54m81Apnuv+qqU+IL34tile50bX7h7bDnGpmDalqozWE5km8k69bf5WhEaYYj7Kr4Z10XY7GPLicaydF2zj2sw+TqV70Y7KZm/1o0N6pT0/la2wTQqP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773866694; c=relaxed/simple;
	bh=rov+gOgrIwszVU4ut7IOAoAxGeLmvN+qABjcVwtzXT8=;
	h=To:Subject:From:Message-Id:Date; b=NkDWRlIP3FPU9LaxMcjqNrTNPEkWCNrT3WW48GJmRe2bsbNjFn6slVoqjg1Bcre3Z/bt9vPqB0cBdXm+DPNFGnxRmkd02TB/bKz0WpW/hp8b/VEQE+2Uvlp5CQaIWQNporLsWu+BQHYJizr84/L7fLFha2QvP7KVAhvxTVwiyws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVAcwsdj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVAcwsdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B823FC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773866693;
	bh=rov+gOgrIwszVU4ut7IOAoAxGeLmvN+qABjcVwtzXT8=;
	h=To:Subject:From:Date:From;
	b=ZVAcwsdjC4glF9TtCD549mkEu0HcEZxPrviClJWcTF21DpCyWAK4m/2kmw+mUO4I/
	 QNpqpkwsWF68QUjXBqsjQtyhHnb6vZrVxcfqdtnjwTPAHxZ6zFhy3QGc4k1P70tvpk
	 LeFibUEi/BbgVRtAPV2OUpGxP9i5DrjNutK04iAIV6HwcvtMFxuh7b9Imd2mFIvipg
	 S2sAaUbima9nzJljb1p7j900TZpo0UC90gPJCw8v0Kp+0ChvEl25d+op5BXQnmEmbj
	 S1IOj4bx6Irc0vJ90O1uBVqgUkfaTZYEMw8Ts4fUzWlXtv0HtxjpIn/u/gmv5/1PbP
	 tfq0s8QCFc+bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44231077612
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177386669364.13836.853926854389738831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2045405f8fc9eff1c51c9de3209dbd3d2ba5a236582da4f4c24672fcc628b37
Date: Wed, 18 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773866693
