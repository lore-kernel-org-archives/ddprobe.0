Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F65367B9F
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786124434; cv=none; b=BYcbwaZPHgfhXUK6Zmau3XU/6WDRc2DG0CdYZpG58EC5zyIaTkK7Iw2wRV2NakB0Je8TWq4XOgnvLH424xwrUXOJNQtJ6372Tn+fhhqk3FNK8KSC0b59BIdLAq5IkWzUf/mkvuDHSMLgWrG7/5EVQ+MP7T7E0v5S5cUnvY2mpKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786124434; c=relaxed/simple;
	bh=EtCMFziv5BkiIEziHBuR/CLYwonkvLf5Ku7KYsw44eo=;
	h=To:Subject:From:Message-Id:Date; b=AZjhsgxrkWE6TvMC4tHVE2cea2Y77iT9R9xNTLtyTe9lVD15FUSRDSehsXTbz+BnvXsCSZid7qRe1qwOV2aNmzN/aw27KOBH3+58Cm/DJLGjOnc5MH0riYO6PQOwYA7Pxc8JUnvL08Cn6rcN5oUv15lqCopUEwZWNxaXiFSdOlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1YwwX7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1YwwX7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2D7C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786124433;
	bh=EtCMFziv5BkiIEziHBuR/CLYwonkvLf5Ku7KYsw44eo=;
	h=To:Subject:From:Date:From;
	b=j1YwwX7sQysCvwYgGc9oNQUQDRtc2dA/YA0jK5gOq+t1j7+zctK+VuLC7uAHMwdfA
	 9ZOODSfD4jXSu5yF5Mm6WUPxN/X2q0y7guR5XgduvhqD56wb/bLMLTjMsiTbCkiQba
	 j6Bzp+3EmXbSSwHOvoAztWVxKuyiKyDAF/kMI+JsMB3CBEU+uOu76olwiqcoxfc+Qg
	 A5deuHSL/mAZ3d1rRVsfu/h2A/DhBbDu/u9sk4N0RTaVjoTBZNvhuIzywqpgAMBJqV
	 kyB0EzgNglBLxhJkkF32EcVqUzOPUPy9INGs7agcTp+khr8Dmsn6rZK2PodBIsyfa9
	 4+jrxh0nzAgdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B233EC2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178612443370.4004.5558156420344419201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f785bb38cc1d6e57ba381d8a3aa56def0f4d770a6d426f5d5402afc5282849c
Date: Fri, 07 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786124433
