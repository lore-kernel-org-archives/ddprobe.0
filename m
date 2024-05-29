Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DC0F161B43
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 06:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716965063; cv=none; b=tv6Ek2VDZI57sq//Z6MGs4+OGLdOKrezOThNBpxUKwL+ycHCcSZbHPDxghtcGGbe/plelKlNqC9OVBVW0s1y+LddhQaqVXFKxohgiY1CoONHuVSIiRmhxgNyhlWTCUXselFcYRt/AbJsC+4JiwDBv4nCo+1aKhHwxE6ooUjTBRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716965063; c=relaxed/simple;
	bh=Z/aJKUi6V+ZWsHcQybzzXGU3QH23AOXPpQ9lK3L9SwA=;
	h=To:Subject:From:Message-Id:Date; b=RJYI1gu8SJG/YSkMRRm87LifZ6AYsBm/8HiOgbU8H55cf7RXL4m18eSTUVJ99ZgHC7cj+UOeIxP2BR22UR18OT7JPFCXUVMHfxLFvjd9Pgpdd1U3y47+vX5xHEo/HgU4Ckj7PIbjBcXou3ARXYIsaZT5EhW1fcudJ8KeuDZdYaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2ron7+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2ron7+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E1ABC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 06:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716965063;
	bh=Z/aJKUi6V+ZWsHcQybzzXGU3QH23AOXPpQ9lK3L9SwA=;
	h=To:Subject:From:Date:From;
	b=C2ron7+emgGj+/X7DMNBmRPddPy//rZXhX+36cPbAFmyMXJ2JLj5PkoCrznlzZLLt
	 Q0KLtFnrZYZzfeAzxG+LrX8iFvQu6dkDjcTSvactgEUtCyqBSpT25gi9aEYOy/BEYm
	 D1t1u8Wx/7EM0lEuhbQl1FjG5TZsaq8D34j/hRPSYweZ+U6XBmaAjsb0OKbjVC24+o
	 fH5qlBgpW7zdrtHTVOJguFhq1wmol4xcqdhy3bIp6pLg5ovC0hhLHHRcotYn8hfQp0
	 wy3Uma3vLuiA9Xw+XcwYU2LwtEHty4a/gDLdZ+51Jnja+5gVDO78ktyWDHkrJYXqzY
	 HomH3EwJAXQJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA2C9C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 06:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171696506281.14595.9985399418772950361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c1a671496a0d97618d79d6dfb8e76c2d4163a584deec42dce5e1be0c2e2463
Date: Wed, 29 May 2024 06:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716965062
