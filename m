Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780042A1AA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717250663; cv=none; b=tDf+CikHcD3ko32eUg07uneajiRatuadbJ66f4iclogTkD6alSYkjMCRoiKG0jObDE8tJacQaY99EbKYkyDm7Fe8BvvLOOjFzcKmN8nhCUCZv/GxDHcCR1CRDESYwDxXOHS6cjL1niErhQCjwOf3SXqq+a1jM+MMw4yxRy/Ajg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717250663; c=relaxed/simple;
	bh=4ll7ZU4OCegbFIp49x+xGkHYfMl/m65BGOgiyVPCT+M=;
	h=To:Subject:From:Message-Id:Date; b=Le/MrCoLrvH/Thbg3GpCr6O/kmz31/NVBGcwNbzlca49reqDz4s1jWjpeOUQmW8nOOaigO4AY/riOCeok2nfrkHxY5rDe6rAw3NBMlvk0biXcIpn8F8XhZbxA9G4R2MNFD2f23nLRplW6Zoed5RT/YrDlxNHe+ljkAmykMPDKX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMbLIZjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMbLIZjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6DBC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717250662;
	bh=4ll7ZU4OCegbFIp49x+xGkHYfMl/m65BGOgiyVPCT+M=;
	h=To:Subject:From:Date:From;
	b=qMbLIZjSjMlJyF5ohZ4mchcSGl4jg3tbiENO9U89HALoYpfYfGpI3WqPGEFW0vLkt
	 oKm7ypyCHDex8YReosNmXhY9+S8StRY9FSGR9eWwar1G48OudUMMCfzEt2b0hcM6WY
	 zl8BFQ3ale5aFFxBnVe9x61vWdyhs7Hfjt4baakhYeGAnnblsC0V80Q3TRNNDDP+LW
	 Zt5OKYFq4JPQg7MPiVdAhj6k+h5LmEthPNaGTXVaJIK3DUBqEFBuieSCsyOvre8jW5
	 yexpQfiKfHUvgjwN6JuVZYNeyZMg0XG+agTi2EWgM4RkZNlsMpURmM0c8eos8hYxjM
	 pKmFGZo1epeZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5757C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171725066277.12016.12151888184175263183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5d706e94ef10133c71938dbf81c96718fa35d30d46df9d5e03486248f946025
Date: Sat, 01 Jun 2024 14:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717250662
