Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71DD81EB30
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 07:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717486523; cv=none; b=lYC080SF8l9i3FkPp10FyfrZ00rs2ESXZl+6Kg/MANQjLvXQjhniwh/GOm14WcIU+dNtx3xggyVg25ksTendmtlsYjx90uy4GuOheCD45eC9b5AXwd4gJqz67fuf7F0efrD+9DCjbUihDMaMjz7Qhn4XqymWGCo9ngQSdjMq3Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717486523; c=relaxed/simple;
	bh=zbuizSyGVcHKooJzlpvY0l7lydsstkx60lqDQxgeQFs=;
	h=To:Subject:From:Message-Id:Date; b=hyQVOuH/OFHC4CH7UFRRKhlMO7xWhaOIlAH2Hd4vAgOAny8JQ9l8pHNSpoU29nOESxgh2zFYNnL3fXvrGK385GG9eM29M6XylhzSpv3JRT8fZ9tvzrWHRek8y0fFvAGh5Hfw/sA5AVl/u3tvpBcFOcV57R/Y/IYMH0ZLKpBsiD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXrViR0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXrViR0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0171C32782
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 07:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717486523;
	bh=zbuizSyGVcHKooJzlpvY0l7lydsstkx60lqDQxgeQFs=;
	h=To:Subject:From:Date:From;
	b=WXrViR0qDntdktvY5AGZySxD00vBU3zQeGOVrjvLb1ztPFNhAziiniIZdoIR343Tl
	 6IPcN51PZjLho9uy9ad0TmZXn842Al4ZkQXLe6WISPqPpfG1M9qJSdLgfbd74Bfg1S
	 sXHuwee/mBEEZszsgvjBMIcQC+b47BZlTXo+Q1kmZsokLhtx/EKZz0HJSNUshqFQZ+
	 FX3SjKlyre/t3bjBEqXYVFz6mjiETePASeBy0OEsi13Ogylh8Vx+2TClbU7hmK/qH5
	 LzvpwACnjYLn351jGG7SaW6n6phgPf3gjfKkkwlXxXxFg3ddZkP7XGK0ob3HWEXRWY
	 kFarb79ZYpADA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFDF2C25B7E
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 07:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171748652284.26359.16593130042710119232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b562c37df9e11c9062b8ef695934a6d21d5bd1ed3010bf72ac13ce1107a252ef
Date: Tue, 04 Jun 2024 07:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717486522
