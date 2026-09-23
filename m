Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AFE3921F1
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790137834; cv=none; b=qssCcXR+szkQnahgEf9ciWILMQ8omlij/ZyGqg6zQmu87WmaCDnCGjXZM44bUp7D/occRQGJCVXVlnFJ+fxR/nKZvnVORrWfKXuz+yiqGqZC1SNzNsdVq2u3RSuzkx5URmywbr9iXvT1VoDYQaMYM9YtnBKc6kS9bgE6ZlBWyy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790137834; c=relaxed/simple;
	bh=XIn4tM6TJYV448bETXUmNPzSw8cK7bkxaWbe2qFGnKg=;
	h=To:Subject:From:Message-Id:Date; b=fw9VjzF+IT4rT7Z8/hjP4pHoVC12Lz+XZo2L0eNBnpjRPgaPmU8rEzTARrkAqeuScLSaHfROHZrsgC8WCXwZnByjyAH2m7+m5Hu1UvALFACkRJJNpLtPNn9dRlXyP4uqUQeOh81H7j4/MMt/AIwrZazqUQSTxrLeRrhO4NxPbWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YH6jeNts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YH6jeNts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC113C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790137833;
	bh=XIn4tM6TJYV448bETXUmNPzSw8cK7bkxaWbe2qFGnKg=;
	h=To:Subject:From:Date:From;
	b=YH6jeNtsoNDg/Hcwra6/v2aIS/hLRW9DWvq8vlh5fYUDoap2LsW3p5gqQimuVgmEu
	 BDPA7umj2EfCy3sgfrP0z+6NnlibPfGd94sVHFuUa4YPp5ksj0UaD+Bvie2SYwlPD8
	 Y2BGLWUjdOiucfsEMnzXh8npyaj1JD0jv5AviwGpEABMAVDfBQs0JzU23mc1yHcYT/
	 1qKO2BWyk4NW9QwaQhRd8smpY3YK9NKY725MqoZHpVGhbl58Vy8t2YEpCMOnApi2qB
	 uvDkVpPNf+DmQ0+XK+Ffsbhhi2jXhTt2EXte/Rkm2iG9v7EsC97XLdCaRoNJb4My7V
	 HwqBWzebZqABA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B69A6C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179013783373.16010.4763778614288094719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038f97716655d788bb9fa5141a0a3d5af94f1af5b55b8e492f4165aadd424f68
Date: Wed, 23 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790137833
