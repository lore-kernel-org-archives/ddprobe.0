Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0AB1DB344
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729713354; cv=none; b=q+jcKE1sUYbM3+5WNI6vlZX5tv+2pKcpum+G+9gXDnItJcaohY9LdxINxvurhCmg5PwMw8BurUjz8zmV9tPZ60LbowTiVRGru/4mAsr669lVu9KLtISJjPuPqJy/eBNyoPUqAwrhnXrHERYM/ZxyXiQsgPd7mdLyxcOIkY1AWlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729713354; c=relaxed/simple;
	bh=V9mYzo20P0oLI9r1IgUhwoMeMOQ1HVEJKCjMLIjC3bk=;
	h=To:Subject:From:Message-Id:Date; b=lqwaBkw43BTdhD+fxRM9cWIsTypodSub71MEgXHKqsYYx8YwIc2xGmb+wBUfO51liXhTSBFGxOK7UyeH7e/lgiS93rld4/+PWAhy6Uq8tVTHaeWV6YBbz8OXgEWXDi5I6ew9W9Jivr83Nkj9qdz774joRcTXbbVZnTbCru4X3+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMVGG77u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMVGG77u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB04C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729713353;
	bh=V9mYzo20P0oLI9r1IgUhwoMeMOQ1HVEJKCjMLIjC3bk=;
	h=To:Subject:From:Date:From;
	b=dMVGG77u92oEMyRUQNcgDkTzxTTGu0J7AT6m5PGx3piL/2hyTVrdSqO5yU1abGoYx
	 +ljOKkj9DDZ7gL2LrD9qqz+k7Rs3YHipWHCrPr0gQtaNPTjkEY44lPgiOBLw+xBzoP
	 30YytK1iEkXi+lvYIcne+ynGRltL2LCMftUMNssyL3NIb9vKd61xDByyx+SZytq/6k
	 Z4wtx+9cRzDxfr4s/H5S6IhdGBDdkfI8w/uQYRRCDhU/snC3g7469DlmGZrmB+pn3M
	 gfMHb1/Jp2u5LGKYoaTReiyArys+9j86wZLJJsoWxOjg/wzq9SBOe2UQzd5vawZj5d
	 rcuzcpvclNYlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946ACCFA463
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172971335360.14672.18307918347341587032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8822bcad46cfa890fe23a3dfbce88375ff34337dea740bda747a38d95e8c9be5
Date: Wed, 23 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729713353
