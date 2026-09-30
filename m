Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BCC12AAF1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790731834; cv=none; b=rj7mGVIycZ3cUDzHaDfKtyPUEix1BK+R1e8Mgrpg5xvFA/7qkdTH2Td5Fzli0x8g3HrKUOAPuvxb2fd5wH1MVNlhOlpNzlpAWNowJ3Mno9/YGGHj8JD+5cP0Rkpm+Gj5oYI87syQq8uUCbYhg6lEcjuUPrC8pSVRXWwLr6sVhNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790731834; c=relaxed/simple;
	bh=5LzjQa0Oo/hKzfmW8SyE4rpERNGfXHsSwODTYdDJfr4=;
	h=To:Subject:From:Message-Id:Date; b=PYU/MYxDfMRmAKJwDfmi9xu7npkXNSseu3FHGND/qs5qbFpCCSzXpEb49tiES4CsoIwzWZ2kjkVEruUBLOuLQQbF382UFYOucH0Pm5HFqPQkC9xaR+HGxaRW0UGzT4qJpK37uRP/Wr4+02/ZLkLBoHh5idgUR8D6CZRexQOvHKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kozpa/GD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kozpa/GD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD0CC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790731833;
	bh=5LzjQa0Oo/hKzfmW8SyE4rpERNGfXHsSwODTYdDJfr4=;
	h=To:Subject:From:Date:From;
	b=Kozpa/GDtmGNZoHV67mMVx3s8AvqP5qTU1gomn2/Du2crUQdkuiNWRZacT/0RuJ0r
	 tc7pW1Uu6jFYPTMVVEC8pnliO0IN0/0wtfW2b+4APqgq0ftNo3UL/1cavOkdVA1y7y
	 Dfa+NqMoVCDK2dc3crdHs1joszdsimGzr5+0zlvF6q2ztm8BLxTT+cziD/5FrQI8JS
	 L8c+mEBb5Cq+0AmOoNIrvgo9zzLGKexLbWk0bNIeWOvXJKN6BS6kCtt7mE2vYSsIfN
	 cUjxXdgpP+HJtXB5x9WbeLbDz+9s+/P3OVAl1mPKWfYivYfmT7E80e+WvsZVFBaeDG
	 C1wZsSRJ5GPZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A942BCA5FAD
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179073183368.22537.4707118195247638094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ff2bfe2c545f7926e0e0516e4f25530fd690523403141d2019c134613f6b57
Date: Wed, 30 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790731833
