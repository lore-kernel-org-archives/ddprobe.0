Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3019E25B69F
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746554994; cv=none; b=Z1E37hvpyxRDsUA0UQCAfxUtkkhcwb1YU8EIOzisnmaxT+gXB62FDPdbXV4Pj2SkYjD8dL4D5HCd1H0T7f5+N+clMxCPSM0pGmfTmd6A0C2LsGjLQYmKKoPbKrZeicF2ksvomKSJobtC1f4jvY1j2aUAG1u5amhjlNmU14G9kOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746554994; c=relaxed/simple;
	bh=6rhFxdMJOX9pjc0pBjOjHoJvU2B0Fm88Ti4DSnXh+UQ=;
	h=To:Subject:From:Message-Id:Date; b=N4nWCRITgIMryBBmumFgW7hWL+dKQs0tEzG0gBssx8fyPjwrFsN3oR5rdsXfUNE/swgEaBfdd8UnVvD+RlcJthulrWM7dFOyK/mW1c+r4q4D3tr4s+AkHdvYfsdn9KPUYotFLZ29Jslqy8pGWvCAueiUogLeAfwklWzRErpHNSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsWfSvgA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsWfSvgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F923C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746554993;
	bh=6rhFxdMJOX9pjc0pBjOjHoJvU2B0Fm88Ti4DSnXh+UQ=;
	h=To:Subject:From:Date:From;
	b=fsWfSvgAjMubNmA+cUPqKxcjTzYQY5u2gv4UweaeKbORmkMmcApg5IA9yPz2K/Cvx
	 Nz45Gdl87bFqMZLgquKXNwTRf94ZG78j2yAIoFitfFFNiVdI+LuQ1KF408vFvm8kdk
	 zueLtaj7CNa7tOHfnvMlgDKgrrDetW21WQrkRNnFwvxFbgh1H7wcr9u9ExJJG8emJu
	 WMp4L8k04BFncHDsff3KO74bfsva51wg3igpGYCEA4bulRI0RVU5ee2vjNK/QoQj5j
	 yLHOK27z+dpqbsoKXaAqR/DkvxBGFONwAN0/QR5l7m9G3FmSWVfS6YuC1s13O3bpf+
	 oPWPl520uEeDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2D2C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174655499357.7036.7821371228586332054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 025cae1f46c26235780eb21ad91a5fe8739dd14d3fa5c34181f40f9d162d266b
Date: Tue, 06 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746554993
