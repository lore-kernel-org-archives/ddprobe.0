Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E904A0939
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790971834; cv=none; b=ewioiWgZJNAzOgJ4eX3EQe6O31aPS4FTBoG/vxkdPk7aeeB3/k5k+yqamfZ/h/mnBCPBSRbRWoNSpmEscaebWJNVYpuYDzy7fVE4lDNoDlwcSSe4Fqh/GtP51swWhGkVepZ6pYs2FJbdUkCrqRg3NaINoqEqZtGa4cVegrcYmUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790971834; c=relaxed/simple;
	bh=kPYTA3DsoyiTZ2WcHMkzUa96q+QLRhHCbQ5vDSA3IMQ=;
	h=To:Subject:From:Message-Id:Date; b=oFoWTN0dD5kX9nV3atjczAC635QB1bLi/5U47/dn2/DS6fY4zFQ2dgBdE89c3zSZwXY68UTALTmlia7tCvTwsbb8k6swzJFIdtD6c1xvfT2tvefFyOfIoae9mrChqS57olbrq9MZyObAMavDuettUgUw7waeREVzEOc84W2bFD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXX9sIF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXX9sIF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0C8C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790971833;
	bh=kPYTA3DsoyiTZ2WcHMkzUa96q+QLRhHCbQ5vDSA3IMQ=;
	h=To:Subject:From:Date:From;
	b=lXX9sIF4lFqQ/zIz26PHJynmsf7uYoFjwFMMln4hxZAq9OJ9KbPzZ4nFCjop+V6R1
	 RSABtnucarPxdZDaTRfyb/wQsTXL1xuQBWM73CbqGTIMDKSdltpGkzlEcokHcL28q8
	 MahXRcdBwojga/L/d4UN8AGjMzRMofLsreuwVAaZFC6EYKq9GLFcXYhFnQYElVf/kQ
	 A4DAqQpp9o3B5M9Vt2Gp3gYZn75a2MW07LZ/xbmj/aZ83GoWpMkSBCQYe61zFPlymv
	 6iNliAmfeTLKprMgebZw9USspjAVxp83nXw19CNw3G8wNX+uRdt8TulKKJUHReHWDx
	 r8dE5o+0e+buA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B84CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179097183372.729.4019345323625087803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e1eb5ce55110cbd6a608595e4eb9f8e77146e0e810271f165b78b8496c0e6b
Date: Fri, 02 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790971833
