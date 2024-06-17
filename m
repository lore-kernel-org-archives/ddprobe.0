Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B34225AE
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 18:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718647703; cv=none; b=G6yYXLhohp6N/qve8GQhYVhdmPyMT/LdRuglApXvwRQdagNV2od5H3mb60gq0JaNsbmQn7kD8mkei7b4zLfWzPaWIMne0ncajo8OLpeC4PxNytormdaqyuAOQewv284WgLzu1f3XmPFBVItzeDFg5tBEu6RdKWCga1K4A1XCeoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718647703; c=relaxed/simple;
	bh=Vr1F1Rnk59cDJ4yNj2ZELXf2p8lwgCLzTWbENK7KzKg=;
	h=To:Subject:From:Message-Id:Date; b=NQaI/uLI6W7AAzf0gFg1CkeA8f6O2YOJAHldgviysPRVHi6mqMZTRGeUFBFS3upwPM1rk1qYpDUBvf81H1GHFoQGXm7aJPNCMUa6c3yqPX4dkfLw1GEuvXc5Mg6LXvAn7cW4o+jzZBlE0G8r1WDAzH/jHpwpk13sly91QXtMRMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcGiIJ/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcGiIJ/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA9BC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 18:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718647702;
	bh=Vr1F1Rnk59cDJ4yNj2ZELXf2p8lwgCLzTWbENK7KzKg=;
	h=To:Subject:From:Date:From;
	b=pcGiIJ/m8vi3qTxJYjJMk9BkR7gnGq4AW0hz7XppJoBdaEl2VNivCgOaMKLPan2CP
	 1yIaXIFQgT6FoBxcLZ/i6TjOLWr44akKmlM4zk9H3oUUiklAtVsE1gj8LEQFaI3Aw7
	 50NcCK2R8SLzwC8/1Mj4tSez0QqnacK4NqAUV9B2aV5T0UZiLZyaAK/CA1RDPPO15A
	 8RfJe4LWSFjpsbwnL7igg3h8DRxU+Z5S8upq3teiUnQldNzO1O9dgh0hAnLxdyJpSP
	 iTyxcsUOb6BAe531+S/OuiqfonnhYAfya5fbEhez81o1Ypwn7McHENAK0jG5kvVGVL
	 qSL0sBInQMidw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8AD2C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 18:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171864770281.17315.2415325139566120010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdc3972c6256603ee328b328a0b9e4be98cf91d73ecf7a7f5373ea4304eed78a
Date: Mon, 17 Jun 2024 18:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718647702
