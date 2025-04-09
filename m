Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3282905
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744157994; cv=none; b=TNIThwT7sSqC+LoHvg+bpeQN8WsgbfHN4b8ptUJO0ZDfSupiBvh2V6xxIdOmaVHDDIV7lZGG6+6YiCIJLJRZ9KiQpLWmtQOczO5b2EsyPjI7+14lQk5ekx4tzPxC5uIWHojrZEzWZiceDA85Dlx1Soqc/H8yV72tIyRakNrd4C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744157994; c=relaxed/simple;
	bh=47Q1iyjBfiRQnSQuf9VlVidd5m/TPeC0Y3yjMj/9z0Q=;
	h=To:Subject:From:Message-Id:Date; b=EckV3g5WFvTgNbmTU7oD5dhlBwADrj2m3qKaq/0AOi4fq3kOYrDxWCWKNUDJb1UJLOdA0o++wPyKasILwmV/iJt4GAda/QC5qnJtgaUmc2mhAHW0RVq96zWzG6nI79kMJTofHA0KyN+i1B/FLNLtWixnev0H08ouGybT8SwvIfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKtemXPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKtemXPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB8CC4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744157993;
	bh=47Q1iyjBfiRQnSQuf9VlVidd5m/TPeC0Y3yjMj/9z0Q=;
	h=To:Subject:From:Date:From;
	b=ZKtemXPZ0yM/m7Cus9znVB/GtWrCOQoCpICk/gqJdHZDLBL2yLhO3hXUsVUA+eW07
	 Uwp9Y7GdmQ/k+B/xbIm34H/bCygJhFVdzNL2LYfzCkhXnpM5oVCD1Xk0xvCp86EzCf
	 i4MVE8nQsfhUImGd7nfLKKY8EFmMvWPsOiqB7PFABhPuPZXZX7rYf+SrckDRh3xyNv
	 FROQTgcuDfTq0yN/Bn7tRu9aZh0Wrxd/DWSQzzA/Y2SVLe8iO1H56e9V5xbm9LoGSc
	 0KF0Rs1dNvCAsrqEqSJHr87krcdmPo4bPZQ5WWgrqBKfBECKh32D9SLGMRLMcYGUjv
	 zc+IxcS+xEQQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA1FC36010
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174415799363.15124.15057115029919172701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea78d1cec6c09da395a6d26a69964a1b2cb4569efe12942fbf7ab57d11e06a58
Date: Wed, 09 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744157993
