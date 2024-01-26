Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D9F12E76
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706257097; cv=none; b=nxwgqI1/PpJG8bL/HT361uX73wRhJ1OXj0E6L/kB5Yuqf5WrIbNLfVbb8xz1umNou8Ix9yQdIUnhbc/4GePNg9z6sFpfqPlVtQh9IacEE0R8JYpwl1OW449suVxO1KLT5A3pT44s6N9NGY/RsBtuxZvfRqtZWq/V2+xVgLTjG4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706257097; c=relaxed/simple;
	bh=4pw2eAUnl3PKdhZ39IAXgfl3dQfjHUEE73XVTkgTVqI=;
	h=To:Subject:From:Message-Id:Date; b=JrmY+b1FGDr9Qm4pOKTi/V3dGkdFtP6DaOJkNIGVXrXdlEQKbvL+FqxQekMo/2MubfBCzhqsZyLOGv05KmGpYxpVme5IylPwyWus3SQHhySVJZlpuyGtuKrCyFCbrBUcBqJ2UCxuL+YLLwihTJq72FOn+B+96NlPUZdwCBCkB+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4p63l11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4p63l11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B435C433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706257096;
	bh=4pw2eAUnl3PKdhZ39IAXgfl3dQfjHUEE73XVTkgTVqI=;
	h=To:Subject:From:Date:From;
	b=i4p63l11JOTEzQkvLwWX8cem2TU0Fn3dUruLcFB6beekv0Bwyh9nUUkIG8XD4oIGb
	 /mcbd1c8NGQ4LSaJgI6msJuCubvR3nmbDFuto2dQAKWup3Y2sowkaLyN+J+asWFw4s
	 kEIwObDWPHgVEnpXpQaZUJK1HpJiMFFRE6hgy9AD6Z7N5nq/cvPSUnvYvjzpvB6U3V
	 ip3/0cDe7oeyWg/faPr/ZEMH5xhP9BmeoZzgDYdnE3NQUrA0gbF8q7eaYxhWJE1WYy
	 ydi2T+lhrO692L8lYY6Ow+JKWGSA7orxm4xWGvtYIFRDcKisqtBAoav2Ewy5f+bJcP
	 66H6Ge+78LUcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E026C47DDB
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170625709637.21866.2631909299890372724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e68b823ca44465760a6699fbd74dea91459191481381ea76fa34f4ed599293
Date: Fri, 26 Jan 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706257096
