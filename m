Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0D87383981
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783150114; cv=none; b=ZWOMNT3YVbSlybmsbJSK3VgjrUHqH7GSbzkNeYFh6jrP02OH4OcfVHwJIjTYPXcYF33xEHsGKdv0doZHYGN98QegSfFrzbeIypgUq2jtrR3AIiZQ3QSh5u2t8G5ndpmGxR6qinIhkHDj5HatAV52n3tONWKWHMtfVp8Gq77l/I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783150114; c=relaxed/simple;
	bh=6YOe6/E1Khz+XhHFm5+NfiK+H6ayOiW1yDPl1mN/Xys=;
	h=To:Subject:From:Message-Id:Date; b=WpMa9Mqsj2nOlkSrlpNyke6UJQ0Jn5CefX6yN2fZ1rfLnTqQ1pOWQ3ntZptw9GiP49RBpEJqJkd5vD038P/LITwvubLGMVu7rc9AdgOw+omdeuqP0KX0xSrOLEz3oxK9rHOnrGn7OzW8sb6rV81wKgPAKHpNH+KXtu12qxpsDMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dl9pH/QU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dl9pH/QU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8F9C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783150113;
	bh=6YOe6/E1Khz+XhHFm5+NfiK+H6ayOiW1yDPl1mN/Xys=;
	h=To:Subject:From:Date:From;
	b=dl9pH/QUvURyaVxExmTedS974RNzxxzQuqlKMTDkmk2Womi0MCbEpSMJsXDB9mFJW
	 w/1E9Ow5PokBB1ZXyyJ/NqigEY2Y3GarMKg9w27V15sebsYI5hFPlkCFpHfS+kjENa
	 VcTiRYkywn07y2BequMgz5808ZkaFUL+2O34UCmOKQ6dDupt6mYeelvuJTpPX8D+mb
	 wkrkSSz+ggpNIHvw827kEtkpX8d2WJbxu2/ZeA3e8zrIu4Bsav6RN6rl3Dd6/9hhk+
	 5r/Ipz3HEcPG3UXow+43Std3zZ309Tel1gUH9D3WKrXUNDs9NJq4NBEqhIhwYfJda3
	 y+0NmLZGCQa8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6F2C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178315011368.3218.2404897728180736057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e68072b83a342e9e58f2d908e02a05b6cdd77f07a94a5b68b87b3bc92dd0f3
Date: Sat, 04 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783150113
