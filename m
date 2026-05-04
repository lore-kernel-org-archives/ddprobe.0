Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78941126BF7
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777856854; cv=none; b=ko3DFxmFZGwgZ0gji/P67hHRjIdU6TrmppB/GE7jzwitpm9HG+OuJfhUsKOaa4mGVDJYt05sZv/XdnonAu5FdOUaCvUbywTuWHGju/w+7/8zexZwvxnUO6padrGelfMPocTMy3DIATBOWelJ/DBHdER/lFIzKaXpM09SvUFfLDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777856854; c=relaxed/simple;
	bh=U9M26nwhM3FpojYpez+GwY26uZAloKJAK2QbMTZwFkI=;
	h=To:Subject:From:Message-Id:Date; b=UlI392/uhk4rx7Ns+d6W4f/GOgnr9iICuluTldmfVU84STr7VWvVR9kPv/BSjAIDOcsdkxhhC/tUv4Nt2Dy25GxQCwP0ILwQ90Vake9Gv8/x0EnWyDBZKw7FtmEgpFNi6e+DSpiJtsgO2QpU96q8dUdE8eC2X3y7O7zJ1gOF4ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ji9aV3vv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ji9aV3vv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DBCC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777856853;
	bh=U9M26nwhM3FpojYpez+GwY26uZAloKJAK2QbMTZwFkI=;
	h=To:Subject:From:Date:From;
	b=ji9aV3vvDO7nHT3OpgKjmT9hT4DyooGbGnbgitI81qKrOZ6I+2A4rkf5/yhb+y3Du
	 zeFqiKRU9K9+Q+H3olOlg/nBi3llP4LSJJ0Vs2ZFiV8DGuCNzgj0JD/94AOzCqzV9F
	 uG6F5gr28wXK+Ysyq9AwQuvnpLoANHuWt2OfOHB5QkjSFhKcGCpwA+b36M7voPTvwM
	 6ENQhp4HODSuOvF74SnFKHO445887xoZjXFshBxcOkWl+JA4xtDSx0pTVzIymCDaEj
	 JTkj8+fhnDI2Ct9gdrc0uvHOUlJubbJ7A4n/FeLit2wxXn5dY2aEWRheZWFKDJL9uS
	 eLGctXeaayVuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF960FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177785685368.29191.1398830934341220100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f01b2ae30f8d1238225c4febd6c64a9a38ba8aefe210e32e48520dd8929a08
Date: Mon, 04 May 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777856853
