Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6A5282E1
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 18:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715883143; cv=none; b=Kmskgw8Xqu8Cz5g/Ll3g2NX0iCu4h1vHnIzuRy0qA4uZc0yGEXD1rmdrICGPBOd6xsjMmeDanlBVkRW/q7hi8w05eSGTa9GIDzf2wpcF9wc2lzpyG5qFPUYsVjn1ben7WZvnqfWzuh+eYN/eCd3AkCZvOsiSPP6OK1qIBMIQaxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715883143; c=relaxed/simple;
	bh=1vo7eA3ObcCU/mZ92aUT7e8szYv4dZAUvtTzDXAf8qg=;
	h=To:Subject:From:Message-Id:Date; b=WHaWLPgDUtNQAo2Vpi98W92LhqejZYDElPyvt7c/MhFRUpTk7tQ68hVCWDMa67PaqXtNWly2xHFm0glXiE9NC5VK1SWkFFN2qjW2dwtjLGERpzlSNO3vugCcHPkM2iy7P9SECJkOjYhWVKATpN6/NDVcAYjj/kavi4VFFZnyHcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/nHTVDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/nHTVDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB777C113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 18:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715883142;
	bh=1vo7eA3ObcCU/mZ92aUT7e8szYv4dZAUvtTzDXAf8qg=;
	h=To:Subject:From:Date:From;
	b=N/nHTVDO9Zsb4X312TqVpPTgzW7/yMqVE0vkYHaLZQ+Th4HlwPvTE1pNzcTiRDMEB
	 vGlqmGrYKWBb1OQLY8Di6XR55ax3bjMfDtUq9/TamCEO2YE0DHd25M9YDqeWMTMKGq
	 aVhZlLI45p6pBlXLpesLIW1gjqFI/wmEXMdjtzSYfGVIOQTqyb7WnFj7gzJy5r2uSN
	 mCU5WKHbpViiHfDcBW/PTG1SiSfm1kYb8yaPN897fIxA/jitIvhJEvDOywtSolmGWt
	 x66F/RS/du9l9Xc6fc6wBUjif2+WgkTfvX+U2BcGbt/zfxmHjEfuAqMe+FpFKrqRlZ
	 vPhWENVTKyR1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7129C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 18:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171588314277.3187.16549456553031776122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 313e99924558e6b46968fde05dbe2900044b0513c027402a1bffd0a72900098e
Date: Thu, 16 May 2024 18:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715883142
