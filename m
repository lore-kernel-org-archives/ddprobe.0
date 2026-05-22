Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A43D8248B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779420754; cv=none; b=gesSJyPNz68w/AYnllFvFVnr+5z2e7kEKSmY/AgDrrPHv6Mj/qvB4PNuo+y1ZE9hY0JxHQFKUh86VQB2nyV8/V7GRfVrFrYyl1r2z9QF9546XhdNXR9wk1YEtY3Ec+lvlSF6iflRiclYaE39AMCH3hZrXMihr5Eb6o8RQdim3Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779420754; c=relaxed/simple;
	bh=T5rguUj8fRU4rELshXDirJyv8Iz2KrnrSgKpUhc9pM0=;
	h=To:Subject:From:Message-Id:Date; b=t8qig5bhkmIQv1yf0EV7HNP6Q29U68wKcSrEnLJh4p9r6iKalXgo2ct3d52u9gMXvK7YksRkZ/xgAqPaqVk+2GVWDG+jup2UIwD2CxHIgchcQxw08ZtFz92+i0T4hf/is2O8Lu4KLR2lbASP4nvbLFZMIgsHz5U7lTnFsVsZFPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBWMEE7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBWMEE7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0913C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779420753;
	bh=T5rguUj8fRU4rELshXDirJyv8Iz2KrnrSgKpUhc9pM0=;
	h=To:Subject:From:Date:From;
	b=QBWMEE7c6UYmAvktqEBHwCHKk9jUqVWupTSSCkbiJRpSW71LtbxeHgdksD8boeZH9
	 qoPI9jErXhBOEeoTziCHGxjxZ4OMJaeEdbbSHvfEenzJDLQMu+wqgo4vy/PksjhR5A
	 u8kdENrVLd9H6V6dFwdfaIeU9VVECAVNUQKqIlwtQpHZakbwMl2qUYH9slVdttwkTB
	 IS2mPfOsmbcWY020zuj/aFiMLNK8WY4bfa1Emh1Ysz1afTZXtW5om0Z+AYFq6aMaiG
	 Sv81EXNkdnshVWlNCgagytVhBqDdqeEdWzTDIkMR7PCJ06T6Q8mNOCyZVvaZ/mWl4G
	 mLBvJi5L+T+Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A855ECD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177942075368.7777.11231822930975101132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f8b925faf19b92f106c41796dec7221a54bc66e5cffda45b6fca77903582731
Date: Fri, 22 May 2026 03:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779420753
