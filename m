Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9AC147C6E
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 14:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715868743; cv=none; b=b2GlSBsNQhUevnyenq5xiQMoRsvS1eyf+ZINdFv5zzA2oxZEHE33fO1v7S0r8kSaZBTI4qC2EMISk814YyJp2Z9B8c+HOeab+cWeEONqavDV7F9LG9Zv6uqu+eIgeBN1Tcz3Zy9gUFR8jHAgM+Ref/mhLy4QzhUe6deiSztgkio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715868743; c=relaxed/simple;
	bh=KwFSouY0BUe6RzHecV0dhs8FbqTHCYrtUcOumOuJf5o=;
	h=To:Subject:From:Message-Id:Date; b=VwmA3UNKN8O0Iae8rJBh29RymKVc81rwNhFr/4Fm/2Qi+arHcMGcMehokQ/s62YUCqGg98aQh/y4uHAyewe5kVbzC8g6ecnb1qL23HHifBfBYp2nz8m/x+xUSeT68pnL00yh9tZ2gHDmyo/JwVri4rBufQtX1iJjQnOo4ymcME4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTFXdcgl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTFXdcgl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DAFC113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715868742;
	bh=KwFSouY0BUe6RzHecV0dhs8FbqTHCYrtUcOumOuJf5o=;
	h=To:Subject:From:Date:From;
	b=VTFXdcglj/hveXeWAIJDA66m1LH3SNITPdPCQn1iNNSkqaTGvwn9keQZPJ+eL1ZbJ
	 tV3z53+PZIGMcRjl8YobBL02fA99XrEpF8lTc5VKPdtxHP4BWR/AMsIQiBLgzhCkev
	 9P+QyweLBVwoV/XgIlf7kl352PGOZ7CEhfDz5KjF7KwTBHMJkZP4ECysxVyqo3gt1Q
	 Gr51u4FygqcGlEgdOD+qFjKRHs9HtGkk2Xc7q1yQ26cV+WGFj6/uFA7MTfVi9msdUt
	 GywhATeiX0Zp5Ye8Tmp3iRsqvtzOQMTqnWibnEfadvUlQ/1xTmyE2l8Bp/UxE0V2bn
	 E6OGkqmlm0v/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42A2C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 14:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171586874279.27460.4388619081183796264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d2543f91078e9497d5d9da7a48d4fb7236843f98575ac3f624f7996007563d
Date: Thu, 16 May 2024 14:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715868742
