Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0F325A2CF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750958394; cv=none; b=Ie3quWLkguUtlPcpzd65y421lp3Ol4opFfVPHlQ16XHJxxVnHD2y37z6G4dzPBQRUP7KVpeDzGwteUjAyx1GjBy8CVGlbj3gBE86pWqVffsBpHwmamaJ8SZVWxBpMd47pMqMnc02nRBbmSHGJteiVIFQPxmzyr13Eot3gKuvu70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750958394; c=relaxed/simple;
	bh=7Byzuoaqx5B7ckzGFHxzzBPwEONMlbfMaEzXbVHyL6A=;
	h=To:Subject:From:Message-Id:Date; b=bTgRgvVaeCr28M9Fhe3TbyUvYf/mO8M/xjqVKwzLvlZKEDlWP9WZihfHyut0ZNT3VSrtVdqAQzocYlXsxtzcWzCKOLYFTY/t1pSrWckEF1cqfweu7muKiFMHdSSLnZC+OexgWYtauorOxiESaenZATHGHmXpOeRnaGJKGGDhpx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOL0KpDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOL0KpDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AA5C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750958393;
	bh=7Byzuoaqx5B7ckzGFHxzzBPwEONMlbfMaEzXbVHyL6A=;
	h=To:Subject:From:Date:From;
	b=DOL0KpDljfKm98/ulOQCy09+wYJuMrG/s2vlBnzo+SoxRxjrLQUfNHBd0br3/NTsS
	 vShSPtg+NoVegTBayVIBr4qgRrz8pqusLX/O+y0Q/hX2SGKsVYBT0VR1bhOyL11Syd
	 ANKVZUdhTZUxCmMRRlrVI89OWD7yJ2mxD/yYyLdsyUa7ldade2LiyiR/Z9RZuPU7Pk
	 qQGxqMQNEiPWWx/S1Hsg0lwIZsxJygEameMx3ysyfS4GvxxafR9KheVl/qmMu2qP1r
	 n/wAv/yqBAp7v084sg+uw3nUUUveQo1aWEg30vtU+48OTVe/hxFSqhwV3jWcxYItne
	 RHqGOgQyINMRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92914C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175095839358.5690.3576267794753587768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c77f00f7ef3a068abb30ffec30f3fda1085bd8c55247c444ac1b87d49d1acfcd
Date: Thu, 26 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750958393
