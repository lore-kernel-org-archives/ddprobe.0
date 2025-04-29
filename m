Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2C22C109F
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745924994; cv=none; b=byc6hh+LHmAQ1v2FR7R7qJvOjDOrwuQ54b41DO7BZ1mV0RMgNJ7JfhL6Ew4kGzOEsrkrvfvgeOGV4Cw6o0+m8SSBY6/5qhjNz5oXRGOSQThULpTs//8qaaEW6h8/uplKTzGD5/f6oUXNYin6zUzGiF7159ZOZSSpSKE4qOzlhHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745924994; c=relaxed/simple;
	bh=DUL87PWOczVeVtX6A/ZppfODOY7tdxMVW8Mln2Kvh9U=;
	h=To:Subject:From:Message-Id:Date; b=Lfrw8iPGXcY7si8HV7LW6FGXgvCeQGcOQkISR3X+e5Ob0FI4PCWGzNLBv1jRRZQrbd2szWZ0SWasMJc9zTh5I19eXBVJCsQfTNVXZ7V0sChmx21BD5aZoQWxC9dPoYfSZf4fUCX3bp2QrojygRdCjmc5YEOje10fxAs1QaQ/skg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiBX2lxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiBX2lxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1190C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745924993;
	bh=DUL87PWOczVeVtX6A/ZppfODOY7tdxMVW8Mln2Kvh9U=;
	h=To:Subject:From:Date:From;
	b=KiBX2lxTSBF8HX98WwsKo5ZhrI4/uBDVeoFyL8Daw2SXtVLs4+xWPatLd/lYrgqo2
	 Y8hEmg0sJE1fxL7RyEuGBrlMaxOZSVIWyo0gxi8sqTV+F8Xfqace7kNpdgLDkcnO+g
	 TaWhgh3nn6vdd0nvqC89099ZlxVkiVIkJS4470G2zTsa4andc3l5Ox0MB6gytXLjOQ
	 lP0Qh7nJ2eNaa01dK5sjX/9RrzFyhdqw57sQc8ZjHBJX500QOa/GNzPh7t0ET6CdOV
	 GzWPjdwlwOvA+f3Z8GJ8CjdgC1UPVLgPR6uYm7yysGX2E/b4Ya73pXUAZKEDn4AmVN
	 2p52Yb/HmLA6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91766C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174592499357.24991.696362304867471027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa133e0f1047aa0a55b9224ec919de475f84c2edb8019698c9767bb74dae17fc
Date: Tue, 29 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745924993
