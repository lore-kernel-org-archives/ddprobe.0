Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4969BC2C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743145194; cv=none; b=PCu1AG6Br196GGrh6R2ObJyuCdggG4ZBT5pWOJoAk2225QsJvzFQ/Tf3rQIFPvWRQs9ngMawLwpxUprz+UXgHGjVLOVt3pESwOP9gn80cLijRoA3KcyU62n5lvf5KBV7+U2xd2ADeSArtbv2WY6R5n0gZvijBihNQpW4kIj9UTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743145194; c=relaxed/simple;
	bh=dVEhwo9N951gvVF6x9Qke+7dPatRoIAZhmDWnKCSkS4=;
	h=To:Subject:From:Message-Id:Date; b=aFMe8OPCV87bozn+o8g14GGxVZBJ0YdhKSUZPs6oJRiriQeWFOcAj7N+yXDeWNL67BlQlJ4TmrXEPmwfYJKsjudrw/AE+uxAMaG7YpkoIxCoBW15ML/Q5ClLgQcDTKeO9TcZ3e2CbH8YlWB225xht+fuzZiQan7W3gJp20Zi5xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrWzce1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrWzce1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CBCC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743145193;
	bh=dVEhwo9N951gvVF6x9Qke+7dPatRoIAZhmDWnKCSkS4=;
	h=To:Subject:From:Date:From;
	b=UrWzce1zHKbzQBuVBWsqoa1lzhEmadcZePe8ozAaafC9ityQk0NY4mPlgmCzuy4+n
	 I8A4myNTygJrjqQN41c9GjXnyQRIxzn2PFDAXUrpCnnfBDEaWgkQg7/OfIajDxfKux
	 AHovDyyixV0ebVqXT9SwEjnlvDc4j+V0iJPcLNXYiK7L9HhCo0az29Fr0y1axF7TTI
	 3fUQ61XFOL4g409sWHZafXSwrmvLwc65KXTYsU0mWgdsIDX81zMjL2JusXHXM/lOgR
	 +vXUtx18kjmVxcsbc6FH3FVDakNBS6VwaBg/5CIKgIGMchZK/oZ7dmbqouVSyYbGgX
	 ImRM5U/0x8xug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCF0C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174314519364.17144.9549091846063051343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0856ed0dc1dfb642d3c0fbf31f73c67c2f7dc1b4d144ea20170ac333f800620a
Date: Fri, 28 Mar 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743145193
