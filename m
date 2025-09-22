Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234A81D63F3
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758576594; cv=none; b=aYfJewhlqzxQOTzRxNv4C9dlju5axdJJ3uI3IZ5C5UVZFCpi3vYNjK7teUt4o2xFlSwSDFWu9Pi7g1PURIUap3RD+FS97w4riy8UaT7j6WYhInSS4uP3cWXrlisAfZ/IMiTAw71bubVDh+a13HmWMBgXvYlrcVwP45LdWMNOci4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758576594; c=relaxed/simple;
	bh=1aWtDae7EBKyVhh2aSZIbQ9L/qwD8Uvzw/3xtRzZ8JI=;
	h=To:Subject:From:Message-Id:Date; b=G/6Ixjyy9w4C+D13FTZu7WbRuFKUyDEa7v29f9onJur+xLR0DtwYWTYOIhKGXXX7ELxradTWChSmaQ1pkZ4melnkzn6rbkXW/idk+fGU5ZCWb4kZthb6rNO3xcKaSWhi33Q8FuRhgBeUvXNsVf7ALkbLdc6OCEfWOiu6EEMPjgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZD/ER7cu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZD/ER7cu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A466AC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758576593;
	bh=1aWtDae7EBKyVhh2aSZIbQ9L/qwD8Uvzw/3xtRzZ8JI=;
	h=To:Subject:From:Date:From;
	b=ZD/ER7cuHObb9SFwNMBXA2briX0paX4rfGPSoosUQaQ+ppuDmBFdNJ9W2epwuG+aX
	 25fGa+wbFoMPPzp1+twi15oNEVAQKrW8K0PgWEGPXmUgUDO8AuhWAwXxPE4INkCX44
	 JJxI2J89JmjuY3uwtyk7qsKVigrD5nMNGuqwaJE0E7ijZsUN/FMJIUPsOBNkxUf5fn
	 c0Dwqlbtb95Tp7ogv8PfJm101jdzPmo/rDhU9h7/1Erc+rKvRaYX0fcOnycIHINTUx
	 QYx1c9RIAeKWiyFbXa/iBOTtv96/vb+qgsKQzVNsxXWiKaKuTafLS686NKKDCdO24L
	 p6gTg9KTS7GJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935D5CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175857659359.21916.5297505078180919952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a2e8b451b597a22578278b9e4562614ad461cb02bfdcca12c8b18655847b07
Date: Mon, 22 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758576593
