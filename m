Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B2C4317D
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748864994; cv=none; b=soDbWMD6lo/q2WSytof9MJohFRY2aY99Q6SgicvVLw/1rljWKf5yg2qIZ0TqRtuLinYHMRzVpkuj6z+7Plhs1zJ2ovBIdFzHmKDXab8Cx742x1rw7hXzBxd9ZppGqSv4284X5p82Xrh8I8cgYI8jc7MQOZ4YUk/aNU/paEOmGrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748864994; c=relaxed/simple;
	bh=/nMDmFCFejTGqZjqqSwWQuZcITQ0EjJricwP2b9pjA4=;
	h=To:Subject:From:Message-Id:Date; b=m71ZcQtgjSh1qb+q5Ml6X1iwh/OOZHeGdfB3YexHIToYoQL3h81Q2t1hDMVkjfS8WOl/L5CeRAgdQ110BucMR2DXTrREJEer09WEogyhXbQqdF8eP71WLMeoymbrdgRaBmo2NlUhji9TbiefKuZfkhPSUAFK63MmTAa4dcNRJVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmFxAL92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmFxAL92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A671DC4CEED
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748864993;
	bh=/nMDmFCFejTGqZjqqSwWQuZcITQ0EjJricwP2b9pjA4=;
	h=To:Subject:From:Date:From;
	b=LmFxAL92Y9PQQ8SQ04pOfl0NtsyaVQ5YjXYzO1XOeOk6eONyQiulpx2hO1+Nc6Xk+
	 Cdbbd+newpzKI02HM0kP1Je/SsFRMm0e37eS4c4zfIX1zjy2Pir0njFE2019sAdUOo
	 R+BuvsE4QM73yKuri/lYAoEsb1f8MgBriECgvFk3PslphVMAXE7ZnKCl1eCwGNgpob
	 F69LItav10ih+DP31xiKKBi68v2tviosvmmNqHX6fZPAikhlW1bp20hw2FnqJ5+3Q0
	 ono72dTeFH9WepV8YhoX6AhW4pg+zcxrOhjRdT4ltEYKJ94HV5Aquufc5rWYCNaOV8
	 2s6kkEm+rMfxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1DAC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174886499357.20159.12343059414964019395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 528597b7aa6ef023eb71a18005fa899cbc25048c4f0510209c3f70c13c35c831
Date: Mon, 02 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748864993
