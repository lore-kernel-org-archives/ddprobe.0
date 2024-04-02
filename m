Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE2A15A48E
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712081296; cv=none; b=lurLjVV5G76zYtdhWFysqy9Mn1buyoAe5eFkM0OPon+Pqj/7rOb5HfpPVmfO7e6gAKZU5XtnoJvnHSwai47xhXy7Y/yiWz3IWKKgKCHXhFTQK2vO3jy2piZIXvY6ym5ljF3D83prTDb1py7c98TbkM3zjthp5X5rJXhOJzmUwdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712081296; c=relaxed/simple;
	bh=69pEwO6E1/FlYPKCRayB0Tse5Z+k2pWryrn53YFuL0M=;
	h=To:Subject:From:Message-Id:Date; b=nRsWW2/nUlUV4DRKU21SorfO+F1KhUHgF0Ry+/tpPiU5cSUnkCPLMDMVPq5LILskPo6Ef8MC7vbB0lf1KfATr8prTfOjFBO7wXCjQX4W3IUn1cper7w2/VkP7mtFjagGF8OWBn4bHTDxpK4aevarJkGzHs30znRbjwZ7GyeYzpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPnoMogo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPnoMogo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7074BC43394
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712081296;
	bh=69pEwO6E1/FlYPKCRayB0Tse5Z+k2pWryrn53YFuL0M=;
	h=To:Subject:From:Date:From;
	b=pPnoMogoqnppxZMiGUPrkKukxHSfQdOEETOWLMTos5oPNoqYHtR+fSwXVeAsrAruk
	 9b7/q/zVRnhFdtza4TTtQqnqVXF023dnO9b5UNMDBAZpRCj5d3ywSWTccW/jw27FYL
	 Jq+ZuTfmzREJUUhO8D6WpAVvg4iPv6z3HYfacTS+ug/ZazyEWkLUkU8H6ZPayRYzFs
	 PdxX5RyWtD4x7RTvihO7fbIwOOBndFGGA+nArUDW317wF2JQvuWbvOQ2joO3H80X4E
	 lHLEEqhX8sWRytjaAhGiPqiyLPN3Zt9boahv5+JXsFP/H4GZQxspLOyqxqae9Bro3e
	 NytCyMC6NUSdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B1AC6FD1F
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171208129639.2877.5993759976774019823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ad3c3e170ffd43bf07c90a3990a49730a9c30206d809e939b2678cb98ac0641
Date: Tue, 02 Apr 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712081296
