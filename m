Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3831B1D515A
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747148394; cv=none; b=o6BqxdvFuosRjvQty39M3WJCqBIztOJMXGwaZ6O9nRKP15e02EB6ynK1BKTWCkQK+SEs0ZyFaPQJg3+MC/opEE05rM20KtiP3Ia2rVU40KSS8OOQ/lXnWu62KsGuKw9N8iHktdpZdtAv4V2pstbAfPRRsbc+XgBn989/tPE/xd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747148394; c=relaxed/simple;
	bh=kPubA6MGshKywkxT6FATfi/JD/5yKdQ0aNcb3anq19c=;
	h=To:Subject:From:Message-Id:Date; b=O6aaziq4yHHhEV4fDhLQQzsyNAsZNSBKBYb5Ej3TKY4uvM4esojLHLG0bjzMkDoWv+USN3yEBSWDqVF3o48FJoWGTyG6Klgvl21hq0LboBfpn2ann4DtE3OpcXYpG4UZbKZOY0UqghNEjfuuuojgRMETwoQ1Gx4AcWoY7HpF5es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojjvbsVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojjvbsVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7917C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747148393;
	bh=kPubA6MGshKywkxT6FATfi/JD/5yKdQ0aNcb3anq19c=;
	h=To:Subject:From:Date:From;
	b=ojjvbsVb8ei2uSfnuDv8ExI46wi3c07SBMPjxHl/PDbe9Oxi77uyLtsb5jzDtgmmG
	 pyxPDRjVzI/K21dxH+76DnPLnzF0On8KqGuQ9a882Qe7pRRSk6CSfpW7BUXASAAaF2
	 1janG397kBC6+JnKFiuDa/i/qTYrwQbOifXtjRlbiMWDLTMmwMmxIGjsFGmVyKImls
	 +W9X5labLbXjDIUcHHKZzCu3cPzxM4x5/b2onmg+K9Tjy7D5ncxJqB0JHW6HSO5nLp
	 MYOjEkMbP+D4Gi1IoSO1g4TBRQYKMgTgSuRGYuDC7DSYi+M8pkYBkOijr6QWBv18N4
	 eMlctorykvLeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945C8C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174714839360.20919.3093404846038385895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8135b96f1f561ddb3f8c7664bbe6aecd8e81a092a71eeea6098947c29e1e662
Date: Tue, 13 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747148393
