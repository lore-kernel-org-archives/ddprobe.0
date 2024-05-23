Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7577413C9CF
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 10:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716460403; cv=none; b=o0js8TuB5vAY0kv/3U7WflA3t/JVjvqpIykZWzPOrqVmEVHQYQXE1VDglh5JSVkSueLqWjgT27o7RNJLkSUzcnIrcuA75R+AwTkk3kEZ+fe+JmEH1Z6EtoCF7IX147z9PX16VqAKa6JZjxZlClz/uLELW1iOHjoh9tMenWGVyT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716460403; c=relaxed/simple;
	bh=Q+xN4UrgcfSpcyCkBcGinFnLsbi0vRFJ/8+9cAx1rBc=;
	h=To:Subject:From:Message-Id:Date; b=djyOOev2d19fAwsnNSR6iYkPue2kveiYxhH4izirMF6TV+2o5qumETWyuPnZwpR78XGFrKmauH86NDC8HYaPt7Ggpmp7xhw2j8EwAtH/VLyDVX2OJUatg/rpc9l1IlfQlw0sPM5/gJ+fby0oY6O3IUAhq9y7IpyipRv3r0/3ZGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSFSSXIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSFSSXIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 088ECC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 10:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716460403;
	bh=Q+xN4UrgcfSpcyCkBcGinFnLsbi0vRFJ/8+9cAx1rBc=;
	h=To:Subject:From:Date:From;
	b=CSFSSXIQrBwlIUOoGVJrSfdo2HzLnFQ1G/pdCWHEd+iFGWpx95gy2nErwksFI73VI
	 iv9HaqatfqOVtD7Hv3Mufp8nAZboOFZT1AP78knFjIBNLe9kzKDaaDV0FpwzNj9AQJ
	 UpcIzU/RhFzJTtWoKsOxkA5ZkoIEs1PVmPBbXBJNgWJOzYrOUY9xRZAxEywcqAMzU7
	 8YAggv3pqkiOw4TCrK/pf8zw5T/NeWR77qMnyAERp6Itii9jFT9Xu8EYdDGgpUEnUl
	 BTWRVAo4gbFk8I04UNfcm3vWOHZBgc1BKajOkXZsv2SrXn+ZsCaxmGnEqSKF8a/FDy
	 xsVTXwEQqlC0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2DE2C25B79
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 10:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171646040290.26741.15239558620128896130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fecd4e6e9f449cd8980d56dcc11b91fc79a3cfe51a905e33d0ed3a4434b63b5d
Date: Thu, 23 May 2024 10:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716460402
