Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34915199FD6
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724229354; cv=none; b=EleF5l4qIXcvN7434dbmEQX1+SXZHciWVjgMMwDGxntye+fGCsJ9yqIilq1TCc1YSMrob6WF7GJdSNEe3TjGg6U2EZpH+m6LyxRfFFWBjp6l8xjZagvMR7xKQt4ihjIyUFJUw6VHJdYBVN8O+YwOQDwR6UYU6uYawQIsKm9WCHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724229354; c=relaxed/simple;
	bh=5q9vQYVx3ot1U5Wp5KADyajNkp2Nu+kwstoMIXEPTfU=;
	h=To:Subject:From:Message-Id:Date; b=nleujLU9DsqRHiLoBS+Rjwb7GXyOLT1PhmDrntJuW9eCAkAbG7N+jDecyZivF8gfo+q2lE1PSdOvfsDRbsjfxbQn1+/2fNR1SzLfI7OL0eM+K/0xCr0Oq0WIoDfV219Af/K9R99PLzAqpXTGEXhD63tTN1vR9ov1vZxH19DcIfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Guvafs8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Guvafs8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7967C32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724229353;
	bh=5q9vQYVx3ot1U5Wp5KADyajNkp2Nu+kwstoMIXEPTfU=;
	h=To:Subject:From:Date:From;
	b=Guvafs8xVrW2bErAHUARy7tTg6UBhrNWkxxSjmXSDv6xohKmbtsSLjtT3tYDs3QsM
	 CTQnDcZyWoNdc3612geLJQeZ9hVciZL0VghJdMUG1BumrG4ZEw3lIfaKLfnkGnEbe+
	 7ZzgNu4WnB2Yvi57qzHvP4zfQK5cz6CAs/jQvCjsmh3DE9Dk7OMwRQM9WG1pqhv68n
	 mQWwbD1Ii/hB+62BgpNKt0W8Yh6ulXHcasVS95hZc+CVzo8bl8aJIZcHCD4rH8hV8d
	 zBh4VF8FxvzOk0eztc3ekHgLBMBKesYdshqwxva7bQOg0jJl1XUxdSj43Ozub0qG52
	 nqMgNrFf1/2IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C639C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172422935363.15999.8930031102448220453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c762b9dd04b62c4abfb7c0a5d83658217988857938ff855ef20a0c3a27a00cec
Date: Wed, 21 Aug 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724229353
