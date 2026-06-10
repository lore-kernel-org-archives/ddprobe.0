Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E66215746F
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781129794; cv=none; b=bIyLU8f+KHe2y2JXkCQDXqIFfheSfoAVEBHX9nG29xPG3tqtDyF404myYvEZLtjh3fosihM5PTKnbSiLQ2dqUb0Axwtiw3YFtkQ9vnm4vFrpNwyuUWkaulVMYxKVZKaO5sA3RpGcDRF+pfuoE3KnZ1YVsPIZwxUbjAa2/xnE5rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781129794; c=relaxed/simple;
	bh=ZTu5pci5Im56M00bkPNr754zJY5z+QP6J9xoyUUY1LE=;
	h=To:Subject:From:Message-Id:Date; b=MrwiAriIpo+7R2kMadQ6L9JzPoYfeVGJHxR8WL0ig+I3JIVpxyjFOt70rkLeW5wmTDTncfJcBIUm7Xzow2vTCukkAWjBG+PfE2qVUkg1glbexVS51KdqlBjbZaLY7b4a2F6OnLm385HBVyqIeeEq8j+FDpqNAbVjXLRjiNhtXUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdWuk/NC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdWuk/NC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0996C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781129793;
	bh=ZTu5pci5Im56M00bkPNr754zJY5z+QP6J9xoyUUY1LE=;
	h=To:Subject:From:Date:From;
	b=kdWuk/NCGp3odZN33x8eEjPYwwwqdfCNAW0GKm/JBJ8K3eEPIbGtWl3eZ/exQ9CXv
	 fWeflOgYX2VIHvSNRZYB5j3JFrkKQIzwTzQQZKOZqwAA4kYKElGnFoCr/kTkAiqNCn
	 vdUuL6HvgxalnYi4OGP4cQ5YBGIShWXW3fVkSmI9jFSJIIlgWWyw9ris/NrYKcBApW
	 iBmZ0nXVbW+IZdY740UpXzPmbTtQKomfrfuiDhNaSQQc1yeBWD9W5kle2uXezEPjaG
	 7wIkQFzCAq+VaeUsFb8YrMmUnika7NKhlPwh6tX6QXw0XHagAMEWJxpL8wktkcGmsy
	 fsRLvjC+ntF/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D93CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178112979368.25952.7860732716240153079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b3c694e5120961fc3d14cdc6f047181c878ecbf4737286645f8ef906f252bc
Date: Wed, 10 Jun 2026 22:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781129793
