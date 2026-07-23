Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510952F7EF3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784850034; cv=none; b=hjaJu6ewb2NQ11dO9HW7HjN32Cx93h74yLa9kOI376qGd41tt9ZErMnr3698UPjIHrqEMO0d7IxJM9GEFPMAiNVlXSSBaI2vFTZ+JGG0OHmt6YfWwmwcWz4nWHiq7H27xdAT8wuf96aoi2IsK4184Qvpv9rPphn21QL/DtKGAdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784850034; c=relaxed/simple;
	bh=nJeuf28bILCs7MbM6OdxGtGOnGAsPUDK4Gaz5sSNSYE=;
	h=To:Subject:From:Message-Id:Date; b=NPkz9KjeCBggKDivEPX1BNFIFwLoWFyoQ2EL/FkWwSjALGhNYh/7lrMZlLD00zXSDk8d0u7nehctUvIyuy2GiER6cMAgs4THOoDwuFC0jv9flUMhTuvppWuFbXAh7faePlE5vtxkCLWkjudvLZZJCPkgg5sQZ6oKNrhtdjhg/qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3Z7KP9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3Z7KP9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD30C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784850033;
	bh=nJeuf28bILCs7MbM6OdxGtGOnGAsPUDK4Gaz5sSNSYE=;
	h=To:Subject:From:Date:From;
	b=M3Z7KP9SfjwUSKR5tO+W0kJu2ezCIt5V88UCIkHUbfKSmeB0/C9gCGs4RguYnl0GY
	 ZapH8Al4NxtkHp3gSomETHGQnANfLFkFhTygGw2oA0famXdN61pfP4FKiIXzE/eA4l
	 YYS5Kev2/55JB5IOPJBj9UKr7O8dTUiOWRrQkocg6QhXcovHtoBKkTk9Xmj6EBy+Zi
	 3UCz3gpAIRTc7DBg9YctywH1uW3JyD+gezjT1Zhy5xKbjZrCeNKA20Ji1/McNpVu2d
	 lBGhhN5l+sCh3QM/W+j0SwH90PZJSxW1fLLcZWn5JJr7M4ut8nBdlIPBdvazpSUide
	 FQmW5u3iJIXFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACCFC531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178485003368.6340.2422879032592096642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4110e6c36f2d181fdc4690b92d41ab3e7e08c1b59857058e192fdc3467e57e43
Date: Thu, 23 Jul 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784850033
