Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABCF233DEC2
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789936834; cv=none; b=GFdOAJ/1kJFbna98N8oegseVKA+R/y4F0PaSLXJm2Rz0RqhXqXrOCzJ1touRjUEuXGnXTg+fndS7yCtfSFol8EWg9qqnokWwyQVsbFHedlWhnq79+w1RvVlm+KfGaI3UvKxr1Qmc4VC2lS0vKMK4LLf3UjFW/cdEGkmxKAKiwpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789936834; c=relaxed/simple;
	bh=FDnw3NcHyi0ha3x3X60Q0YsFo0WL2TMTN/cuQFW5xOk=;
	h=To:Subject:From:Message-Id:Date; b=UiVYAv/5hpe24T2UHSRAdaW/4zpSG1y/0D1Vos5ZtBblj0hqwztvbYLPm8fgWl4kf6iTFHa0/j7LnhALaPYf02zKP+JWQcrI3dX+Sus5YKN2fniZ2SuwRVLEmMDcyIVEb/9TgWGc0J1wEsv6vGFEJtVXv1h2NxGhAlpSNcQv2Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxQewb+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxQewb+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AF1C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789936833;
	bh=FDnw3NcHyi0ha3x3X60Q0YsFo0WL2TMTN/cuQFW5xOk=;
	h=To:Subject:From:Date:From;
	b=hxQewb+eqcaayPciystJaWDrWvOcHBQbOYaLC58kEVqVFXOuI7/npEL/Lp9xyrWtM
	 dk960zBWOCCC/gyWmX8rC/Svam7Q79/3m8wnz9Z7oQtBkDGV3U2RKiTD1II71OnKky
	 J39/9ZkaUrIfOsU8UPaN/gMAWonIPCt6ODnprEFzIjnmzdh2qgX9YYLGWgoZDFiHNN
	 aZJFpQcY7UuoN6imOosEx8+hCAweH/9Bh/2u2M76xQ1KI5LvMjBiGxP5L8yx519lF5
	 3PC8R218CoiInxVann+v5+eQ7XyWAcVVZIVEabypVDTao2WRSRKZiUz/7LqjTV0sin
	 C5/FJSxldL/gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE211C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178993683369.12721.14856718366609875398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 941ff026a2cda89bc83f29e7432a5bfdafa94f90085c08238b6ac36d9acb13ba
Date: Sun, 20 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789936833
