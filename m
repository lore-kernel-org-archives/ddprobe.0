Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241A62367DF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754045994; cv=none; b=G55rPvG17QYVcn7d5XZiKK4cOgL660aLUa+EuWj9D6y6k6tABRdQ4Pz684ND22HZpgC9GeLDg1HJ0WENqtY7GSh6m3QNjkF9mYGqXaG7sb7TnHldHJhdS+yKr2h/Cnxokd6d8gUtZYSWYjnnr6V414WT0zjFxNY6wPrZRZ//xKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754045994; c=relaxed/simple;
	bh=5E4C4wxV+bzqNWkoHzoigup3UvulNvarb+z5Y4FpWGc=;
	h=To:Subject:From:Message-Id:Date; b=P3sx7dk04DNWUQYK6gmSJF4lUPK8FOFuD0gqDKzD85QCtU7IPE3Snv4udKZPvSXhFeZTW4eCPw/5O8JNbLmiOaghc6GOEaxobSQdluSKK3ZnyOZAmRBkygJHT4r7YfVFpaOssT2PAdtVNFuicUqt6p4+9gqLMFoPteDmm1AQ+xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=av2qpXh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="av2qpXh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F19AC4CEF6
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754045993;
	bh=5E4C4wxV+bzqNWkoHzoigup3UvulNvarb+z5Y4FpWGc=;
	h=To:Subject:From:Date:From;
	b=av2qpXh8rn3N+0ozrzMtlyafyoM8xWC0axFxLNXJ9ODl4U+Pg8/3NubrOa8RYFTN3
	 hxxyjyZvktzdsJpTVzYDaKCKjyOvtwcdbCtQnxShvUem39tUtgpOSWwy0giKk+sp0i
	 bZi0TNMhKFrrl4uAUfAdnQaCLrtFJfwQoW877aBCwjEUHBvGBz4yEJ+72ZuCVcHbfQ
	 du6UzxKg9Ecu9Wax1vBl3bhXgQn2mhspKCLbGcRdOa3yCtWHSq1687pl9xC/L2TEnQ
	 iwB/rXY2OE9/PG+7BzEVgtC6luezOzHeBcHbC4T0fYgahKuhDaWwTE59KdAKsuQcoF
	 IbZPlrd2tUnug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0F7C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175404599357.20620.888744334241727079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a626ff2bbe143593c58559e83b68a79bf56ff38ed0fa9f2ad6c850ab9885e0
Date: Fri, 01 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754045993
