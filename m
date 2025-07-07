Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE49B21ABAA
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751912393; cv=none; b=iDc3m/KV4HaxmKzc5U4NnAdW1UqiXFBAONRAvxXoOvT/5/2i/88l5ilS/9+VvNu/sN1ZDtmI69pguOducQCoXMmTQto9/fDs3ripexFMFwi7XyBXn9NIV1bWq67AkjdQAuQEidd2mnnz5uQVIFkvxN4XQqM3g5k3sP41Xd6yNEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751912393; c=relaxed/simple;
	bh=r5l7rXJqOjXqnc2AG6hRd3QNkXTrDwTdKjsTtqaKJFk=;
	h=To:Subject:From:Message-Id:Date; b=ha+jEhpKEnLU+CozhrYxXVtDJ1Ls7tfry7ZSTqzEMzN4vH1cHS5tXgGbPlCrVmdDpq+7yYgWs5NbUUyrbTPU2TSOjG0haeia/YAL+73XgoA32HZGsfoN3MM9w2kyNA/XlyDATfJQNu61If7JPbgOv/Mzm8bqUhjqzZWdJH5FQfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtBAruv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtBAruv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD5BC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751912393;
	bh=r5l7rXJqOjXqnc2AG6hRd3QNkXTrDwTdKjsTtqaKJFk=;
	h=To:Subject:From:Date:From;
	b=VtBAruv6CN8pAQTdO/2aXDqk0FhUjnQdC8ewrWMLN8bAiWVH1iNoSPs/cseX+An8E
	 k2SWRPfO+h+R/GbRb0yaRVefQ9wPoCQU+d+Y7EaZ+9ndstwh2GfMjU2Y5UEG7Yttka
	 qDrj7NoRZod8+aJ3/NkLp1K82LMuOR0ZPidQKhMdghXQcSiX5sw6p94Zku8Ab2a8H7
	 58Wuf4YRSMkYYnpqWw4dec8g4xUzbupxUcH61V3nFc3sRNQdpnmGuSqsx42lNb8JFl
	 jrOP1BOlMfH9CZ3jqouTjD7fiNwccR684iBvZBodQkdXH5OZxWQBkWxW12c1L5Qj3e
	 KiqVyG7gUPjPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD4C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175191239358.5319.18039478271643074698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9cb85c11fb93c17e0cf20298fc2edd3d7bdb74ab5200d97e2f2b22a3d62810f
Date: Mon, 07 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751912393
