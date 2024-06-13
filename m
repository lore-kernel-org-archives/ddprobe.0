Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A418BEC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 00:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718239703; cv=none; b=EHg64k2P9UbtJhgWu1+SauyaBX7CY/D+sBN1naNSVb96dwv4If0F6g4EdkWj5Kwa6WBqHS6G0UGvwph9zTgWNsqHYOFn2Q1dpMNBMaVXXkPdrddhbsziIqlImOJ8y4B/5Y+3raVYNAzoFXFUOXd82aglUmmZqEMwwAVnA+c4w6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718239703; c=relaxed/simple;
	bh=YQWjeJT8llmvyA74RjwvVmMMyifuEohuxr4w85b/P8I=;
	h=To:Subject:From:Message-Id:Date; b=UdDXiwCbZPUqtWOfzjrTnfZgLoMa57nuj6vsdiUBOAaHOgtZDD9GrOeTJLszBoUY4b4MznnICgbS70SkObpfxE5vstqCL19N3i+9mB1KYSf6/YC8FufhWEHA+PCweq8F1Oa/gIE7su7V+Mq5tdROID2/fHBZiqLZ1wDymqTpWjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpRFMiIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpRFMiIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1198C116B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 00:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718239702;
	bh=YQWjeJT8llmvyA74RjwvVmMMyifuEohuxr4w85b/P8I=;
	h=To:Subject:From:Date:From;
	b=dpRFMiIGXLjABgH6AeUCumbjmuzdWkMWEbh9iCUbkqHG+cNn5xPErreKm3HDbPlVp
	 aYp2PLySeV/HnDHnfVBWJaVsd9rskNGMJOqdAw3af3KRU8qLC/SdP6Nir1GSrUaf1q
	 DzYgV6HQtRBkL902XORwv5vJ9Np++SQ8lCoE9Rh6VoSQsfaBMRK0kvNTgCTvO5lAr+
	 wKUPoMgAsrvrZ8FxO4T/eQyQw74ju3Z8Rbpk3y4vbDilQrDfvuI2//AaSE+Z6BFjBl
	 +cZ8HA29mMoSIxtCCJBaookdnAPWQt2DpcKD2dXRoTKnOYjnhAe8IJoJ60wHg2u20a
	 DVdBos3WEYvbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA4B6C27C53
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 00:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171823970280.28251.5810457350431652256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f50fff3f0c09e2690a86915b5d2abac4cfc36017c140f084f28cfc350fb8cba
Date: Thu, 13 Jun 2024 00:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718239702
