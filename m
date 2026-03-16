Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE4E3DEAE6
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773686094; cv=none; b=iHBhRN2+aWAtNiTRCHMn326NW/Bmb6sH04mEa8jduvk01kcZnBTEPv170vN44f3eRnabKsj16wsXkaPO4FQNAgvKQdBpxfRM/9aPiY1mARgFAeAh+/SnKIfni65MsWHxoFcz/pXeLJydHGMGdTO3b/G0r/MU+BQL6uO4h09mdrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773686094; c=relaxed/simple;
	bh=wRM1cDjAy7DLS+d0jgL/S6/AbSIk/f9oNdWfJZAwi/w=;
	h=To:Subject:From:Message-Id:Date; b=hP4OJtUrDp/HOFFqTcQb5KffFOMyc6knwoCiAoqwRJKPf9JJoQ6NVEltf4rjlf7mSjJF5RpB0JX1t3Fj4U9UgBfPIWhYRL3E8eWruhYdfp/u57Fm/1B9pCqErHNIy1/Q9vlsmDDLGNc2zdS48VOvUX7uHitS3U3X8mEIJScqz7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGWsTN5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGWsTN5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A033DC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773686093;
	bh=wRM1cDjAy7DLS+d0jgL/S6/AbSIk/f9oNdWfJZAwi/w=;
	h=To:Subject:From:Date:From;
	b=aGWsTN5lgtZDTNbmOfnRdsWqrXFVhGc+W9HCw/6esGSUDN8bWqK52atJj7pjtbUWx
	 tfN+0WFDbLSUjDG/PlvUph6QE3Btf4hBEaVfdC8NioHL/cG8EJGXh0Z/l377UITjtG
	 SaTBTtosICWNKDhHX6XWrpMVmYUru74RWZXtnma4tomLSgA4U9ZINgRKhinI4YD6By
	 87jWsM/mOdIZ/c7aigePcGIhvZvQw1/6Rkx4DRLkRF5wb7srMudMPsPFnWlveth2YL
	 TLE+37Ll0rA1JDNbFEfraGqHFvQtiARP5q+8V/4Rr3x8GaB9mSQXAVw5Vm0e5uTvJY
	 n8D4MMDpsxbBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BDFF53D86
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177368609358.18924.12260112009149763039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e26303f8b1609952eb4ed031ab867f78ae90d332d026ca6364f234043b3354
Date: Mon, 16 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773686093
