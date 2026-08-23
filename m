Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6024C49362B
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787444434; cv=none; b=QC19AoNEm2hl8kJWSWVXYxC/B0a6KJCao5AgA2j1d78crX9SPlgFZde8AkUkzhgfBPmDyt6YCQ3cffOdgFV4JbT9HZhpc2mIp8bqrnYjIYAvmlmb90GG879Bq9Z3UzHZng4ErhBrBXXKlKTHJktAIU+eKgGYBRj7OnKzfdHL2aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787444434; c=relaxed/simple;
	bh=X6wlz+gLoOtDAb9yk6inB0NIScl9ypqxVxFHIX1IWMo=;
	h=To:Subject:From:Message-Id:Date; b=lAKTE3hURjXKWfc4bDD8uI/UoSffU6b/CBZXxn8H+aAFKMWnGYIjbalmH7SG2Z+7ffGgZs7/SS+vP3oQBrkn5MeNNE4dxKdnqwu14q9blRnltDb9AexbGfACcJBOyszuVvk75g+x34H/CmYwmYkH8DPBaziR2XaHRjKwS+fDLBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuIhXfB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuIhXfB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE540C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787444433;
	bh=X6wlz+gLoOtDAb9yk6inB0NIScl9ypqxVxFHIX1IWMo=;
	h=To:Subject:From:Date:From;
	b=UuIhXfB6R0t2RYtnNisFzgRYNMmTm0xYGLn7gRCphhj7vey4utgCjDSKfSBt+wRWm
	 hpmvo8e3Z/Cv5Qa+QQc+wvhrTfYczCXdmdhJ5q6/UtkvrkVuyKGSu636vaqagQlh6R
	 MYr2n4i4DUVtxsVsbPCw8C2S+IrbkrhHNagWJ9HgNQaAOV3NGYKdaDyTGyzd9MRk9/
	 ocV5GTmEdFhrKsVaROHPQnzEmuAcl4yVYWwA+LL1kHFXe7Vkmhf7blulCGEsWImy76
	 y1HdzNyS0GRWJX9lvDDf96KIQh4qhPKWNdxSe3naNsX5m3xI/+HkQScbNb5NgWQ3ll
	 Ak0kVDqdzGMWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B24C5B572
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178744443369.31550.10030784902230272796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9fa2c86b864fdf0e1a61db33472093cc80420e24065bda41a4f17aab4e10f5f
Date: Sun, 23 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787444433
