Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333503ACEE3
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786405234; cv=none; b=ojFaeeEhg2PoJ0BXfPicBi6PleIqSycYiY0H0PQFPjaSo0j8nIj4ZD/8eX7NaPBEH0WkYUinIdCior8DROX9LyNdAt66m2154cvmktUSrYUGqnQpVCCycOd+AtHE3QiO0CQheVXAqhri/ukNJv12BAPMIpenXWcWIWCzaN9lfAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786405234; c=relaxed/simple;
	bh=Jb+gncAz1AsJj5VR5RAolTHnaFlYu/Irk5cNRautRPs=;
	h=To:Subject:From:Message-Id:Date; b=o93m073Ljlbz5zVvAC9CGUPULxh0KJol7JHUBUfn5nN8+Q8gwmzMoZ2yYqWbWDCHxm3Q2ZyO2omYtcn2Kp3w78TR1ra5jC5gU1//6NP1caiHBMrFvzngJqInY9k8+umTS3pd2QV25N9vnIQvzPjEYxOyDLA085DZm3AJwBGUIDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aj1bcpMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aj1bcpMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E59C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786405233;
	bh=Jb+gncAz1AsJj5VR5RAolTHnaFlYu/Irk5cNRautRPs=;
	h=To:Subject:From:Date:From;
	b=aj1bcpMu94LAHly4u6AHwoow84VRrWpQHBOTvCAyruESHCpy8XIf4RT5xKJvFcBtU
	 SmtGg0WnhJwCDGtZ3FFmadJZboWo9bGSrIzBsxlg69eTjZWJPRKr0CMFEe3V5LInN6
	 AhlEx7iY2Ks9aW7nZVm5gJ6uFcCVHCTiIvlAYcjGxHlfe6MnWzE1iHzxhh/+vyTuvi
	 OoBxQBT/P4vT/jU8KUqQE3GUSrazDg/Iv9+l9ykLm3zrS+eaS84vLXuZPtQdg5R+ci
	 /am9OL63FOHrJKeJ0Lp2ILYdXsyajrJ823+JhdGKZ4CDjAFgdvuJ07eDRHK0WOZT8p
	 tzpJ0cElR8gqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93A6C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178640523368.20446.6020778216894190386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3df43aea00dff32c857e1f8b4b8a541d072b7c967c46a28d9fb55d193938006
Date: Mon, 10 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786405233
