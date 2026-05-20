Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAFB37475C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779309634; cv=none; b=Fb0JUd7OAp9oB2LH21tLqvlbFoJCWJlh3WDzzMdaJl2yM9U1tlCM/rT4DUz5mzFpsbqTdMenEf7c89/sVIS/wlh0HagG8bOX0uslW8dX+OZxC916OAZb0Ioonr8EWbSbzY01vA4fYhmWKdMGxxYdeSGOGY1e3/GfH+mDjsUpbRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779309634; c=relaxed/simple;
	bh=BvhC58U3qQSs0m1gPInB1TtoD7sdhfdxLZBkeV6og14=;
	h=To:Subject:From:Message-Id:Date; b=rxP6VlpD3RgWFFC/7olxkoKEMlozDPea2I9V+522QIf5jNr8jPtLpRCs+Ds7B0nbviNgY9ZMFchmZRkbaT/MHHDoGQ3iR/18vEc8b2a6nDERKNel9WAAdJVmzh00axmA88wmxMkxOJ1Uv6U1GSF30tf3VWtb0EqCzGhxp6+6sLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGXlJmQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGXlJmQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D8AC2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779309633;
	bh=BvhC58U3qQSs0m1gPInB1TtoD7sdhfdxLZBkeV6og14=;
	h=To:Subject:From:Date:From;
	b=ZGXlJmQzcrTj6YIuBeEQHXwgNmXqKaoj/LWq009q1zIjgE3Y/U2FfV/auZ239oDX6
	 1duN+f7IzHjhnHRtgCG4csgZ5dCYwpA8DkCXnbu3QSI9A+L1XikfanJ3WK8FBm+JFw
	 8dJAmHy+CMRIol5kO0Q1Tob584j5m03mUQ8hJCQ3kx1L8h6uS5z2s6JQgFa1id227+
	 MfxM1ER2I84VVZCprRbBgc+tGCu2T3JnGs4Nrm8l/BzcDMmgthby8e3CyjdgIQoqWb
	 1EyI/lsGrPBO9pc6qinsaRLt+zWrZ498zFDbxpYC0ZPjhYuyRdzoWSrXerCjW65ev/
	 ceqKoI/wyDzJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB709CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177930963374.19487.11804173002375079425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 238b132be68492ca96b863353ded44a53abba6301127282de685e598c2457019
Date: Wed, 20 May 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779309633
