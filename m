Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F5922576E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774467294; cv=none; b=Bpp/pNDFlnL7aO7wJ3gSXFD1koVFBcsOBrj1QLdB5Xi247SMaoejq3qokkc1/amEqbuOQxmuPkCC/0zLnrlJppeMo/Z1IwudQ4Hii5SYDEjXeR7KHsekYrrXxIgUtKVYv7dyZQFxxtxDpsa+Qlzaw1OgJ3ACHLiT1rp6Wt9cQVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774467294; c=relaxed/simple;
	bh=f/pjGr7kiQPiD5dy3v47BG8fW7/lBAA1GeHwXhKHdVQ=;
	h=To:Subject:From:Message-Id:Date; b=Nmx7ZHDMWWyZuaaPUhBForNpG6z9DRwGMmqmnt28BiR9D76ZHteXL1t3EeGwLnBaNtHjSGDmd1TPdltKgvJo8rpduxnFbH+otywIWC5aw1uSWyKdBEquUldSJvDam6/sASJf2KAWtw3zHDmypNDITWMH33Zt/se93la0xNKen8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUQAf4Cx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUQAf4Cx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FFEC19423
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774467293;
	bh=f/pjGr7kiQPiD5dy3v47BG8fW7/lBAA1GeHwXhKHdVQ=;
	h=To:Subject:From:Date:From;
	b=HUQAf4CxVdyYQNUc9yC/USlExmlgELKojC2BgArBGFr1a8PAcC98YWV0lErLZznRW
	 ssDrFAKBzfTJOmOqA62GMAbZfYhXQXrFJy4VTLpCUrGZh7AfEeKzjTLTQ6vXgshNS1
	 P389FLILi5p+x1hD3kx6TS4xkNHQPo0HaJA2uZsdBoJWHoQFBzsc1md/BHwrK9G+1r
	 /WE06JeClkMBXFREUSdw9vX1ztPT/L/DnHj5t9Ny/xZR75GU25cBsSeDAf2GN6jbuu
	 ICJgWWqnIEdeAe2+g1G4Pr14YqvA0uo63D04hhSMzPbezQ5FAmHmOe9KKIlYx+9KZS
	 zampWJpWepLFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932EC109C057
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177446729359.20186.16823340004937597122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a6ccf5b876e23d304343c657875013bd2da8147aa338a87aa13d87c0a4a6cd
Date: Wed, 25 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774467293
