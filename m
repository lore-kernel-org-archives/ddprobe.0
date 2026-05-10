Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC802EF67A
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778404834; cv=none; b=vBWzQgKN+z5Gsv5wOtg7yTG/laz9VDnVYA5t0VLWzCF4FWDpuURKFoycK0xEipyfjPLL4nsAdNQhPrYWVmxLYvF6bstE/LCMEyjLM5rQmbbLkbE9t9Hooxt5zSkf7YIIpkTNE/jTHvTm/qD4Gzy8PlcD4I1Wp3nGN+IPiAsld7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778404834; c=relaxed/simple;
	bh=zOa0wOxmqscHRClGZb3v1DD6HonPU8Poz8QNWKb8wbY=;
	h=To:Subject:From:Message-Id:Date; b=W+2ca4gViVp+V3WY1QiOcV9oloGZOO419iWG8Ys3ex8rkHfGQ3kGPUrExRx+iczrm/YznrnmAfvKJvk4MZqIAc0rbTx9Evrf3ykKfl45ze+658MdMhCLZAQZHcgI9hQx7frizFxYM9L6tjaE8g2aoS86ZhzzW5S+4L3+GWi7GHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+Co6SWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+Co6SWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD2BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778404833;
	bh=zOa0wOxmqscHRClGZb3v1DD6HonPU8Poz8QNWKb8wbY=;
	h=To:Subject:From:Date:From;
	b=p+Co6SWfdkD6Ut3Ai+A7Mv/bRGkT0tUCeN5+Ge2T/ub+IV8V6yrR7eHCyqkZ8PrbN
	 sSJMlih0q0g711RidO06KC5VARHjkzFRsQ7sL2p0/103SdnSDryzb+rmXMj3TsA15k
	 OMMV9n3Gd9cXO+ZwCte7BMQ/gYjHPv19+L3Df5amST5z15cqlYXACIfwfz2CoWTFAl
	 SVQ1mrRb2a0CgYKaPtxhLoT2s7tEWKiL3KUWlrLyL6pSEd9UxIIkA4PkI8oCyRb5ay
	 nashHabc1ZivXPUnZZciUlbSFGSX79R25gXUyoyOT/0LARbgh+1XFgnfuQvbCMaZiK
	 V9tsOgQh4cpXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB69CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177840483369.4223.13544172552858397403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf89e4001dd65f9fc5ceac5cafe7b8d56baff0880d09723b4b1c8ed3d0d1521
Date: Sun, 10 May 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778404833
