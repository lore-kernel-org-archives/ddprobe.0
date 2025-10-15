Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CB42C3276
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760530794; cv=none; b=eRPm9tOVOezbf0C0MqWW1blnaGRQJbFpROpo0dFdNoj5ea1X1swJ3GKcX84tpkriLHh+OqJAH3PEGHYzS7gC6stYRaai+NLAYdPXEZ3v136sDqdSztrM9lz+sMGT15BLlOsYmfHHSmXh8+6S6RQ39aowV+uVaRdN5E+B9ZFJBPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760530794; c=relaxed/simple;
	bh=3S+XWYpCc8u8JtFay/5eEls8uaoG1/eOd05qskhnEL8=;
	h=To:Subject:From:Message-Id:Date; b=dENBE1fiYsiHprCZ3feIPlbvH2AX1JgzXbZnMX1+28KKYwT/S1A06UOwOGRVWFEdQgb+XeXWowVKdQXCJALJTRIG4Q+0uK6LDqEFv5wE5ySd/3Q6R2EEFoV4FPmHAp9hZzKASEBtGGd8gU0Y4opYA2M9KJY8wmWgXNyuKiosOiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dT1ZpGI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dT1ZpGI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BE0C4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760530793;
	bh=3S+XWYpCc8u8JtFay/5eEls8uaoG1/eOd05qskhnEL8=;
	h=To:Subject:From:Date:From;
	b=dT1ZpGI9zOVEbAEf7D7N9d9IlExKSaryqBfBLqQR1BGZUsVs7ZvDaM6cyQ7o+ssTF
	 9X7wwjvZAgUfzdqwaM00JEd8cgCyM62r71gPaHTn0CJ7BScyLC0gaLA1ebkNs0Toau
	 H4px7F/tP1GoLkspVEZBAzaR1hQ5ovWwO5dNpZC4MopxyB9N7h6bAZok67nKjgRIVt
	 19zNacyLzQc8D/M6PCwWGjQGhYrv+s50zz8zUNtXoWqXj3+CJoFVerC80OLHMXXOYR
	 2hUddPTZqjajp0WIZStMkQgUlstw7D5csL3ZzuF4DA/DEW5as/wO3Nc3KxPfbypV2p
	 V4fVK5BRaCiXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DB2CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176053079358.24072.6382822578908765271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c645c2e2bdfe0c2d639ccc027ba9c146faf5b3c3e5afe428d57b92e654581cf
Date: Wed, 15 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760530793
