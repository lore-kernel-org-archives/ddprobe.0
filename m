Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553A0231C8D
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728792354; cv=none; b=BLEUvzcICA5BY0jjbn+vgVlqdlQIIxH+22FiAEIBLKaJYRVRFyWT9anS8gjAfLFbpgqzRMIlZQlRN+R8Z4mlJRfToBi6Cg5xfO8FIupByOT5NeVARAMPDhMJ22IkblBt42wDSVijVmJ+eg6qGY3EHJdcyyMnNj498f0ceBq4W+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728792354; c=relaxed/simple;
	bh=o4x9WddQjTGmdCdf85vI07Mewd3/h4yqdos4E2z/Vrk=;
	h=To:Subject:From:Message-Id:Date; b=IWXrQx3MLSA09D/7cfSZq2iSX986Fd0XZdu8b8k0gKPdS/eMPU9VLudwU2v2jCTLStSfTt9B2JM25sF27ACGH4EPUith8Knu/pvQc4CF7ObIFOsh4bCbQ955GKPSzSURuI/bU+wjLGzrzjzEMawCXn5w+D2PhmLyAJaW8NbQZDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxG4OBbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxG4OBbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4238C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728792353;
	bh=o4x9WddQjTGmdCdf85vI07Mewd3/h4yqdos4E2z/Vrk=;
	h=To:Subject:From:Date:From;
	b=ZxG4OBbDnV4+3Yqs1qds0HNYjrWfZ206J6gS7kSkR6oaTbGbX/90SZg6v3uMadvh9
	 WMCt6tZ5pdBSvOahuutfuk0GGipfV0ylTXzWm9g4xjFYOJg+II38N7Sqlavk72Zoic
	 UR6hjJi9pl3ki2tadr3jDtlThA4h4qmwxWwe/59SYkO/x/zoSrxwrGuE47OH8o5SLN
	 jlR28Rm3KMsMBKY5ie4tt4aYGtIJSLV7r6vKEhVWSgynNlJ4V4W3MPjys1TE6UPvj4
	 EDwhHvR5NRZbp8LI3TpFD+HdD4pEisFJR1ba62rrrZrRfnTHK3Xi6uCD99F+bAoCkg
	 /s8B7LrdPTiNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C50ACF2591
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172879235359.6400.5429739097700402992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba4eb6285a6bdea9fd7238b67d3a708c28a43fa2c8e25af5c0e6dfa162244cc
Date: Sun, 13 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728792353
