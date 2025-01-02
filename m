Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C31418FDC8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735797354; cv=none; b=a+5dqfcyETprzhN6PQLMAtLTB7idWrWjGW27BxVl1AdFXccy/pFCec1KqjsHROuXEm643GEBroYUs1cF97EiNaC9R3c3w1AzjFq75OLJH3gKDRbIfweb8djfSKyJYq+TwLlR5ptt9xQ78QNP3c2HybX5r7MISWIllJsJfS/0pmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735797354; c=relaxed/simple;
	bh=sAJ4qGPS9nF3/a1YacDfpwisHZf1yBM9kO2seg8/tvM=;
	h=To:Subject:From:Message-Id:Date; b=UMAeuv6+jPgMk/F1nNQFcUEMA2U+MBoE1gvIG+D3d684pOgMDqOAQjqTMfvyh7sYIbYbrY8cNiDc1tVzxvzL/XMBcwBNBiid7fB48u6TSEme6sNYv5lEdrKkrmzb3RTYajqVp2wb9EiZcz8F1QVtgEDCeA4Bk0O1y/Ypp5b/HT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyFnl15F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyFnl15F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56F4C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735797353;
	bh=sAJ4qGPS9nF3/a1YacDfpwisHZf1yBM9kO2seg8/tvM=;
	h=To:Subject:From:Date:From;
	b=NyFnl15F1cHCz1OaTm0X/dpBV7tX0KceNkh0uxAeBXd7XS73qUT1aNRSF117URTDz
	 EjFs9un+/lyUCShKytl+hsnC+8mrpPin+LTxe/G/c6NdxwuBEp+sBxrIIjuWUPxsJB
	 HIEObj+aS5/PHlQa9tYXBksW0JvHLpN/GrHUOCJBYLH5uzDvVJ2EhbBKJiUQ6OKiD3
	 uazEysb3ngQRY1e8yKkcPCtBj5d5wYxmUTHn7RrhJFQOQOdERKvdbCKFRkWQOmwjoX
	 3wS4tMSwqu7MaX/8Vuvwy4t0Oy9q4A2z8qVyx+0pKpRYuOtp+sAenOZ/KKRvlaHcXG
	 5xO/+jSgVNHLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D890E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173579735360.12674.5949132891909401041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e4b4b39fdeb6b6ead0427c9e38783b2ed35d186389cad7221291f7d6aa94760
Date: Thu, 02 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735797353
