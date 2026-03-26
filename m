Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E67B7331A49
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774563294; cv=none; b=KNTHQE6J4ZmUVbRNhDaLL1ja7FDPVheHGf84SdWEhvfEXrLs+K3YVJGc64fGlsTood3KZaw/jRrjxx0oq1PGc/Ha1f+OQimicr+5X4RY68PoaZxp/8Uf2rAWVrE67/L2JGYsmkDvJxXAV01z3AFLweTJOMaWwr46ewPcPdghy34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774563294; c=relaxed/simple;
	bh=ArqL6VKU58hIk9p7rI70i9jy+/f7arfdEOisdLJ7noU=;
	h=To:Subject:From:Message-Id:Date; b=l78Hi3iNs8qnGjEZ1y4JK4KXofg/Nl7lBGjX61D/T/DvHhzEHEKSolmWngZTV0xYLDaim55PL5qeFD7tEkTlkCTYo0CE3BCELS8yVdcNjxBR8nWJDaePdXuXUPvHsZbwcNS/QXvo5WVImm7Ce7erlIQ5z56CzmihRSuYqy/deak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJz60lFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJz60lFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4454C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774563293;
	bh=ArqL6VKU58hIk9p7rI70i9jy+/f7arfdEOisdLJ7noU=;
	h=To:Subject:From:Date:From;
	b=oJz60lFYrRBtNY6HdG/9Oh9v4NptTajWbJpharAKfOJZbMt68pjMnzBZpEODOFn+6
	 8rNPOXJAOZqW/Gxtuee7hHsmiOY9FtQvXOBtqzuphSp7uwNPjZX4EI6hAXhm9TyWAm
	 oWTh1YixqdeEVhqD7NbAk5Imyb/VjHl0HN8YbcxpOR0mOZYL2IIWxdwBFOiNzjWutC
	 wxGykJH0kJvemI02Wh4VxJx1tNGOyKG4XqHfu9/lqHhK/Tsi1irU0TTJk03SsALjLI
	 7QzR7ukqQt264I4EeExyRzuK6M/tguciTnqD08PnipCyyu7MplP5pySfrdGbHeEFG4
	 l3Bi2Sa0ALFfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9250C10AB827
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177456329358.5907.370524328711521142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac66c291a8bef0a9863a97eb017316acb9bdfedfe67789df5bfe115d4613104
Date: Thu, 26 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774563293
