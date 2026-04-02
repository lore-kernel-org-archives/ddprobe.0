Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2E6175A8D
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775153134; cv=none; b=GDIKnY41jEZMzvhXfYKQrlUFwStmlNhdQqQ6KWuaIIXpes495Atq1KyMYpGNi3TvvV8wUil9QR5J1JqSHWH/xtsgWhVVqkxC8yfVxbp6ZrkufpDY29RGHpqE3ns7bu2L+0QpQdiUhJVePKJopLWLJuHpul0ElBIT/ewsxvtM4Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775153134; c=relaxed/simple;
	bh=IRMyK3WMB97+BuOw/QhrE/PgaDG/f/5c9hP236jWkCo=;
	h=To:Subject:From:Message-Id:Date; b=edxCjsaEBoY1PVKDuBBQjXf65LzJPnQQz+7ppZJ15dwHt/dDGD5vngR5aTrCXWHdVU2DfRuRoTXXXMIgGPQK+Vyl+yJnT+fnKwYXi2mi1blyz4nAx6QIO78l3LS/8oKtaaLqFQM/we6wqa78z5jNmYQU2v2RhCdxcx9lCngGiR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rv1vUoX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rv1vUoX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05E9C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775153133;
	bh=IRMyK3WMB97+BuOw/QhrE/PgaDG/f/5c9hP236jWkCo=;
	h=To:Subject:From:Date:From;
	b=rv1vUoX45C6rDQ7hYaBjGy5bYUrsGOyBBVjadHN9DsBZ2W+fzl535HDrttMf12vKf
	 JAzTwMWLjG//8TQQzMI9KRmxErGgT4KUEUMMVxIcn4/RhoxsArxhpPWX+ndjwJsrMP
	 mgjlfaYKvzVaHgmlFbttwOxfq3RIJaVdymQ5JTWgkoqEFYvtE9VnjyUWLiMefRIErH
	 Xy9u5ArkNqbfee96EypiFKZtU4Gkpvif0cr0o1NWn0NcEymYd1K4a/3/hDz3ySIx5r
	 2eS5Atc4Ixunqz+/FkcsR3svHCc4tAwq+xtZtNWnPE6YF/zC7vtHR8736fZrrZTA00
	 HwDZLWjXCjJAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE48BD6AAEC
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177515313370.15186.17812790544263609471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37791e70fda99a08db62c867e115ae0f1a65c4449a8b0dea4f85019f6073b50
Date: Thu, 02 Apr 2026 18:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775153133
