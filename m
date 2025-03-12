Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287B11C5D7A
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 16:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741798736; cv=none; b=jr1ec623iQHQ7XsF+qfK4hyqKuvmMj/myEWsFuO0zDBPZHNyNKa/aECXkkUO3/UWqBW0bidQJml1ecUxDevi23MYkU+MU4LXnAid+8d/GpCnW0DCnQ6S/5YPt+8irlvAp1EIfemSsGWlmY8bUJTIdm0EDa6xMN7NJAD/XDY/2Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741798736; c=relaxed/simple;
	bh=0ky9hzDYRt7oLxc78vd0OJYStfyXWGMV/sNxPJkzs9c=;
	h=To:Subject:From:Message-Id:Date; b=RykmBDmNDfTa+lf+3YKUtULqHZkWpqGl5Ngo0pGu3rK23bEsJsLSTq4K/ley0qNF6RiaV1vu4ROyf7mt3hzid/TSI26JgIf5NN6JNsP3/nLeP55hOHvQCLRXu6tWAIbzcHe3URLRl/SEsVrkSJUlgvy3Pnn06PH5SOcHoeZD1ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CklZy1pw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CklZy1pw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ED7C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 16:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741798733;
	bh=0ky9hzDYRt7oLxc78vd0OJYStfyXWGMV/sNxPJkzs9c=;
	h=To:Subject:From:Date:From;
	b=CklZy1pwBmJXJkYZxHqvmNQLyzFzHDFrnJar7RP/FYuiCGvNQYDSQW8AbatqKMT0W
	 VetjqjYgmwHPKIJN77SOZAURE9q/YFrtGSqMvIAsKrwpbvXwqhVtsd7/yo1B2h7jPu
	 W69S4MfXD7Q7kRfqhd5nDBZsbfpVrCvRYoaWHEm1424WTp2MDP5EaKm2fJH0Zn0UZm
	 Eb3rJpBx4dXKAQpbRPPzqMsCriyMypdPDyoXdGQDQxlJegHz1s3kr1ZBVhrU37/4rn
	 NAFbSO95IDJBplGOmNJ937/noo0VCYyMJQGOUI+8Sp35DSZLnpAX4nsh+owgpxYIQB
	 vyISCwarZeZ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93898C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 16:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174179873359.20271.115967100935449582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d771de96d84808cf709b79681cea2714528f48b1a87e1e8513be6ea2e88402e
Date: Wed, 12 Mar 2025 16:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741798733
