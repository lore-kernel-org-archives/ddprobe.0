Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A98D35C185
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787038834; cv=none; b=TTCp0Zn6968zkJq4gnJIOZmGTROkLSyQvkqqVNXcuq4P2xMLkJv7La7p0mMvzY48FR3mTsP7ALwD+6xKn2lnczGoV01g/LgXKqkd2ApJI3+9bqJMmXmrNgmF6ox5/UinD5geI10LQsrUF6RCrtrjstfQALQhXluLqXVXnZ7kcKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787038834; c=relaxed/simple;
	bh=2nKzLy+TDuvQK1grxEVDorCjS7usnjxuED5DWoiu2PA=;
	h=To:Subject:From:Message-Id:Date; b=SaW76ylyRAIsAcJtgq5Gx/nkfR/Ks5ZG8+KhQkFaqlSvhCvSDqvZoGZBVw3I6ve7JvdIK9FT7HBOzwaFq8Wbq/XYxmw9/Om3UHvqyrqT08KThGm5W5jelF4AmRhBhD36JfgL9c6GICXGVHaU+saqXmp9hqRDWrBWPyA8N/ChL48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1Ng+gGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1Ng+gGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4920C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787038833;
	bh=2nKzLy+TDuvQK1grxEVDorCjS7usnjxuED5DWoiu2PA=;
	h=To:Subject:From:Date:From;
	b=a1Ng+gGDDs/KxM956/PeJl6nirJlv4Mnf98xQspdbB/239W1Od6EapmdFRktXRORp
	 gtashAeJSPUamwfBHthFf4vNu4PAY6MtJ+r+jzeYrAGDi+1mzA8S6xEKU0jLGhQF2t
	 JaO1R2sPTLx+5ibI0shmoATFxmfauwhAjU96X1EcgloY+mZ3yL1NysQpODE697F6hX
	 HF+kDQKGLaBjkw2d/MLDhNa4NItp8jsR/lEU3+VXaoeg4EzMT3xdgq5V4rdYJDMkSa
	 f9VzdW5wGERSdEPQA207bojNO77rvjyVXvs/WNPp7y9B78ev5WDHq7tKOeJK0AWKRk
	 paNcv5/EEdM1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1124C5DF67
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178703883368.31389.2851857552685795582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e219dc01e32adf01858b5c1e42c4424601b6dac61f8f46df5073bb02b1f7b19
Date: Tue, 18 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787038833
