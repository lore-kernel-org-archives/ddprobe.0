Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44139380FFD
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785130834; cv=none; b=BVoGTEeOUKO4qEeMsGRNqbzmSTaAKzOq0uggMOehZ20En4JTrqyMEr+W/Rr0XINjeohTblHPSfBHkU3YrxpYb7/9PsgVc+UfhmBX4NX8TC2COKHyGix/fqY0Y6e4/cyWGWtu1VohlQFw2H1HB0FLEbsavoal4pRSVv8Gsrkdp+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785130834; c=relaxed/simple;
	bh=tEMa0gt1NafcHtOY0JDUJepHSGNzlloIR4okEcnWeh4=;
	h=To:Subject:From:Message-Id:Date; b=PFxlJWn2bQbMATUi6rzrA+yiJyAfinHDoD/BiWmHY+QLpdXtlFPdXfbBq4CRapbbt7ZiMVyi96Fa7lnz7vfK1tAZcmOxad3q4RzaOdbEU3XVoJl3xMlpojPy1jvT5d4kGIgibSNWDgkTfQDyUT4sHlbsO631E8ocObpXFRDiunY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNTWROl8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNTWROl8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA43C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785130833;
	bh=tEMa0gt1NafcHtOY0JDUJepHSGNzlloIR4okEcnWeh4=;
	h=To:Subject:From:Date:From;
	b=eNTWROl8k7kfxutovCloqto/qCU3aWI7cYAAoFtt5Hhs5FfgfVfcMIezrRP14tf2Y
	 aUUti7r+dhxz+incByPa+mKX9mQnY/43WJo0be2nan/0N6sF6Bd9fASmk7Lz4H7Utu
	 tV+Z9Xd3i+jbwxMpGNrV9GCSIBzQCFplsYaVtWsNbJwteb3dV9VC442T81sy4uV1aj
	 yVkJXubhNwmyERHeKAhsv7nfaMtUx9LpnN/HACnQR6neZV71pGzIr/0oed2GENgphY
	 JG8CoZZCN78XqTCUygOB9KSiJ2iEeTPdoiDrBvAvzekBsPw7nbnWlijfxpg5uG+e3c
	 XBiRPG1g2XFdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA335C531FC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178513083368.18517.2189347384624281557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c63e04ec746b06c51aa52f593b00b544c55dd0d48f46528a6815c082c4e5730
Date: Mon, 27 Jul 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785130833
