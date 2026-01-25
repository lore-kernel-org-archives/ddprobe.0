Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B1010F2
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769311434; cv=none; b=d3XDnV59BDZ83Syp7YeJcmtz2SS4WODyjo0GRcbX4SzOyaXs1JVe4xxCB2i+fJc99OhNJYros082OUziEv5O8KHjjcydKG23O7PnKCshoQQg3eG2zeTibOZDt6jeDhJdPn7mMfPEALEHoNBEqAFBwbd/NZf0BxIMQdZhphzUDCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769311434; c=relaxed/simple;
	bh=sIZMN8bzLxWQrTEGBleoRqrZiKgCy65qGS7YoqpS72k=;
	h=To:Subject:From:Message-Id:Date; b=eXe4qdyTJwmIWGK0hazBO9hCNTRV4bt1KI/NldZa0FneLwSlKm4KSguOc2Qn6axMHbkOyyOTOXUQitMys0/YT8l11lgvMaUwvqsnwhnISWvPkN8N/L5V909BqpD8mcXOzB6GAKcjeUii5BhXz7wjce3OYbLQy1IT0HspSsYHULs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b89p4wDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b89p4wDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5687C19425
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769311433;
	bh=sIZMN8bzLxWQrTEGBleoRqrZiKgCy65qGS7YoqpS72k=;
	h=To:Subject:From:Date:From;
	b=b89p4wDldMeZPmf4PEGJaNys4Jdd75QaCw6V4azmKn5/BFyhV4ORrLHEhiZz3fIoQ
	 B9VTqp0CiMESoKnV4asfXkdZA/4okmUkCbwzXVOcuTdfjmMYQI26cMbOIkQmu+jG5E
	 d1mjF3vYt8Uhk9Din5gheGm7cnJ88oRDm7PqeZY8cBmiVWfKGge4Ub1V2ZF6yBNGud
	 fsMWT2pAYVWUt1vtNUNaE0m/VD1NqrqB6EZCcidxbkc11YwrKTMVz+Iw26p+TWADbr
	 Zz2dunWdwbENvF8XkCq6YH0KRR4LXUbMj5/WWzjWu6qY7fn6+XyTYvDIzI6WOI4L7d
	 8eSeP95AzBDcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FD7E63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176931143358.12308.3367555999761806851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca290cb806b48cc7c09ff120b4021d664023de0fd176af1c7605892933d2f5c
Date: Sun, 25 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769311433
