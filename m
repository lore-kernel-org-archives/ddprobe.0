Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3415C1A01C6
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771185294; cv=none; b=OzqJGL754VsOlhPAe6diynubbkwOssi1esA/9j0nMuKw2cNk1/gPpUTlL00ZytjQkNUhUdSDYLsJnnbohD0vP1Qo6y54CB2scRUGvORtyITKlN9heTSBMSVBBrFVM66eMyslUVMlP6nnA1HyJyjygzzYguOI9xOR0qsl7oqIYbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771185294; c=relaxed/simple;
	bh=1AVTG8uvJPZTLqMmAiF7CDXKaWzqspT8Ipkch269WpE=;
	h=To:Subject:From:Message-Id:Date; b=EMFRv9t2ZyPf2LY+OLCFLHOE2cIJm+DwyRNsDe/PKke2Pujw4wanpxcR6+mb9nEFwDW8iBEXr2co1y0UX3p61OaRf+EuUustbtGHog4z8mIuGCTkiso/PAuP9lk0qKw//V+Gn8Pkuv5MkyXjPs5GVLIgHEmsUTHXPgSVDn0bQbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQkTozOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQkTozOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2FAC19425
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771185293;
	bh=1AVTG8uvJPZTLqMmAiF7CDXKaWzqspT8Ipkch269WpE=;
	h=To:Subject:From:Date:From;
	b=sQkTozOg8xKgQBq7t8UbKf6sR0UZpns17s1AUCYmr+CFSRPjpjRxlKpcvptdNLMfG
	 CB8BnBCYBE3M4DVDtl1gNuKXKx865eOQwyz0etdGgkS+XucIDa814S4Dc19qj4KHlc
	 qIShJAmNO376lq9c1wQfubtfQAmyOd0BDxAEOx0JJ8uZ5C04sY7R4FQNn2a5cUP0Nv
	 hRsx9VO4193Tqa5DMtLp1L+d7swTM3Kl1N0uCjFYCFDBNepHeMk8N97jQxUVrB2ynU
	 rYnUtFE83lGprhAHETrMD0fBTMsWGWWfZ/cZOFYftX20JfOSd9lu/gHvQXGmvq4SW5
	 FII4IJsSXJ74g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2523E63F06
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177118529361.6221.3372868799639909516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f236847b9ce542945ef738b44cf4096700b8d2abb8f36a0fb76ade23acc274
Date: Sun, 15 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771185293
