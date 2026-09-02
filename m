Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F98C363C79
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788314436; cv=none; b=aKfv/f8LUHgwxxSipVIBsmUSWoMNaXnKNyHcxvS1BPuDeCzKCY73HQ0k5SZOT/N9GLWiF3OLuUJOMgoah53JOkgdkvE4lZNneTKge4lY7XRB8/rKU72siggo0GfaF+2P7EoZ2gnTOVMck5RTKZatmY8XXXI7xMxnr3Nz0Ha2x8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788314436; c=relaxed/simple;
	bh=gOxFKVHoMVRLkJAe+97PX1dZCHbL6P24zch8MS7cK7Y=;
	h=To:Subject:From:Message-Id:Date; b=d7kxtzr3BqKUzLIKGGuhXVZ41r4jJwLdOzagG9Ih92orTPQZB4+ms68GOwlb+xNA9ItCjkdmnVhd8+Jvje5j4VNgt3mxT0QBZ+5p61YOGlVD1Lm8BoG9D8AikTq5WcpeGz1BlbbQceW2S+FxfG17bftTx9cEujTITvyDFn+G0g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3808tsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3808tsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD533C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788314433;
	bh=gOxFKVHoMVRLkJAe+97PX1dZCHbL6P24zch8MS7cK7Y=;
	h=To:Subject:From:Date:From;
	b=I3808tsBHaZYojhcX8zEJmVKisJfaYzvk7eCAcmvYWVzQcwshCQVfpNxb4dzOMcM9
	 6Aict3wxocIAQw3D9FzuFm7cdK9H/9imNT17VdMybf/j3pm6NMW/AEz433A5fNG070
	 3Z48rTQRxs/zYs2ZOda1c0O7lGnI6OQwy4CCt8rGN0IfkOTmttarKrs2JHajpU0dLY
	 gEQW81U1G+cE4oMYRUycKk9p2tp45IuN27MaTVuGuxpVTkjIGU7lwIPWjf+5tiHvDw
	 nbr6OoC13/Pg0w/016VBgLMdizCkVFYXH7qLdNR7hyghlyuO0FhJL3gOIXDOorbJV3
	 gmhS5dPOh/p0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFBCC61DD3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178831443368.17807.3786251256306271767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc13ad508ace3ce445fab0c3d0dbc92774c95ecd8ca140a38b71b4b62a4a75b6
Date: Wed, 02 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788314433
