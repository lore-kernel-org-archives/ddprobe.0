Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156C922FDFF
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755040794; cv=none; b=rUHu3x6Dv98gB/F3LYXmVhGfHwl4KS+8J4wYhr82STnLPEONCUsiySjAgv9myrkNT745MDbUXAswS7ciENTjKH0Iegh1bwL5GZxFc1R0nZybQeRN8+dHL/MReQQ1kzbZmLl000ohxNfZUsAGlrFBapTK6l+o36yQym1dec8oxx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755040794; c=relaxed/simple;
	bh=H7T/y0Ccy3GKjFLLu0Hu/JLQ2wjuX3stJE6Tb2vi0Xk=;
	h=To:Subject:From:Message-Id:Date; b=PUnywnV7l0i+Jl0wcilBZlm/mhLFSJbmYrIz26LoI3A+z3bF6S10WPxVDV2yavjBYejWzxbcYo9xhlwLzChmMG1os21ApHRoxv2n6zFT/byE1vimqDUuWLcOpbwg6o8GzpvdmVp7T0Aq89yEGMsFFD0qu55zEJzEzjQXRidhWlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0GvHgtn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0GvHgtn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AABC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755040793;
	bh=H7T/y0Ccy3GKjFLLu0Hu/JLQ2wjuX3stJE6Tb2vi0Xk=;
	h=To:Subject:From:Date:From;
	b=b0GvHgtnGgFjy4jJmm1T5FlSsEWvW8z7UtdDM7z53swZxN6mSez0N7Gy8G9Up4/lY
	 xxh76VNZXK9fjDpzECa9W0siUuXzoAFwPVxe0aO1rsSFRK1aCvJpyMuRyK3qTXBcpc
	 Rmg/7PAa43Z25Tnngl2uwyVPnHPU4JZRP2Z7UU/QysuA/aH8t/SH72VTIbLMZYTzmf
	 evLcdvuj2CnFBE3iw3SMxYpuk7WKKLZCCq41rYeBs3u1gFXiM38RVw7E+NqihQmV2+
	 JxC/OrEdwg0NcSO+oERBBMjf9kbup0/2OY7+nlfzJt63W3SilzVBMovo5wgOaJxvHp
	 oC0VjmVcSC67g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DFECA0EDC
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175504079357.21643.4189773198539462815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f4c87c8cc29d323ff33c0d7dadc1e8a57e24550e03ff44444ee61a6fbc3220
Date: Tue, 12 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755040793
