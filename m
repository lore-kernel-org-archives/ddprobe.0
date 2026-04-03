Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28490226863
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775205934; cv=none; b=Lw3hqZkp83WS0RzjOTFmJPsmP2n3Ssmoywi8BdNrcEQW4Ic6OQq3kTad2FRyGLbstMWHlXnk3J5ogjYmMhWzGIRDkmt5eI8hC6eCtlhR5z3pIqrtjScs64b6HgJvOFJS3xMy9q6alkg2mpscsKlCTRH8xz7yt88Z22mkkLCMs54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775205934; c=relaxed/simple;
	bh=EibUIYrtc3LKhsCovyHeV50J0YuLfCCEw/Ih6u5Z/EI=;
	h=To:Subject:From:Message-Id:Date; b=mmiRt6qqJICz3Kju6NyBqFuDTzfUYeS2AAwl1T/qausn06xeZA0bbTiHed8FccCVyuW280PZXDg5Yi+juSIM5FvyFObBAC3x527rNGe/zrpNPSYwXsmDtufoPrVpahf/jTzrlGE9VuhuxlvatIlSiDLqaEyrQQBky4eOSPV8Y8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmMMe5dN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmMMe5dN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0D9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775205933;
	bh=EibUIYrtc3LKhsCovyHeV50J0YuLfCCEw/Ih6u5Z/EI=;
	h=To:Subject:From:Date:From;
	b=FmMMe5dNrVxFbGdPkHgtM1BH73bXKewzq8zkWQqeDV3SvKXJVjA8HLHJuUxmNBOM/
	 LQ9YsHsax5qbWwGriVvaujvL/D+BJw03+JL9Nlnn5lZNkvHLF5Qf7Kvd4ATbvy1BkF
	 mcAd21H6GlnoNlXNJA1Z2k4dh6+pfmY62HtrkyaD2DzEVSLsvi8lxPJh8oVsz/hv7D
	 oq5g5jI8Fw/w3YwEGOTJ47RC5B1ZUoxTfaIXKW6Wv0vAvbJkwx24Pr+aUhQOSY44F1
	 YK9EIHwptjqkcgg2duNtNlnhvAZiqyIN4mj57/efJikzFk2XIGm6buyGrydRPzoy6i
	 ZyfyAo+u4UXjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF92E7E348
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177520593369.31615.7814801636219765494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a450cb3ccd71b6f09d624299f8f497165697dfcd224b1e85ea1153396c6976
Date: Fri, 03 Apr 2026 08:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775205933
