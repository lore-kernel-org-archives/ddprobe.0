Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43981213245
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742321994; cv=none; b=HtSCTTpLuNyQzInXOyNUj/UCYlJs/onydfS+EWOFo2NpQLOBqjoLHGsN/Jblag5Vlf1J/SJLAY3KPxR87ulAqKShyRvtGhupGECoq3aIj00462/sYklABBiQKjAtq4GIc+4yeGjDY8wveoDrIp3fhiUh7BfmtfK9fcpwhaSPDHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742321994; c=relaxed/simple;
	bh=t9HJfhQCHu6yeNQPzXrBrb1r7gopB0y0wGFJeuFFI0c=;
	h=To:Subject:From:Message-Id:Date; b=jBoNn8ZxmjCPlKJkHXHvOjRlu3w7j2owOv6qdVYmEAOHG2QElCd1/u17JAaK9L/d18q+k8TnoIPkQAXVzFgm2LiRWSxirA1Yr+KaYfP30yuIVIKj5bPByXQ/20rdSIbBSxmSZfsAlzk1nB7Cd7afLk9HgqIjcZte58XJ8LnLVag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNG2sfW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNG2sfW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CBEC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742321993;
	bh=t9HJfhQCHu6yeNQPzXrBrb1r7gopB0y0wGFJeuFFI0c=;
	h=To:Subject:From:Date:From;
	b=RNG2sfW0Zfn3v8d+PZdw9y0RaS2YBhwBlXpP92f9v1o6PMD8WSw0tB93iflMdRUjM
	 wajwBuSIRdsEOtifptHb3esv81WC18xR3pXeP5bZnpua6S+xxTz4N5+twB+V0EbDSn
	 Ru5UpcdNQARn0rTK5MaVPj/jkzc7kREczbrq1bY/pFyI1W4QqpjQ4z+5HXWRtE8fXS
	 t9z5uVzpNan6c3xILyvu4jaj0AwEeccRJonEvyjHpxB8UQsR55nJvDkJnuFM29CpaX
	 FKsPRyXHIxewD2pW9DAVb4qF6T3xo6miaGBstAeh9fNF+23ccRc8Qc5e3xxbnCkioW
	 5yIFwXJS2Ib5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30D5C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174232199364.979.14352524595723051865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 844cb93cb48c28c952a4dbbdcc9ca5ef83157ea815adca6ca39c0a153bdf1477
Date: Tue, 18 Mar 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742321993
