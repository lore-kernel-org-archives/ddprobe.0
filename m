Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133BD25393E
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766469234; cv=none; b=nzUYmb+nfrMo5UQneRO4E4tz0S76ug2y21jeXG5RuINwiAG4RvPyBePubIsn1O1tKQVSAalvW9nAKmq44d6hIgBzVJKvxBTGo3HzuHPxe+E34IED1fQEwIOaa6JDiVhz5dCMXd9qllLlE9N1xMg5LgSLp1eeAY4b6mmk9P6V1ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766469234; c=relaxed/simple;
	bh=w7kIuI4S8YrXZbXrZTdZHCUSsJ4wpyyu+OIVIAOX0gM=;
	h=To:Subject:From:Message-Id:Date; b=MKhtVrR7dLCjR/y+rx+uPBb8H0ifXw94IBYL2vbZpZIOi7aa27H68LWTFQGooRFQVYgvQ7a/Ld+qhUgvpTdsAvwlD8+LjY4NG6FaPglikUp0/ahYpNaOVCQ5QrTRTsIFlsPqOzJeQ0TBG3FepY/rWu+cq+tyaGu2NgQeYKWPTiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cs2xYz/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cs2xYz/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30CFC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766469233;
	bh=w7kIuI4S8YrXZbXrZTdZHCUSsJ4wpyyu+OIVIAOX0gM=;
	h=To:Subject:From:Date:From;
	b=Cs2xYz/GD9D/sfjZDjEG2Rm148V6rDVRTx5FGcNFniM6jbi7BdS1L2YbeTbo5W4k0
	 ILEQuqyhvR8+wYRV2ukLjKpB82VFq3TmHSONLN+F3vpXnlkZ/itlgabSGtHQHQc0yI
	 Ybsu2FdysKGWBlJPz9a7olYJ18vo7FkTVzXBFxH2Y7P5VLK/h69bxu/+bZoX3I79Ze
	 LQhA9x5QAERi/AMNk19lrwI2RD8QHwWLYZxmsTOp9JCDGY+Bob2C3bYLkgyeW9PQpH
	 P6xfCK0pwCAuIJeXTMpzG5kqJaGrcukBq/Vt+wSsrEahzcHz5jzPalZz5qCOu67Kc6
	 Z5MULtxAs0wVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95596E6B25F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176646923358.7528.10333702978188514089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b9b0391c0792e21a9fe0bec8c7942f208cb5a234490c667dd98790b2d153c83
Date: Tue, 23 Dec 2025 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766469233
