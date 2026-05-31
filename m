Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6127A349CEC
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780211674; cv=none; b=fZyL+5VjsXMFF70HXIZ9ma4I4EOS0YvvirsuaaInP5UQs8ocpGRcPE9cANijJ6n+ciUZKFoRYzGXyF6U0rKNbDlKTtLaPK4tyAgd3gmrxhsHI9p+JscpGEfoVZSWGPcE8ANVXN7SoG2AuabH/2eDwYuU3330judJj/frsO86K14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780211674; c=relaxed/simple;
	bh=kqRcgXY1dz4tUQ70KVl4ierkxHOQWScP9qKm7Hb8sbU=;
	h=To:Subject:From:Message-Id:Date; b=pG8g4t/g7+vOzf3NNpKMnRDl4k3h/z0IHQ6IeA4TkBdaPKye1Bd7HsqhtqociIqnN2ZIWDqr80HlFdj2OUQY9sQDHViFRRhzDKElBxVeyQqijYMKSxF15KyssOQsPvq57a9tPZasgvS9KjfUBRsXLi0W7gbsWnllzlQIXGgeTfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qesVaMv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qesVaMv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86DDC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780211673;
	bh=kqRcgXY1dz4tUQ70KVl4ierkxHOQWScP9qKm7Hb8sbU=;
	h=To:Subject:From:Date:From;
	b=qesVaMv/GC+ukaXx7trgZFb4xStgGshcSM1QtmXeMe+63VXn11Qj3kOILyF9CXDB0
	 scpKz9yogU+2BDSybuQvboyWGb6yjWhv+a3KwmOisGRxIWX3qKVGvTitYUr1b6sqP2
	 m21I3TPuvWzud+Pnhh71xOHHodUKHOLnkTf90XwQuwJll1fBs5JUkVllkOjETZ2fYI
	 Kn4eRre2tfQCjon+cMByiiRDV9DHaZGyhmVTA2dOvYGygim++3ZgtdzY1okxpSB53a
	 k6SYluCpOFRLvVVv76rNMUmg/JB8wfa0Tki3/0seckfBmSGnDLJGUc88LU7xRrJ3Xv
	 3Ucv8SezUUwaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8552CD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178021167368.26667.8284434482159910741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d4e071c43e89c862de9e53856c352b4fe53095b35cb21f34feccb39f074362
Date: Sun, 31 May 2026 07:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780211673
