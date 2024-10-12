Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0E6224D7
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728702354; cv=none; b=LOQmMLbviJxQJEzqlpbPVFvFBA6IYrj6+YYR8BjkJ5dQGQh3a8Vi5gP16vYBLSHr4xDG16/eo0ZuX9v+Em20KskrACDXAdiU/xzUdGtIGUyhB2MVfwBd+AwuQweVEdF3e9SVr2Igjs0UqDBBQe9EcTBc4e/O9pWf9a8AVNooqcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728702354; c=relaxed/simple;
	bh=z0GbV2jpPHLu78sUCUc13Sf+9ZsfdfEZjj6pw6e2pK0=;
	h=To:Subject:From:Message-Id:Date; b=hQBwWWrD5ZcpVJEx35GMZ7hq7MNBKHxeurGGmolIpAs9ug8dpUFg9fw8cESLQKU5Jjj4HzEA9vr3TPJmtIniWER5lg8WRYU2XPNRK4DB9NnKknscyLuY0sH+KxU7nvpS8Rc05djk9cFUcC1Exl2f+12k6GXvWqGUDQHUA2sKQ60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nX26ew6Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nX26ew6Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8362C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728702353;
	bh=z0GbV2jpPHLu78sUCUc13Sf+9ZsfdfEZjj6pw6e2pK0=;
	h=To:Subject:From:Date:From;
	b=nX26ew6Q3+M7oSc0ioXCE1xWuo69yldZhRp8ZjaTpJmJZESYJc7pKy1tcUQxY2FZS
	 /WiAZVKL1HckHcIsYpQJ1cHBqAhoh/3qprMzuxgT2R9bQ6jygpBc7B3/7/k8hVK8I2
	 ljBLDqM2AnJx6GcmD+UtTBZgt/Vj5PRQAPiP7/SSDnlSL5HHQW0eHrd8rbsiklx0tc
	 NERTxhREs7V/YtKe6uc3OFNUmHoRjtZQdjbfmrPxFM6f7e7Q+2M1K9L4k6YB/lb56Z
	 rEuVBHZfs7CZDq+idwJp1zKX+Pl+gZ8dexskVjrFcSEX0zC0HOTi2FRQXGQ4gx3wbx
	 GmABZWeN7evog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78B8D1A427
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172870235367.4504.10201642109484711862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9256c0b0aa60dfa18a3dc983d3f17bd15f2548ec3d4fbef9e08085fe2556ae93
Date: Sat, 12 Oct 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728702353
