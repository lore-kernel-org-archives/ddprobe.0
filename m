Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E6C2D12EC
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788819634; cv=none; b=bHW7EUUQIJzqyrnipB+4mSKrW+9Aqv8YtVuT6hlxPgHHmlkjQjzQ4MNW3Ns5aBY2oMUTia5/ufTzj2+yldqlLmaeEI5OIFzcfXaUu/nx5MwRTZPS3aWTqdoz3mekGKAn78WWExYadkZcG6AyPmTBS7z/kl/ZLvO14P6kC4ARmJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788819634; c=relaxed/simple;
	bh=oKY5RfKw5g8haBXW+GZTCNRb9lhoCVrgmt4iaoEqR4E=;
	h=To:Subject:From:Message-Id:Date; b=N5grUnt5MYcdSCjRbMoqrLYt9LEv3eHdSSMdKa9m3SygjCldYC/EPEPkBqJCxPKhEk5qZ1TZvIJoJHluLnssQzbP8I2cqYU2TLaXL5wkFh5FYLj+smfbkbPfffiC6o/neutIMsLZWhgkCFNIahBBXVGwLwS6R8HUykOHzAtCMQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEB+srk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEB+srk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13ABC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788819633;
	bh=oKY5RfKw5g8haBXW+GZTCNRb9lhoCVrgmt4iaoEqR4E=;
	h=To:Subject:From:Date:From;
	b=ZEB+srk2LD1QDqOeBKudlP2wJ8SSqHsJPI0WkZ8SEzfkf1Syc/k4JExQXOzqZ9QCv
	 qJ/qtU4nEdODmOLgQkd2ucnwwK1GL18y0Lx1E7aKRgD4OwOW4LE9NDwWoHQTkziJvB
	 l4SIwaJt6ZjobYpgtuaBHdA5A8gKMgy4gLNpqhFdyn1JCuxHy+zSdwgYVGgJpN+30J
	 1vaaMyS9qI3Kvf5jM7WiCg3p1G/dIv4dyY0AIkVve18NI+OpmIKdnP0FlKpHr+lrdm
	 xgyG9Npcwmb+QRH4IGxbhhfNTup0NoAC4pIIwP+UoQEK9hYyf5cSP3zGnm4A5Mn3os
	 GlbbG7Dhw6lPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD56CC79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178881963370.2746.3523424609014591085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474442f6ac56259ba484ae2fde71a339213974a2a68172f7818c89ee8ad2954e
Date: Mon, 07 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788819633
