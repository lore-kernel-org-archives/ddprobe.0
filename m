Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A46F259484
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734770754; cv=none; b=GIFWnFIf9qVvNOC3rgfItH8pOzZB17iAvWIzlMBhQTzpVkUnHg3dOsUXX3lQ3R8oWF2U0uRE4PELq+Q6ZdJwO/T1nRJDBGX2DrSFqtLroq8AlRjxgr831/xjmHEkBNT2FBY/icdgkiVrymVJWk+4t4qKMxpoerRhKURf8njniGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734770754; c=relaxed/simple;
	bh=o96xoUeY1KoHEMd08E8wOwSVxpi9A5c2JO+9gITdPYs=;
	h=To:Subject:From:Message-Id:Date; b=HvokBqQpWowEe4JJ61svxDEb7kzR8sZlkMJj49GZxz9DCeczeWpp1eTh40HojnObAevkSSc8Jb+1DFEHAcKsTmdJyOXRq0xDY6YZ5ftJcE7Z3UPq+FOlbeOk8T9jm9+HcVuLTyFRkg0Sc07M4xcSt9c2rc3VJZhaPQcUEsGWnPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyb3o8a1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyb3o8a1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4577C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734770753;
	bh=o96xoUeY1KoHEMd08E8wOwSVxpi9A5c2JO+9gITdPYs=;
	h=To:Subject:From:Date:From;
	b=kyb3o8a1yMPbMO78DWKfFCqiKF5JljoeYCCJORYO5sgQrLHMQGmGiDlyqdJ11GIIA
	 USY5wpSHcLq+zQIIFBD7fPgY1C6pD1n/iw6tNA139gE1YscoigXYvHVj7Nd6lEknkn
	 AmjtMr/LVV439eeYXTYCIxcS/U4a15Ahoav+XIpX35KZIZyrtcHVDW6PtlLrFTVrf7
	 pvMJPAiBH5ulN18inlDuxPAq3vrP/qhqLV/GuhTynhQ6E2+FEVaOwXGIIppPVgu8Vb
	 nn0XSnQ67l4FZx4QQZEiMzLJ5/dSH+o5mtLn6UB7rDAs/mHYmVHkViTdYj83iBkmJ7
	 sOpq2TorJnxpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF30E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173477075358.4190.13089017628766715291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b32dc2040c0b921d361f9b6651987d5694ded727bee761fd47fa31a12ee260e
Date: Sat, 21 Dec 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734770753
