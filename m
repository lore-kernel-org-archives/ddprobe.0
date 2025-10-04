Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281171E0DCB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759578594; cv=none; b=sWkARuPFxiH8sPi/LrKRW0Ome9KQmuxhKFREO2GfeYMDxbSv1kWpU9SMWtdsXnJSNxxNh4dAi+45o993SaZiMSxBRejHFvKbT2+T8yrOenUDf3PhFgsKpb25qjATcB6fOz85IWT3mRd88OWq97KogOCMw5iC2pwsvc2etm4+Bms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759578594; c=relaxed/simple;
	bh=e0pNwFjuumxGtUqRtL0umAJ5u6Az3rGdA0k8aY7F+30=;
	h=To:Subject:From:Message-Id:Date; b=YoZYpqcEU0+7MGSuCpbyvMmEONs+1Ev6k3FG9bwLrCjT/4LzYYICfgo3Qx5EEr4IL6le15hetkBCy2ADkyIlX3g+otamB52sIo0rWgCz0Zj3dfNZkKaZedx4MsN2/+0u61jBw6HtevLJybZE8WGqVc0oK3A+UdfQO/hJAfPbBH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uH5/CO+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uH5/CO+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D48C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759578593;
	bh=e0pNwFjuumxGtUqRtL0umAJ5u6Az3rGdA0k8aY7F+30=;
	h=To:Subject:From:Date:From;
	b=uH5/CO+ZXR/9Ey29BfbOY4qNjqV54rtmV6urOgRUqtSH9edVRYJtf/gyTRTze1WNn
	 LXpX1w/08epIldgLKHleM+EnfrpPIxx8dY7D4Iwn5j7f3V+AJJSoJ2gHXBVe6a1/SJ
	 sGiMNHgu48kEhJwH+VXcjeFQdfFkzPQKfXDcaqgVU4/rMgZi7HC3Hq3zvc2duK9KUp
	 GrCllS1OdiN0xZ1fpRYHOmELsucWvp7yVxKkVl9EID4++DDgDGqC60dGJdx2MmEmZK
	 ++g15ncY3bLSlK0gnBvbW/g/pkaMLPdYDgYvWb5CDMN7M8ju5Fki0UbqZH8oWOcGSQ
	 FX7NVj1zRaTlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94428CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175957859357.18157.5124019144641530801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 998d04bff789685706ca8c3b08f0ac88a91567d8066ea792c6dc74e36bc4f9f3
Date: Sat, 04 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759578593
