Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A3436C9D0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 20:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779913354; cv=none; b=cogQUsIl5Fy19p5wVeRAA+kM8f5wyjginZtOzMDObeZ92fInUTdWVp+uKwDaS7j9RnFQgDZ/GVV0/Fix7+f1vJ+DIoVen8DXlAae4sZ0HWjvlYGRyub4jciAlZkTKLd4f2xF4JLH02+ztOrEdUx4Oy6+0bGAHe37I10rkr0YiTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779913354; c=relaxed/simple;
	bh=wAkYrjQzarCbg38fcic7EOWBvMZYoiDWsk8epqnheGc=;
	h=To:Subject:From:Message-Id:Date; b=UlSTOuz1Rl/Y1Cwg6Hhod+McHDWY1PuFd5vfGZn+rs15qJJRq07TyNdHJM9INR6v+Ei5e+K43mr1j0deO68LMrDCqI7DFTNtLiitj6k55h4JIfIB5MTbENU5LVqqBOtP/2joB/Sv5Kopvxm6KXhCXczFtpmFUR0P4Kjd5ZKFO2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHqXfI6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHqXfI6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0542C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 20:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779913353;
	bh=wAkYrjQzarCbg38fcic7EOWBvMZYoiDWsk8epqnheGc=;
	h=To:Subject:From:Date:From;
	b=WHqXfI6Yszy3E5VXQzznBGDKASSCuJwOYhOgpbroLhrqHLT8G4tzNSWJub3OCjKDP
	 P+ir8orquAK+au/qoL55Yf0Uuz8NJ4mg7Msg+GldEB1p9CYaQvHBcIqS+fGi9iDePM
	 ScrssTpQEWavo+1jjkJ2KxFWMsMcJyXs0v5h6isbwcTpMNk/pEAJretv7VY16EFoLK
	 mAM2AWMKXTrh++U6bK0GUq7oVc3cq3m6SdW9fKFR0F50SAE9xyXARxarKEv/Fc/mtH
	 LaBP0MiEeh0qyK5OoCr9uYq1WckBU1Q+K8Lt0QC6Oc+FCMSyT68AuNXdTycttNVZ+/
	 YxONpB3zfo0JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B245ECD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 20:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177991335370.16045.13586831093471683383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34cfc1f22619478a743d2c578938e9a31c6eac23584456d7690ec70b042dee42
Date: Wed, 27 May 2026 20:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779913353
