Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BCC212B0A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765609974; cv=none; b=L/127lyEfY7XWsv/7+FsiNX0MRk/q3MtwlFxTQl34u5/yKHprE9HwepQrUr0gKcGyaBe0sMK5Kkqr1AcbHLOMjOi270t/ndc5rmjvNXrjbeGFYjAS0w+Np/eVgJx3zzideH7yHkBbjgBY0T++hsSy2xlvOJVapQOozlQfK7P1xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765609974; c=relaxed/simple;
	bh=Snj2qA17gIg6Fx7YpFAmV89YpkK6uZk5ZD2vecqfkic=;
	h=To:Subject:From:Message-Id:Date; b=vCePDnvTD2tY1DSH6I+5MC0QhRxRndrRX5zDOrlIohHRgMcUpg7XAO88iWX9eOtO6xwAlb+1b4NZU5wWXtS899XezgRe8wWByiXfyAKcSsMudiBIPVfXwgePjNuOoAPOSqxf7s5GXPpcOtHcQq7aMgkPojR0VNFBly9W9VJS8nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRq2BmKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRq2BmKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B7FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765609973;
	bh=Snj2qA17gIg6Fx7YpFAmV89YpkK6uZk5ZD2vecqfkic=;
	h=To:Subject:From:Date:From;
	b=YRq2BmKPhnQDNgeQxaLzuoSBqWRP+SiOlP8T6GIFUi3ldX/UP5PmXZmIeX4d3Y5Ok
	 BRT0ns8ZXJn94wpJuT8F3K6oWTxMrStQRaYqfL5GUZPSPIRESordsWvq18Rv1ExZL6
	 iR1QOpS3IOu/JHReMq1HB4O+Nj8dulY/3awm4K4aZLaMv6oZwAVbeoHm0lQrOMEjhl
	 djA8p49mRVaVHYNwE+eymBnPSdLLO8Mho+lIyV16gT1xFTdnkdVNHi1Z61Xow99d2I
	 GKOaJMhUhvqxy0p4sQCAvlpK1FfalUG1YhtdR0i0VqiHW3qASWsUR4EWUZiDbnf31X
	 whVwKe5rvTc3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935FDD59F77
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176560997358.3016.4685991086989672214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a542417569f0462792f4ae6690d4a915187b1a5cfe9f8aa23ba671604c6875
Date: Sat, 13 Dec 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765609973
