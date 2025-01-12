Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F701392
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736643354; cv=none; b=Fx3rr8VLVk1hX5mJAGL87/Jy9+vKqfuwqd1zSzUko/KYLUCQ9h602G7wtU9P8IsFgYDEHNZvLS+aIPQIzK6mIfnIuP0GiXveg+xKLMSGW3eMyI7J5jM23XOeZ1ybZtZy9D3SYsVqhxvJJ/kWnFJ/Z+pogZRDHV6uVb+agAhTT4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736643354; c=relaxed/simple;
	bh=xrDRBuqUiuVZ/aDsd4ZSbYU0bzodL/GWW5gutL+DpZo=;
	h=To:Subject:From:Message-Id:Date; b=UG25LeK3scz6LxuBdaMxhKBnrOZQsoMlsDlV0o9dhrsvdKdyJnytLIoNZ23cPeUgjoJczHYyUVaiC0oiJXFHYLUmfLRnILMtfp1n13DjoX6eownqPDBkBy/4rYhRS/BstUWQCaXScmr7faBlDE8OLLtfOZiYEfTwixADCMPvszI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njWe//Zt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njWe//Zt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEEDC4CED2
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736643353;
	bh=xrDRBuqUiuVZ/aDsd4ZSbYU0bzodL/GWW5gutL+DpZo=;
	h=To:Subject:From:Date:From;
	b=njWe//Ztzzk9sa36mHWSe7AQNOeGU6/0DUWSuwLjgE+e31z94FtcbyGzksJVx6h/y
	 M4GFlHbsTOfLxpq8O7PtNizBQcrUuHxFOaFnqef/oBGungVZQZmrEjUy5ETnL6vGPO
	 AtdIXDFqkLF+eBx7cyQ2tmPcTs/K2mGWVcsJII+2zQiyHHD+hr+e5EWcXiG08lX/0G
	 tEdbRVTWfwnwm58f2JSjwNtyMnli2Jgl++a2DOJwcT9ylTgmMZuP6YjEzMaJzasfl7
	 w60WrTVdUs3Nx5pYQx6pZvCYoSUwhbTbPgDa4rOoXpMuNHfHWqMe2caKhJUoPrGmAo
	 znEEAEQJF3JZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95650E7719A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173664335358.25272.12382150119359400513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348a26fca5540c424e98a52fe30fc72a15df8cbb010ddeb2e8ff3e52938ab9ea
Date: Sun, 12 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736643353
