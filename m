Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3291619048D
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733441154; cv=none; b=X7Qoff8PcoEC/rZcZRmvQCjvm3YpsBsSqsT72sXSpZDZpPI5rFQzyNsn7k9pkYG6Qzfz5R+gqCdORaSUXaxcyxU9wYyYpCfmHO5PcSuLwUhe4A8wYzecOHa0gw3VAo73bgVsb6klrixvDh5z+7wSqXcgq3AqsbV0iigBpAzAUKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733441154; c=relaxed/simple;
	bh=hslXqn+HnhDjg+mnCP2FT9nBG70EZwwAjYrQHYfIMLs=;
	h=To:Subject:From:Message-Id:Date; b=c8hctI84UjXfmhY8ra13UcG2ngUsv8z0aOMmuGmZk9G8KtP6ll7sZQpVkMNv3qbLGOL6ztBiEJgDPgwuQJ5pwCpg2e88kzlc5kGlzxbuCjpQXfNc859iwxGN1s/89r7t5/WgdXVvqK/X2kOy2Y/bXJsNQEAoddHKBPKV0IDRPMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUsd1V2v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUsd1V2v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8600C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733441153;
	bh=hslXqn+HnhDjg+mnCP2FT9nBG70EZwwAjYrQHYfIMLs=;
	h=To:Subject:From:Date:From;
	b=HUsd1V2vHQ8QP2IGC5FsWh3v3iuhUsSr+WZf4hIwnTpH9fOOC4DEExfkY39/PTp36
	 jIOzU7hO1YMBpNPgqPXV3MU+zZxWHdwZ+nBjTqnkFdAwJyYiAcF9h6X8sr8hqb/1jZ
	 P5YHBFxbxabHH8Osa+fpVbvlYCbCo+wvTJfx5nUWy0lQvX2xwGoV4U2kXdhlm9ygQA
	 /2xkRWqBlQzGOgNSItFSsqStbJQoILwiVZOG29eXqf6hl0+icSZ/AqzbddeTWHFLI3
	 Dm6BMKvO21uWErb7S6XwnIdSpJqKC2vRq0TlBw379e81ogon89IlyAf2rA4xxO31m2
	 1nbvfaPm0I/EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A186DE7716E
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173344115364.10242.18066173545936887405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c8bdba4318b427d9e4a28b8971ad0e1fe4b5253bf6046261ff2645c47cad653
Date: Thu, 05 Dec 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733441153
