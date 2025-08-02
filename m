Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1532A78F4F
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754128195; cv=none; b=qY61N4h+q8brk7MqlJ9EpQ9B3bAInjV1bFBm7HhTsbBgiAu6efkqEHGXG7sGpPgkF8/5uFrtQQEsKdX5QSNBbV+GEw9tFkqffwHqgQdn71/+orzy/NrfTnJs2JsEsmyWCXI/dPpUROwg5/zvkdIVX48WLMpX6uM6ZdQm8wznyxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754128195; c=relaxed/simple;
	bh=1gu9Np1DfUBJ4gt3QadWE2/mS3ybdpC92/8g6zEDtv4=;
	h=To:Subject:From:Message-Id:Date; b=mde41nLiHM0Nv7YBUJNI9uT5VpKzDpUXk4Yt6+6+Ivtadb0Xypz8qaS81GoU5QtWBoKKAGnZHjaRTktal22MZJ8ZP1A5PUEydS1Da2M1bN/t3sN1t9g6XqpUQTlDQuEeN328sG67K5qbAfNx+BvgxkOXWWU0Db7OvCn+BLv/Dyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1bNY5uQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1bNY5uQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B14C4CEF6
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754128193;
	bh=1gu9Np1DfUBJ4gt3QadWE2/mS3ybdpC92/8g6zEDtv4=;
	h=To:Subject:From:Date:From;
	b=t1bNY5uQFF7dwZaJm1AmUGuyB8Vylu/kIturLh8/Wc143r9N6tVYU2XXSj8KHPUsq
	 URud4tfTykh3XMrIES+a4GncVstoHNqKkLniVx9+6Mh3wp1uoZYl2ab//hz9utKgkI
	 /m3uKZJRJ6BBLogNgT2pEWazBqXHxgiSegmq95AGG0dhbGfX/8bfmD889CXsC8A1D6
	 pmyZ90clfz5sF4pSWjkdxowjyQk52Inje+P+Rd4oj/z7dADX4Hd9IJQAJr8epSs1rY
	 2H6c4mOcZh8ZUUfD0Jrc50/hkLdvXXS4bfKeK9v4gelyRV1Fi3XNY5icSjX+uE+wRt
	 aj8UXxvFwtavg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BA9C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175412819357.15256.12105717622673281406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02841099f917c5bf4914df9c494e7147b5e4bed25967aacdedd0b2afeb487cf
Date: Sat, 02 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754128193
