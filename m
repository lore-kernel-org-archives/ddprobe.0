Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BB327A12B
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767716635; cv=none; b=hMe4nySUqjFEeAzRiYFtyuwc8TVKtG2xVppRe4G43lOpfkDMUmSSIkZ0OI4d3ZQM/h29KdOhak4sEzpmEdpFAMxL8zAZ9qcLrS1jV2F0xlu2p1jKXvOqSBgiZzj9i5AKAQRTQKM/HVDPqkFjkivRSe8ZWJUxMyFCjBt8A5qFi6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767716635; c=relaxed/simple;
	bh=QouCbDRe7w+yOGA8XGSg7As4fhDhWsQ4wELen8Jg1K8=;
	h=To:Subject:From:Message-Id:Date; b=rQc5YE26do0MNyiMv2eeaqo8a2Pg9axYdn8PZG5OSkc6I0gCWpFO8nwiB/qch4zK3ltnzpH9/D2bwmZhWJXyBHJle2nE8jxAZ2iPVMmLW9PjjbDVlxmv/4bAxwi2xZME4WnmrfOvPYzCj5m1mqW2w8tomSumnMiSsRh44HjN/So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulBp2SwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulBp2SwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37FEC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767716634;
	bh=QouCbDRe7w+yOGA8XGSg7As4fhDhWsQ4wELen8Jg1K8=;
	h=To:Subject:From:Date:From;
	b=ulBp2SwUmy9mZX8uckcUcq3DiinIoW1p2oz0ExlR2lCHlupLiD7uYuhEWdRt8MuFT
	 3y4ygZRlEpOHjuR2Tv3UsWhIMDPC+pCkre5LRew7nQXKRuIHLkVNjtoSpV9GKU3CSg
	 ar/dO0DCQnN9qZTfkKFgZdLQc3eGDjDuWWV5Z8TLVBuGPl0on3K1w6XTdyn9wtb/Ez
	 myRB9WvF60UHGFyZQzANKiVXQfp4ihsTpTsgf8TyFXteOoYMfStSfi9gj83YWZb6Uo
	 1Elf9kpNyjoTFJsGgkrrbVjTTK1EkFIhjhTcAMZFl0Ts1zXKFBT+qtsD/ZVhw+3IDT
	 khnvaWtksLgEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90725CE9D6F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176771663358.22494.11427042009700983114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a238ba3d8e80e3281ff8dc3674e2d9750cd4d1b321d5f20e1143f27ca0a9ef4
Date: Tue, 06 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767716633
