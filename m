Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB0138AC7B
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778709034; cv=none; b=HXquEnTnbtRYYETHQpBRCFLy55b5pv2Gh2SusrVIOJi9dxnsEr0Lp4ooTYk5j1APhFHwxEOtmwsLGT/ZX2obxrQrOvauCZDF47kZuspKNJ1cFZgLtDSNRjPxHADvCpxjnPhb4NCbtr7tm5UQ0JsHzl6FFysfXa/Yz/JL6fdBU8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778709034; c=relaxed/simple;
	bh=AQGZN6ZMcnBYYFmYgK782l8S9lndZCd4Ia9zJOiU1yc=;
	h=To:Subject:From:Message-Id:Date; b=g+z/uOaAwmWu4C6k10ywvobXUu1WkuRIey6SQRWuw8BeGAJE4VmXTW6dKCidlLi8ALs4BaQpseSF6Bor6m/D+aIX/si8vWPXD8PPJJSNclFlxNwHH2KE+pku7IvApqkehCu5r77JlMHVd4wNz/JQZDLB6/1dgFC0tmb6Yz3ooRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4PChU9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4PChU9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9520C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778709033;
	bh=AQGZN6ZMcnBYYFmYgK782l8S9lndZCd4Ia9zJOiU1yc=;
	h=To:Subject:From:Date:From;
	b=U4PChU9+DzfoE804NZtoxY16nt01/9ZtF5femiAy4y+s4XHB8Z7wVLhjmhsnInLFR
	 SKpOvzimkdM+vPiSwscjn77Jy0VJHzS3Q0YfzypilvObp2a1osVRlKqpDuWAEqrlCM
	 3ZC7zI4BCqLRzYQyajRsTh3K6lxeximlF1FIitzNZByK0TtQAp1RYcn3h0sEUiKttj
	 biaUu184zleZY++93j6BN1eZJVOLFrRo7atRokOQG7LE9qhYTXzLWHYrHI+3t7+prH
	 H1gDIvA5nh9o3eQQDVWOQWRzqMc1ssz4C8Me0eYMSU8bvgjiCUdFVo3jX67falX8sd
	 +I6CnDOCg8GhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA806CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177870903369.22578.1961302185757916635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d2c0c2aef47def8fa89cc59f0357e2215194b8deb7a1eb5abbae855730d829a
Date: Wed, 13 May 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778709033
