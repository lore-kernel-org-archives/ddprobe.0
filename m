Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4239C18DB0B
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 23:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741907334; cv=none; b=I4bHtuyHdDbEF7MEj4EkkLInuYgVYIN0TrTdNJPFEtE7kdB5n17nDTaNu0NKnqH7aL+FxsY1hRE0mUgBXFwaeycZlqxqorpCIv3yNphL4vLQ21KQbRUvVocwBd+uHbLkQIGWQLgdCcsmxTx0X4yH3imvc59DmlvabtfnD/+J0dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741907334; c=relaxed/simple;
	bh=AhEGQbhlhFQOMGXDiwfPprfceDz1tZiNY+Uzb7hv9dk=;
	h=To:Subject:From:Message-Id:Date; b=fHsKpvbwYF10vcnZ03tgCMN+BMtUnHTPxCZTRwmcyWhgHcm6R8tDpjaDN/y0rrDW6TN6utBAjGAf86zJwdI+2ZU9kjS2fBvHyGx0r7jM4QgkxsFuBGLDlpzm8PdsVHAV4GAdXIv2ghIw6ny33iFIHg/6ygHbqR7pYDmTBQmJCDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lE3TfIJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lE3TfIJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23F8C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 23:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741907333;
	bh=AhEGQbhlhFQOMGXDiwfPprfceDz1tZiNY+Uzb7hv9dk=;
	h=To:Subject:From:Date:From;
	b=lE3TfIJXIWG8x5SkcmgklIGrpJhA3OQx6QFnlMUWk0Rcwb+WB7as0uayzTjjcq0Dq
	 GRtb411ZTTQF6KeLnHNVQDf76VewjXl9mN6YPEH+UTsLCiOZQKaF4huDU/7IWAohmZ
	 caunq9Z4rOP7A3Rj9HazxZc7OMzb7HIzCGS8sxhm8Z1K/ewUrFxIJVAPbhuP9/n6Gt
	 iHihFOIh9C76hnXyc9xejcdlzelKg3nDagHOH7etnbrQW6Lvapd+9tJyjqQ0QmrLxQ
	 /5MG+O/Du8q1itAkltTPgmdPIDwhBcthOtOd2GGQPPMsFTvak3+GsG3qs9JutX3QOc
	 iyuMNPzaOgITA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9113AC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 23:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174190733358.27682.745424965559490260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7fefbb7a969731af2cd89e011f1b933ea981e127b69db4d34829085423b0a6
Date: Thu, 13 Mar 2025 23:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741907333
