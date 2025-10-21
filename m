Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9AD2EA17D
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761043194; cv=none; b=XBoiyZkhzuT/+GXAEj6ZPmG1EVl4TqsswsZVQEDLk1yWCRmKlOt5mup4tNxAqNnBWTq2osCJnIh2SCokc0rnZ21SNiiaiDPD5SmiPKWFgF/pOY9TDLIDVpHcJ7wkZQ3ieYpHADR0wHiSMhXgjpn6K0eohr9vcdww3h/8lb0mm6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761043194; c=relaxed/simple;
	bh=92JPv9c5AsKLGm/BxU6g1Bmmbv6b1k66riM59gHm3TU=;
	h=To:Subject:From:Message-Id:Date; b=doEKCkTESP0I1pJi6k9t/BS6IMHy8TDypmaL5pW12gNpHKRxFX3C4U7D/ZoTfoFChzciqqlywcXSRtDNfKWT3Xoe9e17KFbYCufBJIWLziLa50THfpqT06D4eesDP13r5/CEwmyxjzVeMcdS+ME4isae38+GPTGvX0SQmU9e1cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgINvH05; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgINvH05"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F32DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761043193;
	bh=92JPv9c5AsKLGm/BxU6g1Bmmbv6b1k66riM59gHm3TU=;
	h=To:Subject:From:Date:From;
	b=JgINvH05vdjxaZpVCb0nYLjJBZQLSHnhNmOYnGmOrfxYf4O/DfasrHoliYx5l1Awf
	 o4o1iOWMN6iSAz8tbYSFdvcwT8a+uX8IdyAdJP3HvTEVgHtYU02iyr1hjHU9XdjaO8
	 frwfBX8Z8J3ocZNzOmVsAMJWo2u9egF32ki10WhoDBFTpDURa06P4djRJFLuwff5uU
	 LodQ04FPfn79ydp5Dm86EohBCvil1IvGVFr6dVkVrprzXuKmWiY2jKeE415LYePdYe
	 PGuB7Ab7LzCpN4UQ1AjTq5q4UyJ/reJmI+lFuSayLRayMDMy/bkDi7T9UCjwfPJT36
	 zXuk9s9mn3Z3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90544CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176104319358.18328.3841807418035420858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5be2dd22be160bb6d58bc62113868bb36b01f375971c8fc8194a37e47cf9c1
Date: Tue, 21 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761043193
