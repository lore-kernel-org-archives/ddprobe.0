Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189343002D3
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761578394; cv=none; b=BsXL52qzOXGNJivGfT7VHi3dJPJaCJLxg2XvvlkSM/7+C2YJO2trPiOkuN3CmngrThIBn9r15Qytj3em4/l4gZKQzpzOXpTvIqE0sCg2k+YMBuuIoergcycAMfO/EePDudwaWS3JLdc4t69wjx1ySFxk2iRq+Haol4CQJ0MSoyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761578394; c=relaxed/simple;
	bh=JqNUCU2MlcqXJTFi//hRefNjwYDjPNmE2x08Dn69Oc8=;
	h=To:Subject:From:Message-Id:Date; b=jmPHTZ3LX6gUtONhB4MZ8oHzJwwIWusa+KCSBT+RsOPOlmvjD5ESrXeFx6GU8Q6ezTZ1akGK/3y8uLXnJyTmqSNiR/FPEYohLf1XbqFyPifNTJMNJsRUh8XQ0DGabIaXvXh0tkV5bwWJtgMK7oRJ4AHhYYG7tkdpMbBLuJ5H058=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtDRIuaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtDRIuaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6282C4CEFF
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761578393;
	bh=JqNUCU2MlcqXJTFi//hRefNjwYDjPNmE2x08Dn69Oc8=;
	h=To:Subject:From:Date:From;
	b=qtDRIuaFcqqP8jkYHCI66ytgE5tZxMhcRNJCLypu/2+OcRNC9jR12SP71kUES1qJI
	 SWlsvKR711gFTA+oprLDl4n/wD367y5oXln41L//rRqsLubvcjBF9LXs6q7lEcroh8
	 WpYucD75XLRFI/DhhpMJ4Yg5P4DNrld7vizAjMxG7PEJD8BwgV60V22sors1YeOvFL
	 620oloPjgTp5bTmJOFjNmV6Krh1mVfNycYtXqjJRSrTt8l6KHmdKo461cy/5RBpjdk
	 UdFiupnYMQ/8hfvXzMLjMTC63Kefr+0a4MtyQDRY0VkTqnh6pSCWRGgmy8N9IhL1P4
	 00XdK+nCyS/og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45C7CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176157839365.3634.14754384423010704110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c0f95d4425c13b5c5f74d919a767174f44540b7da680af6a672ff0b029b2594
Date: Mon, 27 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761578393
