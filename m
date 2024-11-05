Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2699784D02
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730829354; cv=none; b=a6QboWM9e8Ez/SvbfWyyG2zoopEfDVgceUkCrUoIfW75uKSWNAJC+ai1Els+GIWg7O3K+2fU2MNr5+Xu87Fn3yxUkb8zfLmm2F8IyTDk88wZlEqPnDQC0CUwD2xeVT5wuyM/79MeIE2RJFZjRxx35H+nj6L0Ob+JdcW1FYW+NUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730829354; c=relaxed/simple;
	bh=xwdmLdlVdDcnRvQFQhGC4O3nTBClofAtK5zt1D/3Q64=;
	h=To:Subject:From:Message-Id:Date; b=oynqSrD9lpbwHIpLh0cB5/l6PVpEZoEhiMalpk470qSrvdMcRSguP9qUYUIACEog7qJA8s8AJPh7fh4KLTTo4zt5S/jNktt3zsz8iIbNqiMMZWHhuKB3vh0Al1zeMx8jnPs4JPXQnx7MS0l/+UsSz/GNkS5blDhitUGqfGVkUjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzVve2ZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzVve2ZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4856C4CED1
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730829353;
	bh=xwdmLdlVdDcnRvQFQhGC4O3nTBClofAtK5zt1D/3Q64=;
	h=To:Subject:From:Date:From;
	b=ZzVve2ZHuQUQL+JSFjy3u1GbpELTpU5i0WT6iXbSOeHhgI3Ko5i1JGP3RuAR/ssg7
	 mShjPklbB8AOfgCW6B9Or5ISWeRwUtCiq3ti2hxtAbU3GZgIeDYvoFPpjvvaIjgdU/
	 VF1O9HQq7eT+SwPeX7xJ1zMXrpd/AaHG7pO5RtQnsezl4TT6BON6fpsMh9y/9WgKPV
	 fYz38ML19t6F7UX6ST9fPfkJXrzVoKeMVaAwuBwY+zfh3YhdsdhUrOiFjLIcQtzNxp
	 xCI4/4HLFdEqapjZE/ywZBCJh1UffcNb7XdERsclwOiDCtl+l5JJtvXH6d8AT0pB1B
	 20yGmJmF1kRaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E3BD3176D
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173082935365.6906.16335479586146368209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a6b0a2b90d24e192cd6c9846324149f7a408f2d002683092758c06ce1a59f3e
Date: Tue, 05 Nov 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730829353
