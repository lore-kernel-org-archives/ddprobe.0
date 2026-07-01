Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29117239085
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782945514; cv=none; b=on24ounL81nAXvbvTV1V3BzmY+i6DePRq7s2xc9vA+YSQt7rM7uTuvcOnGxldl6taI5ZhyizuTBsRyPMu6se8cu7kB07CFfxAUrGIW3/tXo9cnFHNUE5o85yEYvW6heFDJxt8+qrf+4WgFwz3OYiQr3a/sMKrG40b0xhS1UeiVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782945514; c=relaxed/simple;
	bh=5IEQt/blLMgDYJ47hGHnfMZ58lR/Nr09cYRo5la+vps=;
	h=To:Subject:From:Message-Id:Date; b=dHjTedBSrjJ/hbJ6L2KMziD1SKwV5pCHeIp+Ba+TmYa/XPORspG8bcaMLeg5LqSjjkNHhvnpcmhzBc4t0T7TvUfBze3tjnRIOJrxeVACuLUqfz4pIyVCKQww2JEtZhHR7WWTMyTd8TSkXunMNrUOW28CMq1wfvPAt+77QikuEMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2mE6wVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2mE6wVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23D6C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782945513;
	bh=5IEQt/blLMgDYJ47hGHnfMZ58lR/Nr09cYRo5la+vps=;
	h=To:Subject:From:Date:From;
	b=J2mE6wVKSMV42g3zHKwZkPoocynvKIBBMlOB2RcM+foAgm8x5Uy956hhMuPXDhmUZ
	 P3Iq2yJJ3WHLtoTndqO2X99VIeCROK1nymd7hYAcyOl80jwc1bAUHl29fJdt/4+KoV
	 4pK7Sj1KTcQycNEYEdoBxq8xPP+Y6/8SgECoPJun+1AEKkMW3PG5s3OUHRh0hl3wam
	 BbXJyaVh0tX0nGG/qNrgCAIHM9hXHgSnue3BrYIIutonidBJOkNlFLf8h/w2NkeZ0L
	 Mdltr0QrRuXsqpaE4Vm6YQ7Qy2FSwZ7pQ1JnhCm9ErOPvlaeJ2dFV29GGr7/WeRH3/
	 3P02gMK7U/Irg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95B1C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178294551368.20120.18047830376242808357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83b2d61be0c7993e9f1d69759dd0cb4f3ada6b677ff19597b29f384ae1aece67
Date: Wed, 01 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782945513
