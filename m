Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDEB200C2
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765552974; cv=none; b=gDSoEf6mbpq3AYPPWGJIm2VKoLigvcnIcMRoDaHO1mcGxNsstje03MG3JF77mQdDI3eV1fIUMEeBUvDvxsXCkhzKT0yZUIGJATfcqPV1P0XB3V2/yxQaF3zAocmi8/HVp0knFfEriBVWT9749soBrcx98kmZx19HA9DcNLcmNJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765552974; c=relaxed/simple;
	bh=vRLv4Fj3f/r354Hdi4CqJUhCBy0sA2SH7ybEA3oapG8=;
	h=To:Subject:From:Message-Id:Date; b=gLFplwt8Tsr5cdkFC66SNn+ByVylU8GHg37pZ7mHCrZeHxeJwHhNNeuHnXaBPy1TPkz5THG6owbZoskoQ4jyf/nyeMCbaPTXYn3lK13c478YGXr46ynt7nrAGfHY+j8+O+ys42HanGY29Y7GEJ/DjaSa/lonUOwT/+xa80ZjUU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEoJ6D49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEoJ6D49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D08C116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765552973;
	bh=vRLv4Fj3f/r354Hdi4CqJUhCBy0sA2SH7ybEA3oapG8=;
	h=To:Subject:From:Date:From;
	b=MEoJ6D49BGG56bvfmDA+CyOJH5woIY/cG0sUBUyzoc4CilKfSLq3SnaMSzItiAUlz
	 4pdXBIbEUjD301LRBOMLU02V2s1pJrkuItRSWeDcqqsSigyKPNJmlsKzhSTy9vQN6n
	 yH5YCwfSlyDGL9oXWJzzxiPrcNqdPpRZSQ15xryecBdCEBonc4dGXosb8kP3FKDR7d
	 Bkv2xLPx3dSw3FFYZSrEdYI59j2+8D7QiaYRz53oei3d5bM7k3gDv4ZdBF2TEUz0QF
	 llWDl9KA/d6Rza+Zc0pM59a+tP1y1/qYiQEsPKsQylrDe8K7wk1umQG+zKzwyoRp4u
	 SX8csbtOg0mrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C1FD59D62
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176555297358.6938.13994566331119637627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa1444d26dd7ece1e5ef4c619fc66a97f79bbe196f2baab751b973410ca3ebf
Date: Fri, 12 Dec 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765552973
