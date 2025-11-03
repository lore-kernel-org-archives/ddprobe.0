Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8A81411DE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762156194; cv=none; b=kVbRJNPUuldxN+mQ7yc1LXywnvZaS13EF2am91hThl74TTg5DLm8OPXUgjygaR6AvowNHlObRW7k9gu3scgNbMqPEpyP8Iq1WvMbSyzzrDK/DNSVJScO0NFGD90XS12MmpOrOM70OIQhr+2lBN4aihaKU+h9L/MCYK0hSVlYtao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762156194; c=relaxed/simple;
	bh=ifLXvaCpA9yfwD0I2OG+YGrcay+dyedNrLXDWcaHNfo=;
	h=To:Subject:From:Message-Id:Date; b=DdnnZuy0gSoKx9MfQmSqqmPW81jolWlt8H0V2g50G4Ww+Ry0wedG3bOd6qkcVChiwFxb1rcpxsLuccAPgx2v35v7nG4rCGJVFG5Bu3HxCiMS5vBai3ZVnZ2I986ncZWY8gTApbSjyas6x0wMWASKNvMTazqWJLUseGi+AQ6305A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jY7Y/GNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jY7Y/GNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3720C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762156193;
	bh=ifLXvaCpA9yfwD0I2OG+YGrcay+dyedNrLXDWcaHNfo=;
	h=To:Subject:From:Date:From;
	b=jY7Y/GNe2yYRYLNkoL0x+q59PF/o4dSYK+6vGILnylEy1DwNXSfTskDCtxF7gxgW9
	 TPun2H8N8HlZLijhuoPFncAYCcnI2lw/1Pt0aQb0myok2Wa7DKf88NIaPdvtIDJYxq
	 6XYeoz12fwlXv7epLeR5LMbeePotTFgfrzOXWtYritg+vhiu/W41oG9xlBPTZrxNHe
	 dRtYW7Geul8RberzUvxYaayFILYcMT+/XXvd0bvFsMqxWLc9/9fM05fPvKLlyfZIg9
	 6LCll0NSwaMYcRl7KdS+AaWYQwgB5jm2WW/K99PryIOTvV+iP/f+0IbULuYb8fRUtv
	 2MbYVcEsWZDCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90241CCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176215619358.24419.4890281171711931285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3864347ada639e3f7493ce0be3ffce4ecc51268300b2c10e2b8a1d719d0410ae
Date: Mon, 03 Nov 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762156193
