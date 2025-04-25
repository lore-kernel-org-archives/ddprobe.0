Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C495E2236F0
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745610593; cv=none; b=lK+5n+pObB8ZzoFae7AMqa3nksv7tgNtEwIif7sVG2SvkXaMAFRpOqBcueoifHZPqQvSxKmIonw3ZF63t8uK1XS/cPdjzWmoGXVptYTeNio1I1Y3YNLg7q4k8EKmMVaTBflCi/iEKYMabpYupXU+6RHz677tQrX7uJfwCxQ3mw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745610593; c=relaxed/simple;
	bh=BuAQQafx0dXMVAPoK1e5jZgXu1Ys3/G0T07PlWPsrbE=;
	h=To:Subject:From:Message-Id:Date; b=azOGfysJH+bYSWFAPt23yuIrf/I9FJAMBgGiOkZLU0dLivnHXDBaZhgQQJlbNhN1u1/YZfeueWs/HjirhqB8345tiiX+srJY2ZgCZIrYHgSjVgazIs9yO5EwzuKERkif/xzy58vrwgKzoyeRBXHrjYrEuVXClYBwLkoSILRUfJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p61dhqMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p61dhqMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34AFC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745610593;
	bh=BuAQQafx0dXMVAPoK1e5jZgXu1Ys3/G0T07PlWPsrbE=;
	h=To:Subject:From:Date:From;
	b=p61dhqMJMYfCGdJqK+FvgZ2s7ibj4RBlOYZgJdpI6/PhcS42SSYCgIMRKUsQ8qsNq
	 fBiJUdbzK9hOlwOnmruTCsylhBpubYVbzdtFeBbqupMnRyoTUV5Mv2iBVCXgc2ZYNi
	 pWPV07fXcuGJgOC/dLPUmEOYSV9dyaDrMhbl7s9+8hzu/5o/hQmU4PPw3a/v57a944
	 Uh3NzdEZ2tPdHawg6qr0AIcjnFkck4qaiHcfj7PH7wvFC6T8asr/AIEJcjXasREp5D
	 1YAMAOa13+Q7rxxPrK4mNopFX4oh7qq7TKMikJcJctDWccaJPTjXtLDSLZofA70lKw
	 /mSEud7e62Zgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF3C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174561059359.7994.17726265797533640781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474d02a8d85036d0977e10c8c11a88da3a67dd41fa18fb1b41d83640e9ff793e
Date: Fri, 25 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745610593
