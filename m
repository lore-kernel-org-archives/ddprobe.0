Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB2819E7FA
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745613594; cv=none; b=pSmqT+Ri7kgPB9UYvKUCHZgZGqDFfthMPz9WIfK/KH7Gl09UvgZHwFzQdFfDLIrBydGuPKP9SrYNxXWnFOn9pRWtWyrZD8qvGidtjqncUlvaML8ypErF3SphGSlqy73IGwuk4J3AHO0r/DRo9L5GFOB0yIooHqmgt4W5+zxuYq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745613594; c=relaxed/simple;
	bh=KFPNsuOXnuQzu1azopmgrkwaHjJrPrZGitPMvvM9Ohk=;
	h=To:Subject:From:Message-Id:Date; b=e0q0LTXn7amwcecOC5jczWYGOl5aAd+E7kuE576tr/jMyGcoKN/vRhNlBkW46+nWYnxjQ8hlpm7AgT4gMWWCL2v0p7QrPB/egH9b3DTAoC3Wy2M04KogfPv6TfOv/7JSHzjGqBXY+Aveyd7VKnJDSEpwV5V9c617T7dVV/2UX1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgHrkN6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgHrkN6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A297BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745613593;
	bh=KFPNsuOXnuQzu1azopmgrkwaHjJrPrZGitPMvvM9Ohk=;
	h=To:Subject:From:Date:From;
	b=SgHrkN6JM8wlmhjtTtA78jWDy5v73rRpOWhEr2zewfZPYuWjPW6GXYAO0Gruh4XVU
	 vnZFRN/QzSLbXPtKrqUwCfi3Tu9H59QRl4CjVzQn7MoH3fzTwaFLIv6QSz1AYrjPnl
	 FWCTTAMPw6K90QH6p649WYusNdlFXFyA6+cYkvZF9j2xwXMi0YneI9dAEST2cuHB12
	 HdcH7md3uiLS3RV6leHJ/AFLDmsaqKjfG/LIIFgNwan+2ehgfo+f9VqoQ6WsbAONIH
	 IZFnhVG+7/5/CA/cbBU+B+5CB4IQzXngG/vaHo6QhTALPQImlI0DpOLakRAyfdjrqY
	 Hk/tjl60OvhGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4A0C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174561359357.13929.1025300855597898762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded61fb6c53d0dd439773aa1704b491d4f210f618c0e056cf5167dee04d1ac21
Date: Fri, 25 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745613593
