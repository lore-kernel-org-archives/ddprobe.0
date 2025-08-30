Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084621DED77
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756521594; cv=none; b=UHvloqSBbezrfW/SGoQulN+Gmji87czMQAnPNEyoGh2dGGa8qEw4AtCGlNkfAg2+N8jV6iWncgXLRPSC0tBI0F8dGL+9Q3GygHQ9GkkkuzAE+qizVd6zZOCAh2pI1YIhH2/N9Zs9pfVOq8Qg+F90JyGuDea0YLkB6+DExF/gemI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756521594; c=relaxed/simple;
	bh=cF5SSxkzKGdwkR/H7hdtBQ4djicvMqF1UlmghzBDaRU=;
	h=To:Subject:From:Message-Id:Date; b=uAXhN2Nz1kK4svWs+3RR+8caOwagRbq0cc2BwL2C7cucD1PYtRtV+0RvtrJ10OztUEVX3ZxiJ3dhK1cVIsAb2lNBJIqVKAFn2KFPOkANFYkXcmuhgfnFrg2GtV+oJtny364//bFm9yB9fAJS60So0uLrmD/qaCS1BhemV9pFPLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+rPfoFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+rPfoFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFFFC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756521593;
	bh=cF5SSxkzKGdwkR/H7hdtBQ4djicvMqF1UlmghzBDaRU=;
	h=To:Subject:From:Date:From;
	b=n+rPfoFXY8B4oKLKWeA0Iujb7lDtn+c29OG8vaCwjg5fMEz05n1R6t/smXwhbE2+k
	 YoEj9ktMrmaw6Ivs4DXw6TSdedct+BupK0TwKQg0wg7sFQwrBg3Prrx99yfgDfHUaw
	 svGkxWOeePJFnAtwfo8ONu6HzEoGJ8XDEPVXw0BfH9ZCHMEam9cZ4PRo/P3p7m+eZe
	 oHEnD2Gdt5cgcp3fsPhbuvP89G/4B3ISM3t3x/hziTTXieK39LAFCsjCAa2sZd/pT8
	 Zy3WKxCOQ26lpFxvsaLVXShE1+QuhpiNcyjmK1YJtGxF4QSfDPQB9SvU+12RR+yN4P
	 8H7gP4S0x3kmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4E2CA0FF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175652159357.32001.3436758727256120940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7244bdc17e4baa7d178e8cd9e7f7216a935d09d693d3a72fd0bbbc03a4c05fbc
Date: Sat, 30 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756521593
