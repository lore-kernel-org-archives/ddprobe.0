Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF0A22F01
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770486834; cv=none; b=FiXUPvxZ/2Mi1IX780h5kM/ab2gDWD2KOvinJ3QIVUSVbZbPoYN8QgenTVZzGtQprRD4tMWNTeRaFVuDZASlnpP92wrUNI7uxvnJcgYPWg7Be+xhhRfZEvJO8t32l17RYUYn2wOszkLI8V4U4DRTlBjBnGTXOC+OkWRliwV1QW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770486834; c=relaxed/simple;
	bh=066vkbMYvuO30qlc6CJBmset8uhsBmvjMFxCmA4aJxE=;
	h=To:Subject:From:Message-Id:Date; b=o0gd2AnKq+Isjj+RzdoD9RLRdKIyxaJNhe1IQrLU+oE4TUVns9wW/BkRWlnR8s7FhpRqQpwWJ3vSTEQCYr0FARzKwJGEOP+7p7CwZHvCTVlw6ord4JXCFKrfHelrP0QS6Pi+DXBWzgU9xwlHr/qGVbGWmVl6kZrmLpkzKL6gQhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ex+BaRUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ex+BaRUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A54C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770486833;
	bh=066vkbMYvuO30qlc6CJBmset8uhsBmvjMFxCmA4aJxE=;
	h=To:Subject:From:Date:From;
	b=ex+BaRUXiziMBMolcXdxNz53x2zJ9BvX4iUSIjh2WO497kwLlcjUOfN4Kz55z6HJF
	 /6ODNAHWhbOIZkK1wDosOGxqPUFu7+7H/9s2jhEWXzKlLWSEHwmDe4JguiEApwfOus
	 oMax6kvrZxLqUWbrxhcZ2pL1fHXOC4ncdrzdTIJ6/G+T15cAAwz9qNLrR+JxzzmET0
	 RgucWSsGIt0NFKAZTryBf9nE9pVap/AhzweW8XDn7qx0HKlwY97/858rCz9WS+fieV
	 mL+M3hBp3K6cc1UuAzAs8CEA74PG2KRYL7ydWyHK8wj/xGvz6Zpn0MHLnDY3ClPv3I
	 5pmPoASxZzCTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93139EE0AEE
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177048683358.29145.11901940697405301489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c5c415faaadfd1e75b3cbb41e70ab26fb18e6f88d9b68d6ac47d6f26207e86
Date: Sat, 07 Feb 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770486833
