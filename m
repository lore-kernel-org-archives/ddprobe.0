Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 869BD51EE1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791985234; cv=none; b=n8yHnF4hursjIoTh+AdP7zehle/AfGngBdtw4XHb41n7qluBv6faDVoNNZ89aEJu/02eYYP5l4w4kUdbCxh5cgHGbyeDLNjyUWM7YKtFVZcViu2JeTcSIfHcVg4VHBJ2kkYmOhjA/TLl6OlHil41/4+PTUyqwWLwzb2wifCfqlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791985234; c=relaxed/simple;
	bh=rf1QY+hYU5v+cL3LA+Ug1l10rtyIBmuUG2d0hTv2CUk=;
	h=To:Subject:From:Message-Id:Date; b=moufbyNPmd90Gj0rl4+4HNtHXRXhpath7huBqvxoJETJK+0oSOMjV3/j141gRtVQXMJlUj33panjXjb3Y8LRaigzN6mMlO0b4oKKErTMgLdSKZSPOlyUB64VXyD5xj3RUCwan3HBfnY+v0jSAdTSpQ1am1uczLkmrr5UyfqkFec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqmh0Q5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqmh0Q5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDB2C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791985233;
	bh=rf1QY+hYU5v+cL3LA+Ug1l10rtyIBmuUG2d0hTv2CUk=;
	h=To:Subject:From:Date:From;
	b=oqmh0Q5Ujsh3dF/joOPyuutpJzTG7tIU/qPIvnlPCKnG5sjoVfEJy2jFVnvWoClyo
	 0ywHXfywjJ97mTxBz5Axl+UBil1fZ7blrBTCI3m8LNpX+viIaSzjXQ5N8UfKZ3oHuZ
	 ygUQLlXsG9ENRG5VRtsX0A8tlkADYWZOaY281WD9pR6lg33ZFeNe6dSW0v1H13Otds
	 3qOaHYzisdLFviUA78buIggo855deF8QmrqJBVn85Rii3C8x5Y+1fyUAP/pBhJ0pZI
	 WeBwkvS/v2oc/7QqfbGDlYNL+3pOkPh58V90hHhYy9bHFiUopfuU/LXymXHYzEv71D
	 Tp6JZUtwkbO7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAACCC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179198523368.1088.3069079301561515518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1be756aff3d141dbeeb2d604cfe926ef144ac583089083baedb49094745889
Date: Wed, 14 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791985233
