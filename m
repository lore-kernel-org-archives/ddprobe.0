Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2909F2AD2F
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761431994; cv=none; b=qAlNZNEOCKzniq+jFQHamPy6XW8twFzo8Ls5/krkz7GAUX0y7E3tJQM1sUz/KY3IyYOSB+kzbRU76nFxlAGS0xx6CtDJN6t6mkGEoCdgrOLsCAXVmIJheLFY7mv/mdJkj8ZA+i5S67WqRTgh5U1nes2BbehjVjU4hPaHxjJsTmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761431994; c=relaxed/simple;
	bh=EyICi68TX58LkHEFD22lx5+TE5d9ck8worDycS8hHaE=;
	h=To:Subject:From:Message-Id:Date; b=NlNwOxyXmFZeiFkTrkz/AlcFlBvLMoVr0+fKyP0bgfWKsKkXWVuc3JqOlePPmKm3vktzk+7rNpuI2v8Ub17Q5LkSx8amf9SkOzYYH8pfUoQ7lrseb6gS43jg2teLD6180PF3NRoJMq0jDwwrcIv00vjKfYc8mtYSSu3J2pPFyOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPtKDxpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPtKDxpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A662EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761431993;
	bh=EyICi68TX58LkHEFD22lx5+TE5d9ck8worDycS8hHaE=;
	h=To:Subject:From:Date:From;
	b=MPtKDxpG9mAQlnCthTjPjdTHSgpc9MjDRLylw5jUGZmAy+9oz5NHofMnjOBPe9Zf7
	 MttmUiFVFAI8fzF5nLLajTuCYEdwbfCTZ0ZDt3/MqyhFhOACihI6uv1qEzPY0kaqnK
	 riZb7V+WNuiM7q/x5knRQf8vNyrkDZzqViPYiBiGB2fRVI72udHU1xwR5JgJNo4Aj2
	 2UfnQO7pXyUVNqvAQgzjL7TL4B7xMvGstTPY2Tkgc7C04N+V41J14BF7raELMFUWny
	 uRLD2dzi91UcQPieaMiakx2z4VaXy7pwYmmSus/YMpCwWMLsKK6O51vQTaVFJmpQFQ
	 FG5VL43VGX8Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E75CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176143199357.7996.1987127605029130268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885679d3174bf38d543d7c456b9cf1b048952b8a7d78f90f94c854ce832cdf16
Date: Sat, 25 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761431993
