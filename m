Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14735BE6F
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728525355; cv=none; b=CEKXkflNrd9uv7jTutCTER99qByjMz3uvub3gEBwTUEvDQu2hOJLsO81+LjwWviWy/dUjXE2PZ5tgSELiLnA+T0zyjM+Rq7kqI69j4rvF0FiFNE2o60BoSN+l9j0u3rZdoXdVKNgas6KA3HAcTl+l+tOTvCtKUpOfGehJfJ1ITQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728525355; c=relaxed/simple;
	bh=zJlvpUnepBLSwylzkVFZIQu1LRyuZHs2nAlyOlftjNg=;
	h=To:Subject:From:Message-Id:Date; b=L6YSSdfahC36x1nk8qb+eV1GSeMScJsi3FiNBREIr34i0nNPlsuvLhjrSxPzCJOjgK9aAIO5OIhf0xUoxkUQyd4qU/r1le/JzkRXPeUbIgl4tvi0BEmKyitk4DB4Kw7EPg++5G4ZGE8DWQNF5j/0VEw0qiZ+E+36EBTU0gRQZe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZW/qUl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZW/qUl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C04FC4CECD
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728525353;
	bh=zJlvpUnepBLSwylzkVFZIQu1LRyuZHs2nAlyOlftjNg=;
	h=To:Subject:From:Date:From;
	b=ZZW/qUl4V4wrRUSP6t5zVlzPl21oEbPSgMLLDilzBpz3z/NXM0NYH2Z+WiEW0uNdS
	 KZ2xttCnFknG16CAjjqvisMVHK+2EGvZMcM6ckKRzYpNRRj+ejbGTOibFnKcZ/uEiI
	 C1USUT1XFbBc7IhF7ygrA3X4GZyIu7r5eAtxIjw3SU5NPqWX1P9rHeJQwN8F4OegIN
	 wldQQj7mW4GyymadblHUJdQRX9FRJMdFnfUl8tb02vSCLEmSiHg9x1x5FwKpE5i7A0
	 MNi8Qcil5MinSdvmVXwM4mgIBcH3ibIVfP6twyFB/frLO2JZTTgINF+zHdq0reDfoo
	 sRlXmL1hbf98g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931DFCEDDA9
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172852535359.1469.16556701103079305968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba8fc5a832657c6ffdd71270dca526d7bcaaf457c7a74bc6e5c3d07da64c6a0f
Date: Thu, 10 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728525353
