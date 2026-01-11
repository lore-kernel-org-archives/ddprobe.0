Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6540B352928
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768157635; cv=none; b=qtoKnSaqbZmaTgPUVBXyZNTdMxkdJ6tD497UEKlcV2XRVeZPdze6rETn9hI6DMTGZlcbD998ox+AQ/OtmyW8EUzP77jPQwgdv1qdlDLBLinnGmnxyrN/SngrkvMa5cY0hgBqPTsPt5S9f1ufzxoDeLzXOA7vYaNFCAUbmdpR9OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768157635; c=relaxed/simple;
	bh=GVnb1m4TEoKjyN2E4nBfjmTONc7LlbyLouUe+lhqBbU=;
	h=To:Subject:From:Message-Id:Date; b=TMKcTgJtx7vB1RKF7RYMmaV2ZECtdrsQsZwkA7XQuQhfLmEaaE+SPrgH970L/QfZiqtLwIgYISxZxontSsDxrQHjVXGhCrJoqN/CduIKXPWOoKqRZ1eOOAT5Mz/jIvyuVwd86j6ZVkrZ+2c6DtK+WYMBe8eNAaWDR2z364kZUCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIleB7Kv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIleB7Kv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2341C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768157633;
	bh=GVnb1m4TEoKjyN2E4nBfjmTONc7LlbyLouUe+lhqBbU=;
	h=To:Subject:From:Date:From;
	b=XIleB7KvQBi92SUtqgGKfy20O5GVfO3U4hkumEvj+OZLkC6mj3MS+q6hh7rzL5OdX
	 0xu37dUjytWTqxv4/r+10QAWN++hpSHRu2WbfIVI9J5QbIDied3+MSULyZY21UaWN3
	 CCN7omL2RLzf+aV0BKIka192/zgwWbarJnSNGawAB77jMtD/o3qmF2bVkxn4GitnDu
	 By9+m0Abi4EG8V02syaSDQA7ZBzByIJQoJgF3wYmXqRmIaxQzXmR7rsNfnIzqKZxuq
	 olg0oYezz8bMzeG6rrLQw+dLEd4YEUiNOvaMIfRX9yyM4h7J3jQZw5s5RC8QP4zmWm
	 GZIjUJBE6epWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90539D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176815763358.9799.745758622445102754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0497e459c50c9c246f1af437da152fd6dcdc40632ef20cce01c22db281d79d6
Date: Sun, 11 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768157633
