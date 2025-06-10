Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2239B23816B
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749598795; cv=none; b=F8BFq+PwXBL0lJj7YVSk8txIh2THucHLdlM8dr5tM0jDb9laiR6Ksptbn2nczTAJNAdQeo1ffNx8+l7daF/I9c37ek90LMt2xMDCXbF/ezMFkR8eQ7CmKc0Qh5Hpw+3RCo/6ieNJiiGkcfyZmeO0/x32yAsJtBLkMOobUVSVEb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749598795; c=relaxed/simple;
	bh=84M26KuNCSqxqV9xF9hQk76pRp8L/wVpV9EEXsusflE=;
	h=To:Subject:From:Message-Id:Date; b=PtSIc8+jOvwGR/DALbu0SCQqh2iM0NuDWeEaIzHFqDWIXEO29pxO7/7Qfv6537lZoB8BZlyo8oRNyvBzu9+MU0XlJSiMTLwyB2l1YoP+4dw5uhrm6xyvRd38MMQoHc2aztpnoOm6/RHdq4U1/HmFRD/DhE4Q1hseRgqIIDl4vxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ec98yQL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ec98yQL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9D8C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749598793;
	bh=84M26KuNCSqxqV9xF9hQk76pRp8L/wVpV9EEXsusflE=;
	h=To:Subject:From:Date:From;
	b=ec98yQL1/y4x99nGK3Ia6PVGv5X+QLFP27CI2SzCwg7ZclLvdDdxDxhBFxpiWdJEc
	 70rAY90Re7KhtDyGpKj94zwJYcTPVPNm62EhvqYJcIfvUa7O1bh0PcDIfYxo1aZiyk
	 4VnjW+c0LTV8aj0ivb2o1HgJTVI5TA1CFOUWDZuk2n9GPkuIerkj2mnNkkRPEsRIBP
	 ZrdX23PX3eOQQafC+7QG1qkKlG7+mnzlD4wMF3bEsG8y2NRvPSpFRVnF6YnIqNbPv3
	 zMJ1D3aFshxPjfdlWa5eLxWEz3DjLQn+Y8uRIMXxOVrhELVF9kI004edqulrbBPZ4X
	 gleuO73z8n2zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E751C61DB2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174959879357.6540.13863886189958717009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6047143c0a5ae785eb93e3bb64407161feaf79248dcef0673629684a06c85dd9
Date: Tue, 10 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749598793
