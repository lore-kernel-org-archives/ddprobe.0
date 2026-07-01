Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCFA3F44F5
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782901714; cv=none; b=Hl1F0XTZ5ExbyjUuOLYYYQfc/NZpOsYX/gtrm5z6UxmCIY/GWindAx2Q8ddTAeCoKUlgCzzslQObkZC9qaV3f9NxaQSIdrVR+ALqPb5+iDtWfSKFp3RJRlJrO8ULC/t+wIugU5wmqNIQGzUnYIonsO/g20VMacYeaHnJ2T3NHmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782901714; c=relaxed/simple;
	bh=m0/DZnzEL91fAKIemM7KhRdyF02O5aXKZNSwunp68/U=;
	h=To:Subject:From:Message-Id:Date; b=JOzcfApn5aDCp+qJbsYBDV7DnuYUmh1cPBw5EWER5UWAt/3qEjTgNZABuWnQEBNhvGRqpMxapZyUbADhGcNmyU6NpKru9pWx3JN6JYOz9GcwE7KRmBSzZXfDS06xLdD1VOpi3DNl1hJfCOcmIwIKkY6w85hU52WnQYCO7bbJVdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6lVD/WV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6lVD/WV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C331AC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782901713;
	bh=m0/DZnzEL91fAKIemM7KhRdyF02O5aXKZNSwunp68/U=;
	h=To:Subject:From:Date:From;
	b=R6lVD/WVpB8q33+h1EECPjHtoxVOsgxBjLmPq3S38TCrZIbU+Sq8nNNtl5oHT1vW6
	 0LeGvNhPUfC9PK66hN8ZNJqonGnhC/L/9YLOksKql/O9Vy+TVVE9ydnHTVmR0VNPMW
	 9PbCy0lPu5YIIJeWzPW5K3DEmkAB3KzVlbueEmXuY+6a3ch6ny18HYhqCDPiApa1cy
	 8R3XtoTlxAvQaNcSyOPKe7j07ei8M08veA8oAisjFEEWYpIR60YL0ElQ13Fpv61Nzt
	 T8RiPbBA+x2h0XZenMMuu9I+2z8IGW3+aq+u+X3UymTEeZx/8E8fJ1rkFs0Mi68Z1c
	 LffCFSezlbPcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC956C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178290171369.16164.12763325764049619028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cccd9d097c39ac0d8faadc388db3aea1d23d63a35df0fa31db396a8fe801176a
Date: Wed, 01 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782901713
