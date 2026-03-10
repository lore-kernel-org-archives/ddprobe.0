Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7F940DFD6
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773163494; cv=none; b=HB2ouboMZe3mOHwxjmPOffqNuaA8/6OkJxQPAqknfS4u6FuLGbNzZ99iDEr4qr4aeBWt0to0oILVVsQGTBOsa3mZ4eEY3ag0T6GazepDx+9iv8V35dqL5Zh1wrYphIL03NFfOnAm9LjHTRvt1hIyCWJORWflc24D1wfFkedlCTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773163494; c=relaxed/simple;
	bh=SCP72UCM7fhEcv4k7bAoY1TaRIF0Jrf9xbW4CTOG+OI=;
	h=To:Subject:From:Message-Id:Date; b=T4kCeMkvdDfsAw5S62e1quBEpVQ2hvO0Kq78lFxLQPJaUE31MYFELwKgv2XYBFz6JKvr7qCpqThL/WFUne+5bpwxNGzndGt3e8hNUv3sz++5vfZvjH1NkHZKBevK3dIGwhQ0MrXAYF9GwsK+E2dJZqfv9TAR8Q4tD48BV5yLpY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdeL4N56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdeL4N56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9871C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773163493;
	bh=SCP72UCM7fhEcv4k7bAoY1TaRIF0Jrf9xbW4CTOG+OI=;
	h=To:Subject:From:Date:From;
	b=MdeL4N56gx7c5HrrYLYY2YbvX5jHs0w0xGDPtYOxgdq4phav9eoBO1GDVxJkjPxGT
	 zH2Z8DcyDgLBBT/KN9+/3OyEuDZ+ZGk3tfraqdYJ0pRi0oaOcNMSQxpsiiS6Pssd9I
	 TbqLu1D8aDsm7IZnPr9iXPJSqPLWuN5T7NtUx8jZEuZCAgXB4UDLoN2FEPM1letSLQ
	 0l1GTmAGsvJGEIdlPlhE+xc9R4RwZPQSeIevzbsvV4lQtgK8omX2MUr235MMy4L+bn
	 4Twp4VyKtHzp/BVT9XHt4GO3lJ/Wv1PrKKJTDAKgMmWbXaZaelJeoJLzpnkZ095VZp
	 pVqyr2xoWRW7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AB7FD4F08
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177316349359.12758.4134670069123600744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe057603219d02f7db0595134c2def1b4dbd36c79ecf1f129967b259899c25a
Date: Tue, 10 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773163493
