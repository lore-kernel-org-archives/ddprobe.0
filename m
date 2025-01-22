Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F38219FC
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737516954; cv=none; b=NFhjkbIzvIJOCtD9DJ8nxCh/EOnOMuB4RBWUL57ggl5doHc3k7dA6k3xB/gaz/ve8Cg5Vkz2kQPtic/iKmP3pfNlXfvfxzLbEyJYO9K6HzywoTMzVScxLXIycMeOhEHEdQtBI/noA+2fHd9d+icWitsHHw1ZfJqci9zBy+fnPak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737516954; c=relaxed/simple;
	bh=HC2CZVMFCgZ2fWQ0V6lE/XRBlxVGp2rmhP2usHvA0ls=;
	h=To:Subject:From:Message-Id:Date; b=RZdAxAwBmnOUYfTHjGKDyH9LolbPrUx4FfBmvl2daLmAwOirLR8YElM5scg9Ijux0ICdeHIH718S0aJQBcyptF4rhrWrLkGAQ8n+CUdIK4ETVcqCJOepVNXB1ftsxknv8PJUDi58yUgw717vilPLBP1vfsX7mypc9jWn6aF1CYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHF70tAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHF70tAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FBBC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737516953;
	bh=HC2CZVMFCgZ2fWQ0V6lE/XRBlxVGp2rmhP2usHvA0ls=;
	h=To:Subject:From:Date:From;
	b=uHF70tAw6AR/nNB0LrZ9eklGEqonsDAqNNC/eXAx3lfDyjEOe+T6fnaPPifYnTxI0
	 p9mKMwnzugDNBvHlsPKZpyVAkU47l1G+KjHzVbju7I3zpdT5ON7j+U6JMY+lwez8h+
	 hKTOC4LZyH/aXY4tPaQ6WCmwOXSolv9Q7w0jvGvNPdrhpaOUjcAOKzUNeGuiF/hiWi
	 Enr+/nOTCZjcN20AzLFkxDa7kAePg+HH4TWoKTYiUEh/S33zz0j2YVSxVM9RdJvNIh
	 iebSc1FKxCkd0EZfVhAiEVsXJfYRjNqIJXTGN0zTnvXPXyUUR+bo7PvPeT4NzJoo84
	 +mcPaOtwWg6yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC0CC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173751695358.31433.11177316180917480925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a127b08cd417c015f084b33ddb90f1c44044b0150a6a8a26a691224f714d4e48
Date: Wed, 22 Jan 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737516953
