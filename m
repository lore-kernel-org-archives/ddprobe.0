Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E34F41C62
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768003434; cv=none; b=dVzxrB/YiKKoad6LGEpyRXOc63ucIJi/Jqru4W5B3OaY/hnXlSUV0tGHsGttOpddGq41sybPfXLd+L8/919BbeWLIj02bWoGZo1joS2ITHGJ0lLYWKQ0MMYW8idkcyxdzddU6z5UJP7F+FDa6tTG3nauaAy1ZfagnSu0O2G3/wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768003434; c=relaxed/simple;
	bh=7xOgMYONVoOVTIM4dtRUmus4Bmy29FHfVlZqFsv5xbQ=;
	h=To:Subject:From:Message-Id:Date; b=R0iHvpvwliHrMQ/UTH+wLn0wdvVikWc+tQerY44AjcgIi0cz5bPdgHVhFYBes+6zpLJIiLoqKconICCqdsRlDv5Krh20ChSZp5h/oMcalEEeMGDoM20B4JAbJNUY2Xux3UxV2Bzbd2DpNVeyqayp/6+1ztd5c+GI/dW4HaBSAbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+WECZqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+WECZqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7FEC19421
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768003433;
	bh=7xOgMYONVoOVTIM4dtRUmus4Bmy29FHfVlZqFsv5xbQ=;
	h=To:Subject:From:Date:From;
	b=K+WECZqeKHHF1JpRLDhFxwLMH1mAYNmgNvM2paF3HpkT78mXT34zT5rntdyuis/w/
	 GbP79Oy5RTnD2E5iJ5Rg8KeEmCx9rQJNJYN6nf+mLasxosUpJRumD3pVVHAfqxF5SR
	 NSL9c5kIoPNhzHRtgizb/H1HNh5p610KoOZV84Q1+ZsJZ8FxKzuzeiMLxD+U1qJ6ug
	 uBZFrUzrjk6LyhA7sdON+cuvhFCqs8PTUuaZPe4AmuDrUhtCSO73GoKG7U9Sk6hRzG
	 JJhbUrzuVB3d//kXPqlr7d16spuI6EGgJZNrS3JOEeYLwHfrcYNOdtFRXP1aaBgx3Z
	 0CFV8b78HEScw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB56D277C9
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176800343360.24072.13808938965208056295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d423686dafe7d10e3ed8a0a6536bd71bc44606eb6e41d69e48e877daf3090241
Date: Sat, 10 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768003433
