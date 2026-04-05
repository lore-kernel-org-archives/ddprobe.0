Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA2E18E02A
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775407534; cv=none; b=RUC/9reGwP+FXs1BPS+4nJvgrvHImyj5edcO2gNs3s10nrssLbYO84ZQd9CY/WoolGmNgkg8P9pOQc4JoOVHH2eqFV0owVfn6qz91BHCIAmNwd7TtJl5fk618npXxVNLZwDjr2yL6BvX3yNPgIo0kntLoYAcC3Uh9YCdGW5wbAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775407534; c=relaxed/simple;
	bh=m3CEuyMURkWtNiKBLxLdYOxsYJUfCO9Tp43AMTsRsT8=;
	h=To:Subject:From:Message-Id:Date; b=G6ZWBP77BE3K9kgiXuAn1e6a3j+zJHjw986bYR0m2C8bS2OdZoro/JxVCkJO6v4vQeowAo8bc0UOkM6EGTTC7hmv+BGmVxzFMytDYhT88SPA9ChcYAPabrsMd2xwgS/TrIy/DTcH7tePlPevjgCbs345sFQa8sXeC2kUN16m6WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjrAIPWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjrAIPWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C671EC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775407533;
	bh=m3CEuyMURkWtNiKBLxLdYOxsYJUfCO9Tp43AMTsRsT8=;
	h=To:Subject:From:Date:From;
	b=SjrAIPWr3xHuW4PgvdLdRLl+StDzeQltN8PK4pBf5S/wPGOc1fIChZtrY9vAPGvKF
	 PAnC5bmeCeNsyWIZb7cp2jLpIPEE15P/xPY1Ab5BBnjrTPFHghl5hV31Xzeeb8kXa6
	 8d4SZSIYCbai7hyTzDNSC9Mv7Eat1GBV2lDJ4Z8TlmN/VJjqVmufuEjq2NE28t2tEM
	 F2rSWwlzA/2gXuNBdcuDMRwdyRxttbO9FBMF8YmuBGYqmwmf0zkCLSSqZlWWNVuWmX
	 gjJxbsatcEcVGPjoGkVDwrfSI58qcEcm5p0fpKFcgZGBQKp2xtNf0kS4t7HcwHCwn9
	 +7hwbBExJ+/Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF56AE9D812
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177540753369.18260.6750429493413128335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbd5f42359c79141f060803038202f92abc4cdf2c4d5c541ae0dd6bcaf6b1a88
Date: Sun, 05 Apr 2026 16:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775407533
