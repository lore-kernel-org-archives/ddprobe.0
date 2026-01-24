Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FA424A07C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769287434; cv=none; b=QvWUiO7WChrDhe60M6Nsvblk5+sifGEZqgEydUKnRN8IlYO2Ds68P3sywAlgkqX4LjDCUPRmjoi8H7hQk1AfRmOij/QbCgQODdaF4xgEkvh4CNHpIQNcQ7Kw2Mw7hOu4wq2ZIcAp/P/hVPp1M0uqmCBjw4qg7ePcSIysGm9ZW3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769287434; c=relaxed/simple;
	bh=vIW+XSQvurqEbBFRW1VedhbFx0f4WRjqSyX8oQ046W0=;
	h=To:Subject:From:Message-Id:Date; b=NT7IfAyk8RT71t0HQVWEY3BK7+MnbQbFW+kt2kVcL5I3yvvqa+XaHPOQkd7werKfjviay09mydNTtT2TLTJR1wgUk2p5KucoDg81F3lLAdR7pTHTTwKzhVAqlBFyrFJ5eDpRCnmT7CysQXNljV1597nXzBGIfjniZTbSVVSP+J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLd8wyTR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLd8wyTR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BE5C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769287433;
	bh=vIW+XSQvurqEbBFRW1VedhbFx0f4WRjqSyX8oQ046W0=;
	h=To:Subject:From:Date:From;
	b=nLd8wyTRn1DBPGMfT8L6VkzBnbYCIcRa4ZeU2+uvzUi1pmF1EM6uuBRB25Hu2/3st
	 KtUOG+70dTDYbMd6Im+11zHDG7UX/eHWPE7T8agrlvpbKhI5thoR2bdqmyW3RaNAIC
	 xXKqEjMWC0ALLvusM5rcJYeO9F0DyPHzyiiKgUaFMU1MD1GPIXn0yk/95C5OlZA2S3
	 c84z8iv+VN6jllKY2XqXz97ef+UnhDkrYaUZhe98yE+sD+4GEz8T3hgeqQJhRmDLs7
	 cHmrKrCc+JHyxmLnCichltViUCcWVCCvEZ15jJznIlDEdMVO/ft2CxMnRbi6PaMrxU
	 ZYXsGEibrJ8Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB3D715F8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176928743358.28702.9925017158973447429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b0bd0be82b406ad81e379db10224bf5653e4bb077e960a56ec4d1ee8b30177c
Date: Sat, 24 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769287433
