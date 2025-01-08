Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EE31531C4
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736310354; cv=none; b=jA2ueVX49iJUH4sP1Qvn4VuMeand8K6lYoDrc/n/7bDyT6xdhrqw2qF3l+CNYPAaJJt5BBLPJduD9i3GmsyZG+tvFZ9cbD46XEDLPRcXuzuGIcOUHNo5KZKGr/h8cHvEONXbch+UATfkZ9vAUPCJ16L6Ajgwp2zxmZcBGbGKyzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736310354; c=relaxed/simple;
	bh=BtmnGe53uo7OeBuSGzloJzu6WFuUWh+EiOb3U7CxCPc=;
	h=To:Subject:From:Message-Id:Date; b=AHtmFQUzaZzPYnLOlBTuo9KQSNkt8zdBFHvEhhhj5RdxK4TKPvfrLbDTwYinvddMCdiVTlrQ2M/MZXAqartBcGd8ZjakFczTX650zStpkBkwtbSUn00RejLci0cY0+++o16NCwR0yHfrceeWh4pN4bMM24UeMglx5rDusX4gyxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDq2SSv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDq2SSv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7399C4CED0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736310353;
	bh=BtmnGe53uo7OeBuSGzloJzu6WFuUWh+EiOb3U7CxCPc=;
	h=To:Subject:From:Date:From;
	b=CDq2SSv/dD/neZ9n9u6Ub4INdvVkkytlgtMAu6czWuEMPpeIFjc5Mz3WhM2yOo8el
	 m7PGpzyPVc/djAgECDi9hev91WRBhnsAOWSs/ALXofzXShwZyegzkyiUNI94ri4KC0
	 LMIwEnS8+Idh7jElZ4rJUm342helc3bwrBhqaGIWTdz8s6gj+IIPQECBv0qKwKO/oM
	 WS5Z1L1Q/dzNekOgRP7eVLnMJi81XGBA2Hv1hGZrOVUruujxG3d3E2GJl7PSJfyaxu
	 JG7mYDVgpM4kor0sjFY4ZlLCwkat6Xxjc9cxT+TRD5xoRDU0xKaAZR9OQY1SYoHcV0
	 C2VJZk/5P/sCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE7EE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173631035359.23499.9007036597654790407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6c5a84396026efeeab86cb639900e2bf559818200431f836f6b2a575b46acc
Date: Wed, 08 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736310353
