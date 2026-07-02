Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8542FE0F
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783001915; cv=none; b=NXhw7TGgq+UfAyUX9Kl4yjTwti9KbTeaHY9tBb30/z5l5TwWnx7bnaXLTUtciqF5y+a8w7OgwY1HMVmClzq8HSpYDLPE+eBqDVuO2qO2hji0k2PnllPmdOjCBCJwBjIYjUbrnG/4C30Vbdbyi2w9A0b9UcYu798lmMDDtije6qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783001915; c=relaxed/simple;
	bh=+ar9oRWmr5Sl8Iu1jbHgpbzxtiks9gZCuD6aI1oIYKY=;
	h=To:Subject:From:Message-Id:Date; b=nOWw9QS4y1Y7fMrMR/UZVJF7jZa4Y7cKqL2+h/8ZIVxZZLz56jVEHeKBrlzNR17F6QsolWErTt7GfQFEV7GIVfAiXxFhDy/nJCZVt7bPSxnuPssyzkGGscK2CKvFbptoNhBaQHIn2BLUckfB7STMAOR+xsA14qeRHwoE36F91uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzUrs9Zq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzUrs9Zq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAA9C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783001913;
	bh=+ar9oRWmr5Sl8Iu1jbHgpbzxtiks9gZCuD6aI1oIYKY=;
	h=To:Subject:From:Date:From;
	b=XzUrs9ZqXbChL6Ye5UiI49NaMr3XeBI+711B4UvlWZQ4pb5ZKrj+BCb9r+V01xSVi
	 uPqrtlp4O3OYB1ivg/SJRnSaan/bTHHAXpXyU4FrBwVDGBITtMSgKzShknw2AaQK/3
	 cHXFYQJPTKDCYYUP04v7D9XdwERwE/1lFgUubihqshqapoRRUqVlVlkZ5ZLVipEe33
	 4XsNLZj0qgwkfrBCGwBCri8oXWP/ydG2uJc1YI3Np5XHtxNYF6ncmYaWWjKsGd/1ZV
	 8dDwKhLaTb6lMxenSia5AbA89kXYt3M6I79+QeXbhkrPtZF1pY5O/ww2lCWL+LxSmW
	 BfvwXFl4s6uLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88AFC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178300191368.8783.8945304226013249349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a0937f6561bd848aa3c49917d2421b77b6ef3d3e0291e52494734e827a5390
Date: Thu, 02 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783001913
