Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BE81AAC9
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751178594; cv=none; b=fLWAIZi4pGDcChXcTU2Z7eh8x1mEcBNx6jSsy/MWUvTk3z0chzBR45+SKjJeComcD64Rxt9grdI6x9Wqe8wIrDJzvM9hUMHvjbnW753dtcXcDBltmBo6TaEqMtclo1LrpB/78DCmzF4dhLCIf7alNhDtYHwvnS29qWIV1KsIWVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751178594; c=relaxed/simple;
	bh=l9IWQNwnEhsxsDMxQJ51rSXzPAWD6egxVYwTaFGMcp0=;
	h=To:Subject:From:Message-Id:Date; b=WLNHsjTHXcs1IsC7yKaFzQQC0/zLFYcEzKZWH+F8+Nfx5YtaHwL4N6cQ9K4m0uQyU8N5BcqJvEdCVSmNU9jWUucqk4Z1JcbLPWwlqnzY0uVBDWexfZKUKgPTRk8HUR/efE55LxCswTDzHiRPnBCE1m5EJ5oJr+/EQFnaFTiBBzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdS7Cobi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdS7Cobi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1026C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751178593;
	bh=l9IWQNwnEhsxsDMxQJ51rSXzPAWD6egxVYwTaFGMcp0=;
	h=To:Subject:From:Date:From;
	b=QdS7CobiQ55EmZv7rVDWh7WIzyO+zFkYPYCdu3xJxvSwF9/Qif8DT+L4ZMQqKS4sh
	 sm0KBzg4VYiPShhCbMZDrd4LLjPw6T6wmPz3hYdvkJk3syGXYGXbUqNifGKA8wJPaZ
	 txLl2FeFBj2eAgcwqLxo1lXpQyD4O1uL5aYe1Q3RM0SOtXb5v96kak0ln/PrjRkuE3
	 SduZZH5TiPEuWRfalep/GFZUbsbPfqGRatdktYzILeUxI/w9XASX6VU910aoLtMZLB
	 5Ie51mLkb73waZtol3CqZ8Wo3CExQZlC562R1GmFCbpuyk/Z6GMNPzx0J7KNKm9fbE
	 2+V7hrYs6uVgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E872C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175117859357.5758.3683135877896760331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534941ab7f792a1b5268523e47bce15143b59777d2b594e166598a307a29d5a4
Date: Sun, 29 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751178593
