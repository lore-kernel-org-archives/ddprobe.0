Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D28823EA88
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762778394; cv=none; b=RQTJGG5m7nCHC0jyCw36UKUdoFkruEEX1Yl+H+bsVWo0sypRptFU/y99M+Gz5CdeVUYUH0OFDQ1AdKIVcGDqMZHU+6paNAu/75XuI1IrcstZ7I7E/klOpxf26WcP3xe//averZERf5n36iyNQW5UaYM7o6dxcZ5IukTlcu2YUYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762778394; c=relaxed/simple;
	bh=Agn5laWAsKLWKYHtT33Kbm6IOqo9XHJj9gpFDZelFkA=;
	h=To:Subject:From:Message-Id:Date; b=ep+Zo+OuQu9Syt7LgvwZZKVO8SklnHdnqcQugj/LGL3wEPx3ukRvaTFVuHzR1ijar53AzQTPu+n85erLs6OwXdYCI30FP5HSyomYSDmYAG2efmjPzwi3GDqEmOgLHTFrzresHfkHfUab7N/l2e11dijG1FjvUYUAalhAa7eAldM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFIzTvWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFIzTvWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 995CDC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762778393;
	bh=Agn5laWAsKLWKYHtT33Kbm6IOqo9XHJj9gpFDZelFkA=;
	h=To:Subject:From:Date:From;
	b=mFIzTvWxL97+lh7j9pxqgh2LsaL/BRdgPBkiQ8qmiokrX20bMx43SIQM9QffMKx8z
	 /oQnHf4CQTQ5lOYVAsbAHkSbIjfcwrz8k/LW8joG1vMXZJ+rVO5+521VbXUT2PMlsb
	 eiFJRRcVS6fCh1F1oLsToJSX6bL6pFQiT2kInKkwNwgGuUm/c8L2B5jDrCS1d4Y8OC
	 lHO6Rl1PvjWzTogaBa67Zpg90bz0Cd5ZkZ17Oo0en3fBGqV4AbZJV9OjO70Az4Kyik
	 h2Z+hMVTKoD4rH3cx6rMcrSICuZNIiJmsyEEqCfk0Dbc93vueEeA91sqAmNX4PzgWT
	 41iwq7lHPlgbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C2CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176277839357.15276.11827829817548603601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b2837427e2afe2d33663da542af8285b42d217f40be15d452c0b3ed9537f31
Date: Mon, 10 Nov 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762778393
