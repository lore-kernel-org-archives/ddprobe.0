Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 840A03955CD
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779345635; cv=none; b=uVeyj1MYodVdXTQNlNqipkTSjU7nylke1Mfnz7zK5shdc3FM6v4lJ+FfE8GETE2pp0Fov9RxWD/4R7958eHQJRWo+L4VIsgEcmEW9Ku1xuzXn1vJ3jKSrPNyvSVcStWDXLQQbQMTCy2eRGlTP0AEJEepO2WQY9TfIIohdzGbHzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779345635; c=relaxed/simple;
	bh=PfWbixRe9MfOlBmxeG2sfOKBApAv9rdSvb2OS7IrHMs=;
	h=To:Subject:From:Message-Id:Date; b=Yms/uu2FuLoQCYouJYl72tCfh3ID9B449AxnywJqz99/CeDLIyr1barLk9R+ak/RoWBkSGrHZtcaH5GjvOsi8Yy4EYGqS8VKYErVuOi250DCw27iUexTa4iFpdS+A7Xvv0YuZyiZwc200UePSJ/9L1kOKkVW4lPen6fpX2kK3sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ph+5e6ob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ph+5e6ob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE064C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779345633;
	bh=PfWbixRe9MfOlBmxeG2sfOKBApAv9rdSvb2OS7IrHMs=;
	h=To:Subject:From:Date:From;
	b=Ph+5e6obJtRKq3NFMPNY0JKlJOvOsDSz21vfDrVr19BSmtTUkwyOQ3l7VakmZZhqz
	 FVQEaY/EP2/M2Qq6Lngz4MLkhFLnzAeA9mmMMwreEqhLD9hkuZQLsKIVmwXwVU6Qqi
	 T1jdooCZZ0r6OGQkN32jIUIKI77Mp1DfiZsjkCEN5taZnwlyeQvscoCMVhS4D3TG36
	 Fh/n3gYTdeswLOD1Mx0YAetfgXy3arDMuiK89zI/DUrMtuZ668pq11L2C+KoL+P3m5
	 tkTb2VFFfWsEseRXjyi887Fy+MbvRxbhbmHxRyUDnvdQ/iR9CmcyyIOlYlCfoT193Z
	 iHWrQBeWAas2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9869CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177934563374.29236.78137450439117276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cb91d26260fe81504cd1979fcd6206c6806f654965ace7c5752499b9289099c
Date: Thu, 21 May 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779345633
