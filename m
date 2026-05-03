Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DD819D07E
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777814854; cv=none; b=gWdqJ+bA4LhSUjd+oYQAmT/Z7W/lo7p9cGYnrGf0C9+Mxeun3Z3e0G/sqcYXCi5IcBc/YWKi4CN0AxrUjFQYhoSkEUMDdtpXtEIJovQestjNSrtqXF5N7KQgfkEE4I/AhguazvMJRONoqCob8IpS06rzLTdFGisr9w/+8nqFBOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777814854; c=relaxed/simple;
	bh=nomUfJ/QGMoTXpJ0CiRofSYpENp7TTLmw9YE7LIp0gE=;
	h=To:Subject:From:Message-Id:Date; b=AxquyXjs0o8iw+vcbRiZ2j+hfVlfw1ejURQgCTcLaFQH2CbWMj+ci0XDzYHfufQLpsqPWjB18PuWrjAcWsQyGenKeoypoXutwYA7V+bxATAdOfym44OnLcRC0PBnF3WaMQmOfMFprRQDA/aHexmWjUHb4TnQxkBVE0Q4eoyy+BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tV9P/jMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tV9P/jMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C167DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777814853;
	bh=nomUfJ/QGMoTXpJ0CiRofSYpENp7TTLmw9YE7LIp0gE=;
	h=To:Subject:From:Date:From;
	b=tV9P/jMSKd4uAyM+MCgNyDwcFUIVx15wX3tVL5hWLWpbMcdEpiz1KA2xMvDQuY4Uo
	 7sc6dmWuUy+cpoF6qagxDD6NTQmjGyH5z+mQh+KPAsgagUbtzvbkmBWHw2z1E69BpY
	 Eh5quWJQ+xH4OHH1PtGXkt7wk7ye69VgeaFD+Bq6ak1oymC84SfJO3f/+JQWIQZMDZ
	 Wx9JeY7AcoxYSfEPUcNsagRRF0Z17n/OfGgx7XPCqSO1GOh5+UU8bRkhfL95bEY3nu
	 7XK5LU5Fi42GCRjKuu1FRnQlej2nwJ1L3QTjdmC+3Jj+G1MdSHXzD+xE7Uh2e7w5/6
	 zcK9yMH+vMIRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC112CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177781485368.32236.18431648339155464304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ffd5e8ec3d43fef43d89e4ad96b5525173fb1fcac0242440b44219b1a9016b
Date: Sun, 03 May 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777814853
