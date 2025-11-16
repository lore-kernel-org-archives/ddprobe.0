Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EBF267B94
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763329914; cv=none; b=BqrGNNqJE/7QT5Mvu5exEDIAh2CEEPfPcz+CB7XGNDA2OaBAMIuUYigWIq+pV8oT/1OhKp9mjezZRRGaC1oUfYoEMCiEI8VBn2vcsosDS6UcXGgU3rLYBQrvOzzJ3sw0jlo7agxG1HkOtpbeO9V5IeJN2qbp7ue3iyOmu2yaR/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763329914; c=relaxed/simple;
	bh=MosPdT/T/T07XvnySmuqoTthqtEYp1J2bswQJfOR1ks=;
	h=To:Subject:From:Message-Id:Date; b=B0QJS4fH3IeyEfE33leE2FTaWxBZ6afF0X5VU6NwblMocpgx+i2gKqvj3lOnjl/+YIUCfZ7opda2dHXqdFaqeHZNv3fHqGnqAle//FeCEPgeXHHMBlgBdOZyGQCf+9G+r3UNyIZU8qMYEvO66XHWUwF/WEG8SLIxUCfTV65y9Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbi0u63y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbi0u63y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BEAC19421
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763329913;
	bh=MosPdT/T/T07XvnySmuqoTthqtEYp1J2bswQJfOR1ks=;
	h=To:Subject:From:Date:From;
	b=kbi0u63y0DS3IUW0rpSNyLz72dJsFqxhRaalGCOMtFj6oqTMe4cuFOs3MDhw4sB4X
	 EJLMFkehUmm0Y/C5BW2R+QudGZWPeBnSJmpe2WnLvPCV9ZWcSHGMGRn219+sX+911j
	 iNxViYbuWffMkviQigfRH4s7564i706tUfYgByKaigPmKz8tnLqzWek47gG5YC05Zw
	 /VoF27wJCpvEnkBTjVaFZnDV9ANu1Lh9+j6vtWGz2I0SIlDuCRqsiSOq12G1GR7lxG
	 h5vuCBFWquIMMMh4UtuwTd7eos80e3Wx2aky9WoElgqYuN7KvS7OdFRiePkKfUk6OM
	 KvcQ1fu3gQToA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90186CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176332991358.18874.10778570364058616688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3caef57985ea16622b0437270c84f2745668b7f5bec965515a43d430021a573
Date: Sun, 16 Nov 2025 21:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763329913
