Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647BB175A75
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783375114; cv=none; b=ixcd6bKhQHxlGsxVDuheYgwe7/jBmoU4m2w+DV6dBcFbJslCjoVJLwsTigRiEgZssMAHkxjntllOjSucvWihq1fHNAhM7T7mpCWEZqlmM7ubHshjrWopuFGmBf5DQx36YFrDlmD+QcGuDDvSMB+xKH2cWUHnntUVTHU1qOLVJ44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783375114; c=relaxed/simple;
	bh=lwTcI6fpu+nclghJR0Y5LfnepRYJldr8OatifHGJzdo=;
	h=To:Subject:From:Message-Id:Date; b=PCfcL2NZroeOZjtCXqqj8H35aKGHNKQNaAk8mfuqhN5PJbS95TqxSDk0hDxvqJwAm0Xj/IIppDhdovwt/k6x0Hl0z/7ZXaPpNQhBtfNnZSlUEI9POMTAFYXSCHIfhD7Nbv3Mlf2L8f9tUV5MzsvfpmjjSasVQDPIfeMOM9tQBKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osyd96Oc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osyd96Oc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A20C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783375113;
	bh=lwTcI6fpu+nclghJR0Y5LfnepRYJldr8OatifHGJzdo=;
	h=To:Subject:From:Date:From;
	b=osyd96OcZwBEG8l6lJgSXmsMBv4YWk8fyI2V+aFEgSre+8bH0Z8vMrQzsiYQYIqoo
	 Ayz0UxwH1P1WyiIxLfR4I+gXvA9gWXJfqIT2JHMpPZMvV+T0ksloIVAbxPaejfsSmu
	 893I42oBzinm61iiKJbrKpFqr6GnO+2eM2JeycyhYoEiGJmTdWSsTfeeezQAe8BvBl
	 agN7/HQf57O30HhCLPcRKOUwdPoFbXpDfv1wEv9SQpe9vKan5Sjw4t9d+Y/BNBZyjh
	 +Dhm+UZ2fEI9Ni4jdLcnW1t3FVDvxvJx+7bRShrK8xtp+9/JrwwlCrJjvSNCV4k3Yr
	 Io3curDr7rUWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE06C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178337511368.4099.12349626299516576446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc85a888961d8c2f7a8314fb2100f510a4915067d9de47e4b1796ccd9886ce46
Date: Mon, 06 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783375113
