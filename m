Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B257BB15
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724682354; cv=none; b=BKLPV7WROzbVR7Kxjn2ezDhKTDnySm6QMtERaQw1FnpommT390vMPYWsReP4ljuMqVbbBVgLKEn4XSK4kkoOUBhiVIbigiCdIhYWObTF7gpXmknjOULiojWShfxbY3A2l/kn0hQv/mCpf5mvnavOspTquZufAqcnK/4tbHcG/TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724682354; c=relaxed/simple;
	bh=pBQ6coPQAxmXLwYPOCtMwxCgAM15coTH7FBiD2DUfIo=;
	h=To:Subject:From:Message-Id:Date; b=Gh8O7YhUm50IDdnl1/rmZ4RY+zMzG0cDG5sf2cDIt4dMbqhNCWOsC25XlQSK1+Z7LcnfW3dOBZ6UslADQvHQG2ZIasQ/5PBSODxDtjTK279ATdiMsA85i45Z57WgVkIxvE8i+QlPtkMM8r7jzizCrtXt+F3nMOdiWowAIUMJF7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSW/30uc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSW/30uc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A5FC52FC7
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724682353;
	bh=pBQ6coPQAxmXLwYPOCtMwxCgAM15coTH7FBiD2DUfIo=;
	h=To:Subject:From:Date:From;
	b=bSW/30uco6yinHiPBS2uOsAY6Q54iWMyDcicXj1BT4ZD1DsQ5cri5h5SDPJWYrgvX
	 mAdN0xH92OFF2ndWzs9UEUEw3WoKf52TdxNOdBzhnGE8FRsT5CG3eH6JNHBsFrRH9X
	 cz5eQ6AZT63FXHLmKJX7XTGLv7u1M1+0/BrP1x0unI8AcWeH05wAtThwDCMfTl5Yqy
	 1giBPwxpsUjDZoC/b3Ml3t4mb4tldjd0fhqHvkc6rzr4v8sWKwAYoznOGLykivijHb
	 JkJzlA9zMGRbx1v4qHbzPwE6cPwiP1n78QFAOFWZkERkC5+OnH/hI0r6HVOliNuM0M
	 aj9HL6pw+f7xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94533C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172468235359.1342.11452123138520996778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283afe84f216c1c6b45c51b1aebb55cd6b7935b1e1c5c1c7bf51ee79ce283305
Date: Mon, 26 Aug 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724682353
