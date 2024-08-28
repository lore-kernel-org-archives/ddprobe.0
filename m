Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC05213BAC3
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724854554; cv=none; b=kwwYctG2dj+9zpTRy7iuCALY9O0SKfKgTCC0kIT5QAou72Mw5PozQA9gXgw6qogpXp24x74YeUIN2kggSJNdr99IE3lfV1F7sVd/aFy5mp8YIJ+6lmqa4AXAQ+PMmdmZcsEQvRFpLKWgNW9d1d2MS1aEMYpGCisC9qura56lT1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724854554; c=relaxed/simple;
	bh=2O4rqXwZH83Eb5hc++pnwJS3JygSF/D+ZW72xgbSNlc=;
	h=To:Subject:From:Message-Id:Date; b=JFRNILLr6rI2f8dtW+ZynBMtwvez6sXWbNwYNib2QvSc3Dk+mL9mGVoTxC233O321iD0WR1ONGSwcJAlD+X6DwGqPyHvG6avn3dkzcBIQozABiN9frcJ2YGfl2IhzEdjRcZ/eZqg0VZRcL0egCX0mZZJ9OsZ3doGK9WX3hJvOpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPOE9ddi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPOE9ddi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEEA1C98EFD
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724854553;
	bh=2O4rqXwZH83Eb5hc++pnwJS3JygSF/D+ZW72xgbSNlc=;
	h=To:Subject:From:Date:From;
	b=lPOE9ddilao9mrMPhWczeBYx5Xm8JdDObpFdSI0UnkKASwVQwbLlkehKVnyHKTdEG
	 9Yuzwduyj02cSa3pSHQ5NddXBNTEbcWKgoIWRKIKGUDp97yIMi+pJ1D5y+RQ3ps7Qy
	 dYDAxJh5CvworQmtzdGSv6vICnG0pECP//8Wy2ngLw4menFr0hN6qBDKM02igynx7c
	 InOqjsHNy9cRZQesn62en5mA6k/d1uYGWD/OZkGQomRGCQjpZU9ZVhKy1MznDxm96e
	 JKKEXyjLeYNQzSTVQ4BMsLyJ1nD5JcBU9EnecpdXYh8eA3zrGq2QJW8YJcw8gPtaeL
	 ILQAQHYzCObaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C10CC5AE5A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172485455362.17215.13533202626543233055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e826e40a8a1674587f657b983c9c986880d675279b2a04a3fa2a3147604f573
Date: Wed, 28 Aug 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724854553
