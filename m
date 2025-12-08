Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE6274BE1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765177374; cv=none; b=sXw8uLVPQX0UnWNzgL0Q3hccpeSfOzX4tM2HHQlzhM8lHzoRM+vkZCaUPtHJMpYb96TmXJXENGoXovOb+StCSqmE9Nqhq8nesqth+2cH3qb3QEXysO85MLaReZsUZCYe3R72sHl6cFP0t9jon/zXfNchlTEZCjnVPQj8n8roW7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765177374; c=relaxed/simple;
	bh=/PtP0pxGiHsX6oWUTHxoSs4NFDD5pQPadmajg5qRkso=;
	h=To:Subject:From:Message-Id:Date; b=e+pL4XGkTz8tItbTEh9qAevhUE7MAMhV1wo4S/KwuzqrGftvJMSlXYQi9u/litTVZPT2iLI+N/yFxN2iRmUT2gvtA542/dlJOYIYmJNC4xSA+JtN+cb4MVObHqostKGjaWncjDJNvABLESmZhVck/TeSLIsV4pCzztQxXPIpy5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvGX7lFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvGX7lFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8BEC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765177373;
	bh=/PtP0pxGiHsX6oWUTHxoSs4NFDD5pQPadmajg5qRkso=;
	h=To:Subject:From:Date:From;
	b=TvGX7lFD8QqwmtuBIXqiUNNI83JhFpCtJ4mZkq/wQjVruqnJqDk6Pc7zZARSEeOX7
	 FhaGINlrMVpuuA6R2LVLwBNd7xpAPZ+sHtssFfQ3bCAtsrx/mbkyF5Ss5gg/srArUz
	 XTsLmmhEukXmMBwufN2CQ22eojdy+AHg8RjN8oM5JZJ59ZhTsq/kUEm6mYpxwyg6r+
	 cGrgNR9dWDHYBYoQh8IgHP6+nXPDojv66oC76aY14nxGcs9kcDdU9XZLbxpW0LUTty
	 ba/zoO96iL2+bXkbjjlnQQDgtd2GHCuQQKL1MziNDhi+d9cdSZHs3VBBunh7ixL3bw
	 IohQgc4rQGyzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90432D3B7DD
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176517737358.29451.1672467975236181158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ba80625785816b4be32d0762b4ed1c796c467e13b05943da0127a1b6fa06a3
Date: Mon, 08 Dec 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765177373
