Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520F238E8CA
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783568314; cv=none; b=VpkcMceQdTdeuKFfRyMnXboTiAyzBfrOSflugm1lmdeqxeABSkZJhRUv81tNeO8T3pBYMjEqsRSBu/C9rE+uJQyGNjJS6exaC6k+LiVpyKiaYwYVvI3Z5CKy7cg89jrYdzawSmRorejCN2vVOBdtWjGpDdiVDD01f1KikOYiJEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783568314; c=relaxed/simple;
	bh=k1Ba/VqUUT3QaWHaAvFEmv5cEV1Hj3UE4qvYoKPIayw=;
	h=To:Subject:From:Message-Id:Date; b=DHP1LYZS2HH6JBcUD3Ds0W57jiLToASucxXxCL0CwbQ4ByKOOf6H6CMfMYY7Owpd8gu4D1solnbpo68H6+6fysiWgHWBcJiprwvU8X3VGprBlwPsW/JrwdbTJL9G1lrtsUTImTor0VdOfGFpaohnnUsSdxdZnPu/AMgSjmAkJPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8sMycCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8sMycCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3C9C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783568313;
	bh=k1Ba/VqUUT3QaWHaAvFEmv5cEV1Hj3UE4qvYoKPIayw=;
	h=To:Subject:From:Date:From;
	b=l8sMycCwV6KSqYlwoDPaD5wqTMuYQkWhVzU9Tx90x1cpENVg/Is/6PxQcszqUizW1
	 1cRlFhLnooCLtVIuLV7v6I4kHxuHtPjvkagyFACwPswqD8mVZrwgMKwfdH7+sFPEh5
	 bUdL5ZbzY55jrms5K5LBy69mBUM/Q9TaGoF8LOL7otw6Wr9JLwWc2br/hjzDGaO9YY
	 8YourU/tYZIcobYB0OQexH9qPf+1fzFUAWVASopZT6dezYQ6UEaxVmY0bbH1E8bBQl
	 69GR9tQYNvT/Tx+ZirpCXcRMYoKxT4qmb0nTjTsrBKVbcwSsGHCtI2BZ9DbxqFR/pq
	 9OE3CiwV30eUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E14C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178356831367.2850.16456061167504389372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e82ea35bda5416a53ca00096036d0c93c4c6ddca303c8be7bb14fca8a16be29
Date: Thu, 09 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783568313
