Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163763B95E2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768989834; cv=none; b=RpXlyEa5Ngz1EiF3c59GekumamRXwkyZOV+rJZKPWHxr8Hwzx5pOBIPRD5CMD1Qd3lFNk6aIwTTOsQ7EBFei/IvTZY6bHPFg2bYVdioP1AP3qzqIWc47zak2Nkcf5jcNwH5vt9AyazbstS9bUlR8p3u6GxUcKMjx1Nmy04i5RWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768989834; c=relaxed/simple;
	bh=vlH9mUjTyJr9U0NGYbefXAtV/XHZivYlzf5rNq874Hs=;
	h=To:Subject:From:Message-Id:Date; b=QMh4zVVIMJhvRTQ538boAWiYpnyTAayaSJx3JHDg6vL4Idebr0k5jnQamjYWdF+C2H7QRY22zIT+5/L3mAr5zmuQV1yU4zK4qgQ8NXjFLs7ITR85PeOtQWaWdehCng48dUZuKkqouj1JR4yIdH0P96vSAxvyoZy6buQgZ6bQrB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRtHqUeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRtHqUeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A015AC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768989833;
	bh=vlH9mUjTyJr9U0NGYbefXAtV/XHZivYlzf5rNq874Hs=;
	h=To:Subject:From:Date:From;
	b=jRtHqUeXtsb5Db+8gTCHtH9odi7RTVvwyspCr2akW3zlIw0fKrnEvjzuMcmn6vAGD
	 DXqcH170BwchjFIxed2/F+cTGzOT+aJTrD7Hf9DtIWNh1ftiVHsLSv+SqlC627j6NE
	 nfgma4kGPUo/PZXp4qocf8egFRKZTFl3I1BsPZx7aEBdzTjUUJNqFzvDMki5RKduWh
	 onF2cKtxU4M2MWfZyKikq2jb1qi758l+aL2Mrw8EDkupoDp+/fE2z5VeVhhEVOb9fc
	 Xd4rTyn5c/qizx5vJ20VrLIGNd2UZnFMm2Qb7tx/sGu0tLDlp+PH1h0wM0m6RR02H9
	 HQkcG8n+zJo+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B27C44502
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176898983358.16505.7065827790131728159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578154e0cba8a5accb6ceee1d4f3415dce051ceeaed3b3c6b8dda5bbf7981cb1
Date: Wed, 21 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768989833
