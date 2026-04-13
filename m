Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031E7280CFB
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776098254; cv=none; b=fh5L5/nfnG+8DpvENctKGqpeJ1nqRJ4FMENXjJmTRNdg5KoX4BtHePiA9s7GFF/1kwY0WJUOsq1d/BdgGAFnZ0NMabHsZ8/mLV5CwI6ToceugGOgpdMiUWbNBnDVsNHClykUXVyhiIATiCLna+jV37YD7DtYkZXGvx2leiEQLUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776098254; c=relaxed/simple;
	bh=N0VAEydHetvrklZln9RgmYR59/ZMHt7M12dzPRZPskw=;
	h=To:Subject:From:Message-Id:Date; b=ObLNpe4hVP9YqMCMITCLtQePMax0EbS4JqrD89Xsm70SjjzhxLM5KDvVxbwb/j+dkneHs6EO6f7a9t7qpxSv0UqvM+knEqaMaKgZNBRLHjkdRIbmFM8AJETDgJDBGgC1o1h5IoWi7naDFkT0w3wS8tl2OYYO+GgraFKhKJ1xccI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPuFzodO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPuFzodO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F68C2BCB6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776098253;
	bh=N0VAEydHetvrklZln9RgmYR59/ZMHt7M12dzPRZPskw=;
	h=To:Subject:From:Date:From;
	b=iPuFzodOZbEoKyhnJ/5Mc5r3VQ+/hwyha5CWEwCeY+q9nA8OE1hXChPuswrnkxLRq
	 1ERmNF7iBMSddAhIrkmA8P6rVwAcvfjzQAY74k7Dd9CWJlufPNY8TMQytsyfa8sDxG
	 5aeSkYuh9Gl3szTIrG9iW26fsdVsNsKX/qVA4L2jQgORaCrLCVWgh6fonUwmd4oKbc
	 SR/kxbW2mrddwsaNbS2Icbw/2T+WlJtNFYZLz95a5bsewxCr3aY3ZdIpQsXAbfDMts
	 kXV73Duo16kZZqFtbhN8QHRKcLGl1Bvee4fawQ+54urI47j3lCbJi+zs3/cwNST5Ld
	 BADqOQjd6VZ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81E7F34C64
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177609825374.10797.515475662336841972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0481ec426aa490e69b554b5d971a45fc59b1528889ba1e9e0a7d7427805ba773
Date: Mon, 13 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776098253
