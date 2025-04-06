Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1081917FB
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743935394; cv=none; b=towhdAhriGsFnpgvPDnhG/y/nDX3/EagsBD3KmUwDS3wCFMImuAg+E8mypwUU4BShv4+22yhlS7gTqiO/l71TS98YH0mVrNT4LEXSGkVR16WRgHXbNOIhgd/n/Y+j9Z+zCHQOTex/qGWAtFoYJ8icXRq7mZXvqImkjf89mx2buc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743935394; c=relaxed/simple;
	bh=rA0soM+w0D7du9P0toEAOLmxpQ+kz1XCd15pT6nJRes=;
	h=To:Subject:From:Message-Id:Date; b=BAxawv04DptUWmbwSdHLSxpG/cSDk/TBt6Py9e3u+3jega2BQlurwIq8SzXX39sxVJjNTX7Xw+Gldepvz58kwdkt6IxK+BlwEoLLx1gndCS8hXUZmmxKSJmbNWaIC9yNBhkuSMdoUeO4laD1Mv9Zl44OP1vjBLHih/Bd9VZ2Wt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hX+jAFOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hX+jAFOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4C1C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743935393;
	bh=rA0soM+w0D7du9P0toEAOLmxpQ+kz1XCd15pT6nJRes=;
	h=To:Subject:From:Date:From;
	b=hX+jAFOblYDh6dAhJu3MICHBPDkk5TlGFyiN8akbLaXHIFBnlYvnfpJ93VlE5Y4xS
	 U9k7bE+JP+18IjwlZ7iJxwXlzLviTT3dznqGhm2UU+3mP9fyJ0qC5dlzTnmiBYdvtN
	 kVPB0ipJiHu2dk5hufz6Sb8RDzd8v0/MFQwnCO/Bq5OGXbA9cDEQbK7+lLUi8ka6FR
	 1sVm1r8FbrCavB6v63lLfp+gRD3B0e+rRP3pQShcRvclkt8HiLXIgHSXjdHMwjLulo
	 PSMwWfsU4ZeoJ1DB8DXP4dKE/0WYHkIAVLVAqp48mQj/Ai0feFxb5Um1VmQqhrrZPx
	 ZFQbCz4j501iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B71C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174393539358.11137.10175604368979844082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39958bedb30f8d5d76d5b91a47dde45c66c08545b9eb8024cb05de367049f64f
Date: Sun, 06 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743935393
