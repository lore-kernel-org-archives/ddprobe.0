Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E824DD3BC
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790776837; cv=none; b=R+eJzKe7IosngshKx1BAAClPaG8uBVmbo3h3WezbYwfZJyPK5TIdX3+34Jp2FeTIHAgY1gqA5TouPxXCM/lwzzxxZ+qxtd4pbwKUYRxpJ1QR9ACEAZGewOLS8to5dAzRVEyNQsXjgdde4bEcvnJm1xAxslU0dwqMEPnLKYSEDgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790776837; c=relaxed/simple;
	bh=D7ec1l8vQhTBF2bDg0bPMAchE16barfWj9kFyORzQqw=;
	h=To:Subject:From:Message-Id:Date; b=smXptswnjk4bWyf9kXFJTAO63RArs5XJmM+sFj0R6Idhe+02Rct27Cbo4Gp2S2c2hn1caOkEZQW6inGa9Wsijv/M4O2hMiCvAIHbcV8dG+jcgoIRJCl1N5FsWo7Uo5TJNWpPkEqdpAduHyIK8sPUEIjpgCdsPi7hlE0mbN3XW1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkHgqSe0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkHgqSe0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8D5C4AF12
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790776833;
	bh=D7ec1l8vQhTBF2bDg0bPMAchE16barfWj9kFyORzQqw=;
	h=To:Subject:From:Date:From;
	b=KkHgqSe0H0m8ahk4kBuz80jUaUG1UfYxolQLuDPwTjTCxJU2RJEyqyDxsUUIC/GiQ
	 6e4ZFrS1tmoc4Qr/9+szoJFohkNQCUa3dKy6R4D1aybAlx18mVruTnJc4RmDDg9Opo
	 ycWVZJyJUhQA5w3PYmgR82wqtzozK2JpWAYG91o04bihBTTvVOa1mj84vUjHspcqEc
	 Oq+dE2EB6WnEbVtSCBZwzjCUO42o5LpD90jrt9dUmhNG4YwnYMU3wHNQdS8L55unGi
	 PE4dM66UPBZ2i4NQHvd5N7b0Ng9Y+2Sh+G23PwBYyqfZdJGDWhB3vZqtJdUEFM/Ak5
	 Cc7sUnQf9zlxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADA1CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179077683368.25490.12250237659428205559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a93a08b37d405e48f909674dc75824f1c404e65b2929a658d76ead49ac31b9
Date: Wed, 30 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790776833
