Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B77301474
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772967894; cv=none; b=b1MJSCEYGZAlzew89iL9jQb+cABYJ12sQiCuD33O4A873q74GrdZSdaRd85pKaB8OBqtDjkAa1IpViq+HTsRy8SsvajYkF5jf8oBDlHPSYydBgwv1fOdDp286w0Ew+HoccPFuP23JNbCMECzbwBlYxQXsdvExCJLaWR8Ovg7XlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772967894; c=relaxed/simple;
	bh=0y/9JAWJN9kah/SdEEO09Uqesk0+ygyJN7TVFVKHY48=;
	h=To:Subject:From:Message-Id:Date; b=ppyWjjC1uVGTC6tGXsxW7zy0pz9jbmZU1Zpm051kso8x2cE/I2DWoeDYEpqk6ERRKoniq7Sx+zMwcBH//bGDiYk77KibW8lG5kBv46HsFqt+HcFxiiqLQn4vYdPZ8N88guh/1ixL95fOW5pUyKEwwIX11HYL5QV5AlosCXp6j24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geiszfUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geiszfUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18FBC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772967893;
	bh=0y/9JAWJN9kah/SdEEO09Uqesk0+ygyJN7TVFVKHY48=;
	h=To:Subject:From:Date:From;
	b=geiszfUwGDjLj7A6BlgyKcjeWsxI5Z05aK3Xazsl2h/mq0aEGyAJz2DvI1t6pdLjw
	 AuBEbAHPNXXPPerQ5oW3gmCdomJHzoQsM2qgFMEhGXrc7rCu1rCGO+wtHm3wfzs0n+
	 mGbgkURE9zmBVZdizOEOsmm/1Jqdpf/WVov+2fXpD+WKL8SZtwqaD4YS7zQO1UxfOY
	 4Gg49UBclLewQyjnyS4CIgJi+mZwnTie4Lpjf40b1Xr+uSVVh4hMzj2Ia6mLDUppvK
	 IEV1fF3MYrko66+VHDxS0YokWEPkNe902/kw16GAWqU0UBLR+27dPhwUapFpfDrntT
	 xHunoDBQHHqSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F157F5513C
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177296789357.18539.17600138138134569946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88a0445d39e3cb8f0f04ff1cb4bb622cd72e5cb2d1d86bcf4b723ee919d75fb
Date: Sun, 08 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772967893
