Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41E622F386
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763616114; cv=none; b=Vq1TTtLN7iN9ZzKBNrCluAkMm5tYBFMjz3cO5ZPaWXsODRloV0SWpnF/uO6IS0YtrTDdJ1V3nTGCTCwsf7f63LBfz/2zviXZYiZHALrD6saUusxX/fWRcudNQtfj+hDVPkFitZKRAPPPg11EBg29A+2c3L6Kkc2NEmxvHyHQdGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763616114; c=relaxed/simple;
	bh=7ekOzQs2Ld623CVN9mtvz2r1Cz84+m8cjTVmpaxfitQ=;
	h=To:Subject:From:Message-Id:Date; b=ibCmU8wkMIBCzGytc4V19xjP4PNpmC3s879hqd/MBh4GOnXWN4/dhVD3B8U7KwoYruCFcTZwqHySrTKHlJtMFYzTjocEPr1VtGnz7w08eSic29/tEQqvYJtGQcjUOUYUkxVt0WyKX1yCIUEgOsHjufX58vYXL4McXlM0L4EMUyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kesQLvwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kesQLvwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A367EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763616113;
	bh=7ekOzQs2Ld623CVN9mtvz2r1Cz84+m8cjTVmpaxfitQ=;
	h=To:Subject:From:Date:From;
	b=kesQLvwy+v3LSLKrBk9coSbjuIeQL2wGLCiZBnJ8EQ5YAgWiqRo5vquyB86F1EPcp
	 hnUuZaw8SpyRMRjqv9e2xeeIdGLVOzAx3iWf9BHiBXuX0uo0Ceg1ReBCPEr2hJCoQb
	 qFev9JL+wa23dVrU0rwEn7DfoQ4J+SlD/Ovt8PXpvY0euCDtmntzw4pt4b8q/6iIQq
	 VLQ76aUGGyf1KPXEYXHsCeBWJ0UZ3T8cohFrg5b06fE9doC7SAeXvphYeDMwvEWIuO
	 WwtMHLFAAhf4JIDZtcx2GsC/oWSXnguB9NkhK+MF+ggbIDkvlxf/g8ZgujnVGKhrOa
	 7ukpuOFqQElow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9BCF64BB
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176361611358.1666.13756459248678372924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46252ba5c658007cc99f5bbb66cf385bdf7be7434346f69dd7d35d375e82da01
Date: Thu, 20 Nov 2025 05:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763616113
