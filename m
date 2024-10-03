Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638C4BA49
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727930754; cv=none; b=SIpOXwysXpB2BCknb1dFO+z2ruS4hmlA9FOm+/IM3gwCCWRrKvko4k1AZb2ubzaaHOIfIXBP6ZegQORv+eAjzv9WS69A33cMKK/PejiRfkdjNvc5lUcvGaFalXooEU3bXSFAcLkmYzpT2UHL+wU+zmdImORLV9PwUv53Ahrl5qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727930754; c=relaxed/simple;
	bh=ZFSuDvOgeoqum2MVrCaA/2K8CWk+AmiwNaveZOpK+MM=;
	h=To:Subject:From:Message-Id:Date; b=dAFr5VU41fw+Uc0hOJKmx9deQgTT9UYChMwvzXKbMmo4duM5tMPD1CrRY2H9aWy8LpLsaXmimwYVlCSoGaQR3cGf9SEEJzWNlxlJb+wIG1p2OHATUqUyRAPBSavzyATg0ACyHjz9ipcTm90Gh2hQrKbX7sRtbWJzrjZeX0U8wLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coal7Mbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coal7Mbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4F7C4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727930753;
	bh=ZFSuDvOgeoqum2MVrCaA/2K8CWk+AmiwNaveZOpK+MM=;
	h=To:Subject:From:Date:From;
	b=coal7MbssgUAkK0wVZ/eTO8OlGKjHRdzG2yUBZtd6dnwVwVmL9wlioSC/cblBWR7k
	 oddmGEFuw5BszOejYvcbnoDEm/XbtGeIdYdFd4k+dK1EdO4XLSQfCXydBKlspH9KRI
	 qyvGZFS4THOELIhnrHIX95ggaxXQ2+UG+ifZ0FEjmBzHqZpx/lTLBUyYHMKHYC/m7V
	 M/ea25H7TUJsL2Gd5p8db2ASfMkIFgCYrwIRWgGwiDgdhZOWvVVYXJ6pKM7TDCOgm3
	 VujqjHDZX4obtHsElSWQoZctKCyg4/0cFNRR1RTj1UNTqZz45MAQILob3zUZKeC9/P
	 6RSiDKbrdlUiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A52CF3191
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172793075370.8797.10464403468381522759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bcce25a9e485a43f985cdfdf565aa63391be9ebea80c68eb925d36da01d3f83
Date: Thu, 03 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727930753
