Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6FF325701
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780442674; cv=none; b=nspybYpEjH6yIKwG3JmcsJERRkDpLUchPOAnD9aLu1ZaYOta3Q+IzB+tAFYo3wVQR1gNdADcRHrf3HPwRRpLtoqYqwAtsmSbfyrazgAYqA0G/etmjf9n/wrp9/LxomKZm9ZeC1ezjw9n5pnBsv+YK9nr9LbfhLHbzSwjMXbELH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780442674; c=relaxed/simple;
	bh=VioZNDZzFdYLdMGj5eG2HufueoD1XSnSEz2wU7s/qF4=;
	h=To:Subject:From:Message-Id:Date; b=fC12OhwHeutpYpZ2BF8QY7+rEfzNLf2oFhvoWKk/GKg1+snE+rXHiuWC1XRgjLrXi19hPFC7pM+8YSMtb2L7dy+5wXzS7YafN3lzuGRB1VpbRoPl9EhnKQuae2f4UPD3VuoZkRUUMHfJwABBFa32aqwOMcqEDuVPV7VT3Uxv6IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjiHApEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjiHApEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA637C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780442673;
	bh=VioZNDZzFdYLdMGj5eG2HufueoD1XSnSEz2wU7s/qF4=;
	h=To:Subject:From:Date:From;
	b=KjiHApENhqNMaR+5r/Tb0JvgaKuczU+IWsJqaMbeD/StnZ8KIiUzpdg28dmPBnIxu
	 CM9fa861e4BSnEBLPiqSqgsA3mzF9FSWIop20oTd8hHRyQG9wkXVe8IuVIDkbEHEM5
	 KjeSvon53i0fI6Enx4yddRHk9yQzjcQK8IaMqhVuOhFP34Q95inrFBA4T5yJylXsEX
	 YXX2OpJaO7qDWThhbVC+ZA8v9b6fUuNuGirA2KyCUCiGm7kbQq6UclhYyjsg8I6PEq
	 E0ZRRtQumB968rpwj/TdUXmwGfBV2GKp/fxeoZnCfVITs/vXIQHlL1EIV5evG3KlqA
	 Q1h1ywZbESSoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF33CCD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178044267368.22855.15616653665078059164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22cc40eae2f6f8a85e2baa87e87e4fc7906ec712bd9e83fc69106b1d22c8ae16
Date: Tue, 02 Jun 2026 23:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780442673
