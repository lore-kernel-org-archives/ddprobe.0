Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0315017A2FB
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758536994; cv=none; b=qy+YyMyHUcqN4mdZtnRjowh77ZuQAedvVmqyOtSKOXNA5G6z67yE78GF4ZsvQ6hKo9/oFq4T+Hv7P6mMU7BD20TVDUVv88yH3DaI4uvLZ5OKeFbqxmh26CTQJ6Dz1NjFKV/cT1TmKbdZS/3g1bXAqsLw2BfS71AQJhLqcDhTFSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758536994; c=relaxed/simple;
	bh=c8SYsaR8bK4MSeUuVvYekZJXzWIBRqoml4aq+xtus+s=;
	h=To:Subject:From:Message-Id:Date; b=ZBwcOY0depMU/DE4k4tv3bfPY/lEvJ2vzElxYU6pQg9X5Y+cybbKKeFkV9P2EGdeg8swSDHbRhGDkaTuLEbMj+E7ukDi4y4Vgx4X9KN0F3diKwJY7YAomeyV+96z85pAAhKslbA9b2xhbtt2rB1kxwXjbgDoBjRcywhIZ5WswgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRG6q6mO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRG6q6mO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B09C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758536993;
	bh=c8SYsaR8bK4MSeUuVvYekZJXzWIBRqoml4aq+xtus+s=;
	h=To:Subject:From:Date:From;
	b=GRG6q6mOU+HRPsn8YEjvEkJ7TMY7KEl9I+8c5WGgrBRRG93fhoftQRyA8FUyqP+f+
	 uVpDBixkWDZVelCJr1gcmSLOOKACkGbj73eQ2ApFLgXrsU+50SQssl348/VudIBRUU
	 mNrsDtS+ce+vWV/W639g+mxOJXwQxVzLhwjiJGqsrQEh5DybQw18qE1jrXYCRdxeEo
	 011FqQv8L29wyWjGcLHZdrnQnp0Igf0vTrRStPRBewO/SDJuDdbKhfELR0n9/Z4/bL
	 yWRSJ+v8rqogZB6sUAIFtwAo3gt5/2NNbwxnx3Sk6whQlJqMFgOgXK9gruRVCOSYrd
	 aFbTNLsHDnuwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916FCCAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175853699358.5457.17078268762273957543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24531d80df0f78455e21ed897f9816837c54086aebcedca24c2c5382b8dd2f01
Date: Mon, 22 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758536993
