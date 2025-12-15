Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283B7202C5C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765758174; cv=none; b=hmntqf7qhpov4xAIcQCE+kgkj5GbdrnhcsGjT+UhkiLPC9gD7CfVsPF9Jyg9xa7ePR79pspBXzDfiGr0s/ERwLo+dVR7UqJpni5pWsYQ+XjOjEbJQDUVDxjm4xzY45qlLt1dIdTjuL9E+wqzZ0UVHmVNga+s2fgfHd3CYevayJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765758174; c=relaxed/simple;
	bh=QL8+7fMYJ2UQD4LH+uKcjcP1lVaCsI3D2qwoA29djiw=;
	h=To:Subject:From:Message-Id:Date; b=D1YnbCcJndzk/ROTBWbGnCOB3RdZ4bglqzhk5p4wMcuCPUGSEs6SwiAuO0NJuufhCClKYJfTyfMawEANzfQ7myaJ2LCJyBAGwFGK4cbAnVjPIFXArIjtsqqZ44TODG2cSWrLDn1wK6IZnBBPUbYv6uevnC5lMWHv2fc+75D3a7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSXgQL2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSXgQL2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF80DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765758173;
	bh=QL8+7fMYJ2UQD4LH+uKcjcP1lVaCsI3D2qwoA29djiw=;
	h=To:Subject:From:Date:From;
	b=pSXgQL2uhU+gsULu8BOo4J+ejGhwiHD5O8La47VTyZZVUR0nydVKPYnIellgBsVBM
	 MgCHcxLOc95sPdN1RupY6/RwwvR9/Xe2ZVkudyDpKwV7YN2AdLmEPBCo6vfvg+3XRw
	 7D5PWIbts/kB1RmCbhbiB0dt/wjXn7eRzKa+48rNY8UWAGKpzShDkBJcA3/g1v3VHy
	 hDLOjX5PrUF2HCIc5gJ9QYtsq24S4+/MNsIL9iuY7VQ5sxVVUdXUk96EAiahSm0nsj
	 9tdZSPjz6V3np5Ggi1+2a0Hl6Ue0plJvUEYxHs/KI9oOFfu6pM8G/5VBBwqRfmygdt
	 aOsY6CoA3A4kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEDFD59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176575817359.5118.5955726681125007997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c0daadf9d42f1835919cbaa63743def2357e3e04d7c825f2808e02ed1463f7
Date: Mon, 15 Dec 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765758173
