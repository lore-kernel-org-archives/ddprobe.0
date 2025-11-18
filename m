Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 974A72C2349
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763491315; cv=none; b=evMKMBkyj5/ErncEKm/ranCGzUXENhY6h02Cf4gMBzvfzYhExK4nk2qTkv+7mHCSiyfepWlAS1PS1yZjAgFxL29+VnEhe5BFDV5Fzrtel9ekxhUaUJEivRYoz1/chhHKpOYTvyXIDoFGqzKkucboo5TPo+UPDGYeWETEkEWWZdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763491315; c=relaxed/simple;
	bh=xhw17lLj1AJFaPWreZDuQICDIAvB3H6lPL/YiZ7mhqM=;
	h=To:Subject:From:Message-Id:Date; b=WMyEuutgd6cagzCkIzQaeWJ8bzQi7JBRwVx9/82uQwD01SGGZnDJCzdOEs2ZNouaYLw6mGDXpsuMFHhyZyhZdbQyoLcHN2Zthq25fuGOkooboA2Pz7N54AClrpDvUDQUoE4PL5kTfVHBHCXYkvTYfP06QhRmP7FH0NVN3mr/iW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twWR97+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twWR97+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0ABA4C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763491314;
	bh=xhw17lLj1AJFaPWreZDuQICDIAvB3H6lPL/YiZ7mhqM=;
	h=To:Subject:From:Date:From;
	b=twWR97+Hp9oiyZpYOdQdIU9HO28eqJlnW9xJ1Rc5iB7bdyvoyhRp3ldg+xHDksYOy
	 OLqu7rn1QQZm528kDI8HvrY7Wl7v0CUPjOnp334kGfUj8yM2aZStRUVTwzVK6CTYYM
	 6/fM7ADK2gScujyu1h2mr/jT5KGfbbHlQr3y3cJBsuTk8TAb9NvR5h03Ap/mLoO1HE
	 3I/6JVceOL8BRVYYT/sVxSA61OjatZXur2T60PTUxSbr9kL8k1LLf6f4gZXgplHQ5c
	 NPQjBYUPxCbo0niZyta+rbkzbLfH3LoJ7VgvhIwUopySfTs5fvfc7KdeeyneTvX5JV
	 GOsV9QoXf8AHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9317DCEE343
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176349131358.5822.4174113174384623942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f305f2e2df1c25676d8b6f67bc0f2ffb4e5abe1d6bc2cded5836690d02f4a334
Date: Tue, 18 Nov 2025 18:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763491313
