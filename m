Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9332139C9
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786419034; cv=none; b=jjbg5fl1WiQa7Y6NrRWd+/oLP7OE2GE5u/3AgkiPFv8mlTGRqBirNoWJbNVXHchhgOpyvccaLM+KMIGRM+hrzed8Qt02032uTc/jLXH8uWRh7jrM029c3MA8p/YFC4/spxgDck+r9EGgpeaoMlXDQYZXLp3zMgrY7U3rwb9XP9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786419034; c=relaxed/simple;
	bh=EEdhoFq1KZ4PFzkI5a0RTK9OkL+/uG/8LwyGIsJ3tMM=;
	h=To:Subject:From:Message-Id:Date; b=t4QOw8BivuhRAdDTBSWUZZaqUbOFC8egQtCzk/f9sR9+5Z0cfLQ4upb+XevDhsFphpNzO9iDKmZy8jXYOiWOHPHGoLrZSnRGjydNhCCuWJIDHgCTWAQ4divshbxNk4VkKSPei63Mh2e/fnvN2evcUde+jhBRh4H6LOWkzf+9MeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGkUToMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGkUToMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB57AC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786419033;
	bh=EEdhoFq1KZ4PFzkI5a0RTK9OkL+/uG/8LwyGIsJ3tMM=;
	h=To:Subject:From:Date:From;
	b=UGkUToMZHnaIrAKWBKRAxm7lKOGX2dCOys5Ug1hV2VAFP0PbfowL7UA2wAlyrM2pz
	 E16s9DPhRbDZ1lwM4vz4W5h6u+YeqtiG7Cn3cY4EUUAANo7dbuB5vbUnYH+yHLTus9
	 Eljo8l7I4mwxcrPbZUUTYylwyGRVviGWjFGlDxD0MCBxgi5vzhmj7NvnxRht+mvvI1
	 XV1P5L1cVCkp4V5UlP/duhnu1mnCQjBKlTgoD+q9bslXQEkWK7J84dZWnzQiMdecUZ
	 23EaoZNDI1mclEviCUG09ddCGfosS09LE2hmlEbcwuODuYqHzBN6Dly2CKD0jzKRW8
	 sDGTiQ46urOiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DECC5AD7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178641903368.19993.5058427504605253399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b3a667ba97b86aebe199a036eba6c7dcabadd2fd1e663a24f9bb1803598740
Date: Tue, 11 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786419033
