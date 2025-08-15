Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233C921FF5D
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755254394; cv=none; b=WEbkUEQ8t76/VjK8ojxchJ+9vFWmk/oAouVTR/QMu/4+k//GUSQ+6+9pWvyixYNMQZQ4Ds6xHzUUlNooDFVlZ9DoS5fhLooB28GtdfghfR4J93q+WMog+3tcHjmbo1bZLNjEXTduIYkuUThh3j2Riuo7ACSRHm6QzlVo2viBxe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755254394; c=relaxed/simple;
	bh=Hpnl6eKqT2FA+++A3In581w6dRXxtlxNXMUNZXSaG4c=;
	h=To:Subject:From:Message-Id:Date; b=Ke63dJdrwozAslOo3R8/KHcAUeKh7wzzkF0f9GaB5ZTnM6l6aFriiR+F3M8LIIofLIzk6OJ1gROBSEwnId8QDRqVUsAa3yWuiQ5wVOWbr+G93fEdk5HC3H8A5w6T1yH3UlihOq95ALQGYawoVQT4LuDmtV7FY2Ya3G4HafdwZMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SN8+a/PT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SN8+a/PT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F77C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755254393;
	bh=Hpnl6eKqT2FA+++A3In581w6dRXxtlxNXMUNZXSaG4c=;
	h=To:Subject:From:Date:From;
	b=SN8+a/PTvHtzS4vxXnu/DpokxxsNqHanQ3es2TJ1lZ+oD7RgBot2ea5hWcDHoZy+L
	 H4L7dhEZTjaOdsn1/6CsAjIj1ns30f/A0PrCrTgC1QdtRbeMLbOKT7zugRMDmPjiES
	 zO8KgR5FYujnb3FDZiptkXvWMHF9DZaLOKUwyym8Y/I5/Zk9uTaU+CMMenmEsHeu2r
	 NQV60K0KIMPWALgeNs+5OnTagWNjw0dmDIDkwwnzhvnkJAwdKmBSlDHm/h0+f+dgje
	 cpaErVOx+3M4vl1qZ5FgkGxChGdPzGyc/Q7T2gXzPnre8qESggDE7Nxlt4AlrtQYei
	 PueRIJ/MOjqwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B86CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175525439360.13901.14372418094472623271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848f0c152c14929b4b0041900a4ca31ae1ccfb99e870a204f826506eb4b412e0
Date: Fri, 15 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755254393
