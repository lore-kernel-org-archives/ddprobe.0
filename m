Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70FA76FB0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 14:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719151343; cv=none; b=EkQXLsNgExklxn4hYaPUO4iwf9VNIXVup6uaTFn2g1Y5jzf7h7d4Y3n4KKuV+B8064gMrDn1t634PF/IFQzsTZj0EnSCrUnhfnoL/72NUwrcs1fHJ33zgGPaldlkWhHU/Fo3QxxZjTuJkItHzt3bDSDZFW+SWRrJhSQSDNgBibU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719151343; c=relaxed/simple;
	bh=PTJOiR4Ea4YLfTawyglve5NUSO2SFf7sYpyvEz0fpzQ=;
	h=To:Subject:From:Message-Id:Date; b=CX/HnwKhGCZhiCusw9k5WiJPE2dqrnR0AHVt834+XnZtn/90gESxkZlp4fuCNHZNAvUjerlWy8u5tG1kv4l39cgpBYN1o66PJEh75QZd4BU7sDqsEav4uEBCUUYd7ZVRs3che8uV8Y7a6b66zy9DYAFvlce8Z4oa1byiN4Ce9eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SP8ra3gI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SP8ra3gI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CD7C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 14:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719151342;
	bh=PTJOiR4Ea4YLfTawyglve5NUSO2SFf7sYpyvEz0fpzQ=;
	h=To:Subject:From:Date:From;
	b=SP8ra3gI/O3XXieuF5lmusce4Ura7P+kth9c15+5+HWl77vr831/UKTwjgvz/UoDg
	 0j6oWmBExY5p/fon4G5YYqJcK9MmIYd7vja/nnu32XntuhD++hym3MIK5VT9rbvXBl
	 258ntCfa4JCQhrbZmz+hBgI52w7lr5Rtn6NbJ/DnlBKtyP3GOB0FvGwxZIhZvRAf6i
	 OAqv83w9oj/6pXXq9o7OF8ZLIwBGyFjOzN24L4ajh4ktZzJW+AG+ufxAevF5dXBlh9
	 wFh/COBM2U6ps2BBL7I1pCNzV84EOfmU11q3XbpzgAMNs163Ru3YWk5lnaoDhfAm3u
	 dtCCvAqOn3zGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C961AC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 14:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171915134280.4875.5600351214895361036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0b176ac9c0351c55b42bdfc4f1d4a8a8117d05d2a915b4d395937263bce97f
Date: Sun, 23 Jun 2024 14:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719151342
