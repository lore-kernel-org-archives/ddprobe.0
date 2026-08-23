Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695BF372EC1
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787479834; cv=none; b=BTyDKQdFs1wkrYgSPXk6f3BuPHqOCRt9pGryG2LYi6baGhmhizex5iiL2Ah/ItmXOi65/qKfXA33ZnKJVJBtFBHCT/2xIXnPpOwe67hl2UPzfck7N3NkPsnY3tRIOnGogYa5OVzAMeyiD7cib+1BmuQMbVNiKnaKD/isCvaJ+n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787479834; c=relaxed/simple;
	bh=ssp0lPN1Owf97c5w3GteiU3Bf0zcnWAi8nTcLBF977o=;
	h=To:Subject:From:Message-Id:Date; b=lZoLZKCWIKw9m/CbWs+o9bJtzznsNJJdBeBpXT1SvlYldnELVueqzxC8ojATiqQh5vNl3kiFiwff9MJqTVHXT/n9M6HguC+5odzq689GK6nCEdFghn9lr7MkTv4utoM1iWk/wcBg/tAxwZOQuHj+0wchle3ZKbnZdNidbxpdYhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEgCKXQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEgCKXQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5587C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787479833;
	bh=ssp0lPN1Owf97c5w3GteiU3Bf0zcnWAi8nTcLBF977o=;
	h=To:Subject:From:Date:From;
	b=lEgCKXQX4J+F+qxe5o3k2M5dxS2p/5guSAyOp/YFzQVPnmSkuY/+S9m7uxfg3ia23
	 cSF5sRBywNapTiY64jx7+Sqze02bfQFeKlJKekXZq3FMA63b77IFfTvOsgcBoX4LbK
	 7Ijj9JYhTUumqCtIyi8t+ST8f3urWQZJ6OiLzYjtvatENZauvrFPyYjagwznFEwKwd
	 nilmCs6ZH3E4/1gzlebH8HOgBK5QGe/15LgT3zya71Nh4/N1WPr1TB9k3lxY7+6yGh
	 V9voOTXxL3l7Ta/EN54s4sNDvtQ6njD5Q+gLKjmuPx6lYMGy80kG9YKDJZIkoAgCYQ
	 D4/rCP6YledhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4FDC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178747983369.11925.3054567789243245785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48363a71d74c597de261bce1db0680426cc1834ef87801337b4aaacbbcd14e2
Date: Sun, 23 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787479833
