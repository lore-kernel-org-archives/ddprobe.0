Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F67D2BE03C
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787869834; cv=none; b=LKHn9Je1HmCqWcpSaQaDdlFbsMHtxkoyFIWrpqEOXUK88Pr769O7iwA4J9G51XPuhSfs4tbrU7hfCpvS2jpS1A/YM5pm6ZdRtP7LWo7bx+whZO7sBYphF1IHX/97wOrSP809uKGutSeirsbgyrsCnAFcIOzl4q7SCd7B8uOPUhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787869834; c=relaxed/simple;
	bh=ik/WWg4jWKfT4t5nSjowZd21dxZToLEHZco4JIOZLRQ=;
	h=To:Subject:From:Message-Id:Date; b=jxZ3XRGVrzrFQvl0P1kMFcjLndO2KXyPnmsUmfnNGEcf9n/0SWTnaQiU3kmP5L5YqOd7fouXaD4F3ekuKRboAnQLI64Y4Cl8pOzUy0/jIYEff+TB5TBJ7vwNbv1kJcqTqz+R73kseWSQv4f5vECPu5UZa9Fv6IXorND265N3NMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnZEXznu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnZEXznu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD04AC2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787869833;
	bh=ik/WWg4jWKfT4t5nSjowZd21dxZToLEHZco4JIOZLRQ=;
	h=To:Subject:From:Date:From;
	b=EnZEXznuvpuYE9DxLcGh3pKYUwFO7NEGSlbIQGXC3vTxhEPF1MEOBiyPpwevdnHPV
	 iyC+5pTjMV38Ye+n2iFAjEsCOsYQMrvm2fvFy5bdeodbqWPJnHCM459B71pwlq51v/
	 5Uw0JVU7RC+MNNkQmGjaLM9pGbB9U+AOcXmY5nJ+iC62/EsxB7I/ln9UCViW3gYFbI
	 FKb6qAH6UYdN/DIMmWCvAICJdnnlceIMNK4HGzJ5GLKMDudyytV/Vye7uif7I1qqbR
	 ld0OLuhXCfIT62NL6/FjYC9gvrzIQeb7dMvrMfTeqqXnsENr+hkq8FoZjqmnSiuY16
	 rBRHmDN+rMCVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA042C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178786983368.647.1107852738989263992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbab7b72190229f4b97b9b9696a67b41e268477cc678bc892894518dba303aec
Date: Thu, 27 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787869833
