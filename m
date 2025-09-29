Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310501DEFE8
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759122594; cv=none; b=lPzEtd3O8kTHL/K+Bbxw8UvBqieIFZ6o3EBYzDae5JbpbDCrGuOUL+fHBvB3PFzVC+lNHpciJBREtGv5oSA7sYfWbY3EE8tb3ZcfYLfVwS7SC+9iMrRCU/AXvShtpfN4SvMMKt/bOCjCGN8fcRgBiTSDJASY6EtnhozFhcaWl3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759122594; c=relaxed/simple;
	bh=u213wfZzr1OxaDvP6ugVEEUo/5/hNr+WNryDUJLMrH0=;
	h=To:Subject:From:Message-Id:Date; b=YqcLBmqYaOP7ptYU6ZvQighzw3lYeuR67jr32RD8gOWUO4O0iYsWXi98E4jwSEymcPLaXxe8lS3FMT0En4X6jK6UQCPWij29QkqB+gPsOlH0RB78ZU+snolCWHBOmkeJ0F+hsjl8SFMHYzk8ZMdmn+Q6x6axX3jM4oe/XMnRp1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvVVpBOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvVVpBOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4182C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759122593;
	bh=u213wfZzr1OxaDvP6ugVEEUo/5/hNr+WNryDUJLMrH0=;
	h=To:Subject:From:Date:From;
	b=dvVVpBODZP7u8eXs+fY2GNCskW0V7F+HkO1V9lRlTTIt7nYuI/Fk1/dSVBoYEoLM9
	 yx/b+xcoNOSgVyMbd3w/FIKxPI3iSvXHhf3UC5YzEa5Mq1nKoh2BQ9gkCRaIsHuRwZ
	 jhQuBL2Q895yPL10jFukButbp5jwAnXmYa/7CmLaJtojk3+Q7ADekv0ZbC+tfxwBHZ
	 5DLBR1w+n8oIVGuRlf5/5zVwxUeO3OkYj+gy4qp/M5aJ5bSP96gntX/UzzDgW3JWva
	 7okcIpQl85MtzL5psTydgkjdjQghXhG8jXy0/u7lE+0kfiHsZNrXFSBY2Y+ZIfZdno
	 KtvZgiah4pEXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9046BCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175912259358.7347.17152019046745154235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c136534fd54bc9f97835a74fbd63cac8799d80115d32cbde4e2d1d87920b1af7
Date: Mon, 29 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759122593
