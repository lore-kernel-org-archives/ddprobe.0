Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6891B13442B
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 15:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713108563; cv=none; b=hJ2PgcdnOwMnTzytERXjDlq9yEsl+fdBqHDhZD+O4/FYim50DDHbnnWalJz6xTWdfVgFQddFXCZQwWbUUCYOi06LUGaz35Ym+oL+Ahkbsg/43+vHmVqGZaCzrDQ1rcmzHXDf09cE+eYn5fIYTz7GSnSZuKuXCN4PTVw5R2eM1ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713108563; c=relaxed/simple;
	bh=jWWbD10ANPyuLG9TyRnXFOoe6qLAy6Z8MdXhkoTmKGA=;
	h=To:Subject:From:Message-Id:Date; b=Z/0I0BNqZmGhUG94U1U+6thXdlMx3ry1A2mBc0DtFY5TqPtYMU94r4qVxVEf+dQPrUXmXfzVVEVM9GpQ30y9hpuYhLHPKEPI0iE97fSqEYcNiWBld4O1V/KCW9T11xtTzzBLhCWrZLRu84zBChdQ39/K8SK4YQDWj2AxZORt7VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHa0oVyT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHa0oVyT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F36C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 15:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713108562;
	bh=jWWbD10ANPyuLG9TyRnXFOoe6qLAy6Z8MdXhkoTmKGA=;
	h=To:Subject:From:Date:From;
	b=HHa0oVyTFZdTbbB1F2MhMZOknQXrCxqBefTmt2YCEp1t+7E0z+GccQHWZ2yHRSrSD
	 xvgtkR3NGIUTbgMIw0FMnYCOGpU7ms+wxdslmeC1SbJbCleO9ML6yP9JB2xuZzTLuo
	 +gODvjsT9A+QcYMnyu2dIntcKNLTVVra3GkPfLw1EOVHP/uYjWnk0iPgQ43EjDYrE7
	 YfRH4tMdBXFWNQQ0et+SVBJ/xQP8qfe0UF9pUQGrWQY29e99NAYlo5g2YQussa1w7n
	 ArZrBdEymbObNAJbAV9MWXXAs3nBA+z7ozcDxsSP82Oj6/gN6QdzPXV2bSP2mKqz2Q
	 wYJ5ODj44ZdOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFA0C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 15:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171310856275.5724.14412679284517221708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee5dd23e9699cacecbcbe20f6b83d5327da8d5f5e93d21b9f3dce47e0ca2f62
Date: Sun, 14 Apr 2024 15:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713108562
