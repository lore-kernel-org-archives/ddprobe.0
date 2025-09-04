Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEC31917F4
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756982394; cv=none; b=cSpevEKDzbWKX/CYA8bKWn2eW2xlP4o3YpBkKXk+9+N5Mc8rrLQSAfyD/vstH/q4s9XjvxCvUFHAIJOrhUFjJ4C0aZ62NldwNh+oiX7z368ab2WqZiR4gVp6nNSzA2d9AOgPOUCZyl9evLLlYpHiRK9MzkK/lpuQ96pyqL7JJwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756982394; c=relaxed/simple;
	bh=BqAmwZ2izmATau7o20XrkNKr0/wgDNEvfwbPrv2HAnY=;
	h=To:Subject:From:Message-Id:Date; b=TOOSatxOPhxY+gZClHdW3zfaqsrAW0/2OGfHufZK+OyIFnD4yJmXrMtKCFtjQg1w/8mwfnHgWutxIDjbCoIgRiVlkkWhvH3lXfblrDOjGD8XfN8SmtzGYKs6Gsa79n5TRKkbIdB447pFKO/jRrxE/DQWFjJt14VZIlbTqgOFq0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfWFsK3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfWFsK3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52C3C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756982393;
	bh=BqAmwZ2izmATau7o20XrkNKr0/wgDNEvfwbPrv2HAnY=;
	h=To:Subject:From:Date:From;
	b=SfWFsK3g+EAss+4CbxwRa9VEJTtsbKF7p3QxTHptXd6fePTVIxMqrTILlqQAysqFq
	 HBbWaj1hI1MeXnXGQ0Z9B/zDjamO5L75lp2pw9QWmWx11Pl0cVHP/UTr1JZr91Q9qw
	 6uDmYUqfwrWegakzxMXxzBANhjV+938hK8j6NeArAf4q79JdO+cLP8zQ6kIyQsTUkO
	 c2WfqeVVSjDEwUzfO/ciXQUS9aYk/bJfohY/PCPf8HdTqLYLQtVVBtKUGA9VOsPtgT
	 3HJCNBj3v6QT/LruhvNoLnJvTTVneiVvF8+sZBJhKt3GoeTdMUKM9KRF0E2lS40dYB
	 89qS+6tivCS7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FBBCA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175698239358.27818.16108929301201397939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa81f4f4290ec39d689d9c51f392624ff871585787724f2d5d28a7f742c5622b
Date: Thu, 04 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756982393
