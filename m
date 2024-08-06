Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37418EADC
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722918354; cv=none; b=olUOerqQVpx1gkX6qIiKDTwmvo9xby7CN+J1RTfm+5r6yS26Zx++sK0GPzQ3paaz3ZprdY4/tlnzACEArK08PuduYOwx8SkuEKfw/F6jnbY7t6uFCpcmZHALWAm6r3h9MiuRn/W/AWN8W2Di4Ci+X2thGBE3X1ybrVLjIm6uuMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722918354; c=relaxed/simple;
	bh=j3Sm/95Z2Pfd+7Pj3Lf0sE9hdkiZt8mlZLgnVM1toL4=;
	h=To:Subject:From:Message-Id:Date; b=J3zEq+pZF6kTGhpcpcXdAuA0d4z4WwV3Bqp4kJRdAd5hOFSg5M4WC4rTMCWl4dm56oz3COU7axGZLpNtJMrbyuicK3oBarZJsh2xHMjEv79+sby44fzEafQKSO945soOyFOhdZNChDfJI1g4MzupwTm/Vv+VJC2KOBqm5BVSg1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r96SbRMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r96SbRMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37CFC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722918353;
	bh=j3Sm/95Z2Pfd+7Pj3Lf0sE9hdkiZt8mlZLgnVM1toL4=;
	h=To:Subject:From:Date:From;
	b=r96SbRMFlbMbXAE6MAJEMYFaJymcjcsJxRWGV60LHMWu8ZxALbyWiYbXYv7/AuEb2
	 5oTjSlJKDurHJ37P1v61GhdnVWRxHBjnAXXjeCMYOV3EjO5LQqHTnH4YhTuD+O9BW7
	 0elKs0jutyrAcxR5iP+g9ae+yPK6NCA/e7rBd7X/aGkK1b3rGqyX3nuPnaIOfUwi2T
	 AN4cpl2OaNtDmde4uXGNQWtXS1hBh9yA598G8AWf43avC3JX3OyFcQ5RDxhbtO7jnJ
	 UGfun8A8/hBQECQAn0r44DHa5PMQL7F/U0THFVYUIjXzmxhFXV2B12EFjpQ2iQLH+C
	 mdfBB7Zt8T7Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D8FC3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172291835358.3869.16534491891392653350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d00e88caadfe59db89ecd8e967385a22f0806becd6e11c317b3657031e8469
Date: Tue, 06 Aug 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722918353
