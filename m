Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE742AE78
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763330514; cv=none; b=KkCvtsqfgM+fl8QOxQu4lhHasV/TstpCR3nGLXqmjh6jnziSVRJXp4da9MhjEz8K38a+iOTWBLHnGKlCqYBy5fX/NEqBUfaV1wSRB+dMLAj8vlxC3onaepGDigFxa59E8N5lqLFMiEkilbvR0fQVpTng/mwX+YO+JTtc4VTY1TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763330514; c=relaxed/simple;
	bh=PEBG8xdhfOm9i9gYhBS+QB3m6FsESrMamxqxZHn9yNU=;
	h=To:Subject:From:Message-Id:Date; b=MSvSVgM2rUtoarp0F3tJTqL2u5JZTDPDVHLJ8sCJWqQRESaaGr3KD6QIhJiosC///C3qjFW+QLqso5S4YjHkfyb8PxRasG9qnvEh6MgGB8YYBd7mFLYEA9qDq9jq2173AGhbxNgRQcEoZHFQ36HFJx2Kgps8SAAu9TLQRUG0mZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmvtBm4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmvtBm4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F98C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763330513;
	bh=PEBG8xdhfOm9i9gYhBS+QB3m6FsESrMamxqxZHn9yNU=;
	h=To:Subject:From:Date:From;
	b=kmvtBm4Dg25djEPMcwVqU5RAyNHgoMEkbz4T0vHBymC9sRfdx0wkX0hThn2Xxzdxg
	 9GAlrQVrlu/JLBBsGq0T+gwUhaMTY/JRTvLuU9PTnWHR66nn1WXjmGa5RzT3mPl+RR
	 iRouBGrOw3QJuoLTdWq3sTxw+8UWf6ZJslHs0HNqdQY2mCF/lIdFUGDzPw1oD0fUH8
	 b54GNKh73g/ccYtr/b5fUzF2hBKRJQc3+airyQUXPPbpjdZCZvuMXl/TcUNJnwWMKV
	 zjfBNkMFgJWan2Ay3BOGUfgbW6I/+G8fZ8hkMzFJuBnqR1rWZu2JX6cHqxopwGm9/J
	 czzJJ7aPpvSqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94448CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176333051358.11567.3690034145029963997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba7dedc0632eff0f7ec3dedd57423c176e94ec7c6356d6426fc60eed3615a80
Date: Sun, 16 Nov 2025 22:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763330513
