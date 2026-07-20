Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDD027874F
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784560714; cv=none; b=eqzKXyQ+qGaFF75VnYZBowh5iCgXTz2nto7n8LxVcVKiGVmcB7OGdPSurcQb3bZHPUQZ6eeLuo39/9SQjCRVRwK4a9hkNcOl06TFY0QlG6GXC8ufMJLhstmFW5PN0SLnDetAVeDc1AZ5cXmHXu8Eb3KMdoySxR83ENNSF5HgkuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784560714; c=relaxed/simple;
	bh=CzW8hkgGguTH6rxlOZF6eKkxp/atFMvga6bIqUrfRsw=;
	h=To:Subject:From:Message-Id:Date; b=at3mp1G2grdGcb2Y2SBhhi1yus5VKqQ1q6SkEnUW1nWqzYh2ebXD22paGLAF2FpvEhQIpOL4uH9ezaHcsAmxRuu/ZOlsPjhOQvsPtW21BenXaoHQWjqdl/cEuuVHzf0DAQjO8bBS05uunxVXoCCdvxHRjcFt+9NvbkvJl26uT8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2/rBB+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2/rBB+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB916C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784560713;
	bh=CzW8hkgGguTH6rxlOZF6eKkxp/atFMvga6bIqUrfRsw=;
	h=To:Subject:From:Date:From;
	b=S2/rBB+2F1nVNpI3SRSn2u9C6xV4/CWZve5779whcppE5pGGmwsKq1uaodEKFh8Vq
	 sOZvoAd+oHSsncjzOSLm+3EjOG6bFXdGKpASduSXUrxsEtmrzVvnCJ97iEoYJ/fVRG
	 HeYB5+lwYkRJ0ujuU+QVOftIM8lMD7yTmxP7Exh/KPvFkYvjdknqSdkM11yBaoJ2qM
	 L6PewB0AvtW6CYsxbFKe6AmrXi81tpPSsWMWUS3mtyHlSFB+uMbsMpaySmvi/TFI2T
	 UVCwFN2dzx95VEHr982I2f0bJddwUVb/tajTMtrCuouHeTNLIbz4baFiORrLtMY/Px
	 NN6F6k01xb6Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92B9C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178456071368.12900.18071180750385622957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10045e282f5e22fec2decdad9a4c8b9874df1cb5a5b216450003a08055af8354
Date: Mon, 20 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784560713
