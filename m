Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79BF3C5536
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789594836; cv=none; b=I0AhQ8wuGpXSm8b6mJVYKUXDFAPV0HT1JlVYGmTGxv21oBuzOLTfyAbKm2T53UtnpPrM6wbdX6pND1dczXx9osXl8/lYoiFdG1Q0gFe67XBlpwXwyttGyf27AOaisPxmSpaHV5F8748OA263tUwRNRDzkdXIj8Z0rEEl3HYlPsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789594836; c=relaxed/simple;
	bh=V3m1R4bAMujszAIGxSbtE4HW7MSuwqk5/+v8r3oOhAE=;
	h=To:Subject:From:Message-Id:Date; b=TX1f5DOL78NNqdTdoSBeqc6/CL0hbEb1d5pRkUrYct0JZ6Gyoa8gKX9x5Weuc4hydA5EYOeFFZguSEm0uxmujB9ru3UHkOIw3wdH5MN70tlE50Ez5hN7btaim3vq6hHEcA3kjX30P9b3pItTGz+gbk24GYRAHsyWVFAAA+SPsYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GK0NTEh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GK0NTEh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEB7C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789594833;
	bh=V3m1R4bAMujszAIGxSbtE4HW7MSuwqk5/+v8r3oOhAE=;
	h=To:Subject:From:Date:From;
	b=GK0NTEh56tBzG3SPWo6Dh9rOroaH/7kU/GlvqecPZeOAVhSF0Jvuknj2K3lbSMVs2
	 cjXi8bxYOecGVAuaXXXNM4Xi5/4lkCdxtLfKS+47yoqAKo9ky1u+tATFMNEgU9glFU
	 3SaiZNm9IWEqs3z5TWp+mHB5ZQiHZEg/jY1HiueTciQkhlKwyf9txzrN4tTTLq47mE
	 MAv6uM/l7h5XGnt8FsqBf2u1MwpLW6N/Qyzq91vIJNB9zkUeNOEMdGkzZNYe3ZvDyu
	 GsQeveY/lK1hIS2isQMKC8CJlpDN81REtD5Vi9vV1z1FGcTrFtaPTGm6q72YKo/K7f
	 JoFDTLmcaNrHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADA4C982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178959483368.1807.16521148406652847002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5be0be9a1648a4345d9fb7b9f1e5b346bed5d343c1aa3d11958add06610573
Date: Wed, 16 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789594833
