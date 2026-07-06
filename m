Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E03934B66F
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783322315; cv=none; b=oQ5+mCmE2kEUO6wS3ee2Lltwl4maRSTSVh7PImhqGnAn6asoe3GS/j0XKfTkKvrJGTXrZ+5/pAK+AYn5x5WkIRYrTi2naHIQYaMuQJKAoAcqpIvdWqZCZ93bFe8kFUXeek+jIvRxoPLmfkn8B+6KWEHEarNfnDkIyZLDuwxyHDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783322315; c=relaxed/simple;
	bh=hy2oZWjLiK3/XsMuRrYlRPX2vdC+/Z2p4DUU74U6mrI=;
	h=To:Subject:From:Message-Id:Date; b=SEyrGjmWpS5g3NvtDwzpSM6wdWIENRYt7bot4xH/Faw1Dcplr0uwxWxYSnMXZxLdD91IuuBX9jpY8RTBY1LjrVRdicFRhpY1z8ezcdTW1BiGEJ9KJ/OajZcRCEy+ZzhAIP1w7B1P0tX3bygjuJ7fN6CoqvbqrO6KsRZtO/9tYy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6j8zdeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6j8zdeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C85C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783322313;
	bh=hy2oZWjLiK3/XsMuRrYlRPX2vdC+/Z2p4DUU74U6mrI=;
	h=To:Subject:From:Date:From;
	b=S6j8zdeI9cL20AQFRXddm8rIOjTuYEuagFrMrALf8vaKOK8UF7q45tyjrDbAG16oJ
	 bMzTrpUzKaz9t5smHPQxkljxKeN2EX9W4nFrWPT9ALSYhmOoK6+OAMoXHyBQE4dBCS
	 MXf8P/crtqI1Uve8YxVqQluc0+Ed80S6h5ZpxcAnRm3h1XKgLY8dCsD3vf/TRfBSFz
	 k7yWdikQeZLL9Z+PRsWSNkC4CE6yvttLJYJtIrZYMLOk4xP4BpgOzsLdEGwS19GKB3
	 Qn6Q4CepVy5vWFrlTvDPYbfXWzKT+HltUh/9vTbryOwsfecScgmVUh4uOOGd+RcikX
	 51TgCDfRi6sOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86CCC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178332231368.25916.2882076544253823199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2068f1b990726ff82af7867ec47e3bc65263da85efe7e93e73f7aff7308a7c26
Date: Mon, 06 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783322313
