Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2557A44D6BE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769003034; cv=none; b=DAf38IoWtREioH4DkfZn5PujuFf9vWwse/L2edd7pbJPe5wG2wNAOYNNs/qQCtOBa4SBWht3PLD9adFFbc2umlxnzlXMWuzwqPLQEXcmo7pL2niF9UJ3InYdpMFavXTYtQMb9HjxEWt0qN5Cwx+lPJsrEfFd8WaaVYRhqgerx64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769003034; c=relaxed/simple;
	bh=cy5LRJ6ySbzeGZo0kV4XYBZufb5l40WfnDc6YuaSGIc=;
	h=To:Subject:From:Message-Id:Date; b=vGiyIxgmWN4EzIVR6qxm2fCtTnxETKKxqyyTZEsdzPGZLj4wqKjaPzXxLv9iHZgsCoimJub7iMy4gPqAS831Iq2dcAlrtzy4FHhxZGfyHv8yZlNWg6L5jXJYhTLHCQxWUETd6b27AkfZ8NBQQvIz+SzOA+D4VEww93pWM4xPI60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUTQyk+N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUTQyk+N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF18C19421
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769003033;
	bh=cy5LRJ6ySbzeGZo0kV4XYBZufb5l40WfnDc6YuaSGIc=;
	h=To:Subject:From:Date:From;
	b=TUTQyk+NidLeusg4AyBq/Z9c8uGWZwmmV9Xtpu7nRr3DUfXkKS/7HI5ZzOON+oRXS
	 IQrviZYgsbRYmsJ5uonGi0HnztqeF0ngCZFtRC1wbDapMi4k6u5H/LKLnJXDPq9Bj7
	 mDymSK8RNp3dI4MQPpsBNdRhoZW2QCMID+dqkGOjESyImW00zS/yx8aR5xiZ/Z5B/L
	 hBa8LuNI7VSeo+TEKDaRBIXYJv5nAavxABIgkYc3/uTqQMBtCQ/+Ihy22Of5CTEh1W
	 K8SKrpWOg7Lb6d3pbJMA58MB9zXfuSfCA+qfvmG9cfXInCAvqRREyxj4TMXA6SQ0CK
	 BOcM0itgYarTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9135FC44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176900303358.9362.6068521270597693887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 005971215abb1a348e25bca2c3177837996de8f096b9c2df1bdecd6491b33512
Date: Wed, 21 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769003033
