Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6193A1078F
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 06:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741156734; cv=none; b=dTEmOmvkoBtd/VdKNVJxUog8AMDHnGLM/XN6eF0A8IbP5ez0u+xJAACqkO4VNa0AVX+YQJyLavon+6LGL+OkJv2iTrZaQ+qMgL34ToRz3xbPvUCrlzSgk5XgTs9rod5gtu3rQCKTPaS911IpOp+IxvdYyScaX68ZdHKimM8OEoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741156734; c=relaxed/simple;
	bh=8/stpVgAGTpc0CBP1FQWNlgm+4DdmcnPQaJvXqp8UBE=;
	h=To:Subject:From:Message-Id:Date; b=Qhi9P5TIdNCLUOSnNFu3qS8G9n37+7MxGN1j2v3foAgPocUvN26XcAd3Tj/oMGm33CAq0HkRAfX3LuldgWSYYSEclWtQR8MQfH7k8dWIpxpL7elMQX55HWvRaPOTsDPhp6YnwIQ8QKf4Y5HLVURHFwrhjMN0Y/HprF183H1YKCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwfWQndL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwfWQndL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC56AC4CEEA
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 06:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741156733;
	bh=8/stpVgAGTpc0CBP1FQWNlgm+4DdmcnPQaJvXqp8UBE=;
	h=To:Subject:From:Date:From;
	b=LwfWQndLp0Hm99u5sqPITAyQBwQKE60WOPA/foq+1zNds5SYnCJJKCdO4Tvp2/wcI
	 le0i5yAF/OPj243ztdLHGGLbjiso3fopc/em8RMVyZsymsDeJLL0+uZLN0BwVBu2Eb
	 FceEwvY5CMEfmGfnkE8KYWy1aF0vm2mG8xO8SX7EthaPpZLBoiJaL6num12UINb7fl
	 jCz24YjakUTyDpCUDwTJGUL5rSOwi5ZQVX/OyWh32wVT70yWNYuyzghlYojyjA0VFF
	 D6nwor8gigiL7in7Jk/tvLHiCVL20ntbJJeDAkkUgEmqn65OoSYoIP9t82B8J+AmqR
	 HyYehU9hkq5eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78B8C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 06:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174115673364.7287.9733801659359660745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a866e1a7d3b60f9603b50539132003f4807ecd60bcd5f74d40a174a574cea7
Date: Wed, 05 Mar 2025 06:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741156733
