Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32718267B07
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745957994; cv=none; b=mCZ7r2t9x3rta9EYeUCxfKZ6EtYWnyec+taCTSx1i7vxRF1CyjW4YZWDnv/wDoSp/XTAI34dZ/TePtBLLKwqoZv4X9bPR8UypHoYC0plE06Xd2bJFm+H+qyfV7xPcUakE6OiTQapGkCCamdBaJuhFMTkjjaTrdiAl0g6Dw2En5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745957994; c=relaxed/simple;
	bh=eDTIMK1uSxBtzGWNSlumFiJQZWXqRzmkZJnUxJLI4zo=;
	h=To:Subject:From:Message-Id:Date; b=Q7yUePtPu/WuVsvEPFql7oGaAczyPN7QbDctCUpGJbVwILyyLmxr6Bmu+boTG1CtmhAbo4MLQv22//fFgL553G9mYzwUPoHjqWCksVJFT0tJJcxon8CHfddFBPSSUGthVJTYbNcOk392MpxnxZiyFGGSgukQ4I08wV1TCf6II58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ruQ6N54Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ruQ6N54Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DCCC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745957993;
	bh=eDTIMK1uSxBtzGWNSlumFiJQZWXqRzmkZJnUxJLI4zo=;
	h=To:Subject:From:Date:From;
	b=ruQ6N54ZpkGlq895j/tgVRGQXL3AJEzQ/oqyv2B5bXQwC3nqrtuU57UbbrWtv4Sw2
	 +ZQ+/IFHkbUAOo9SFNus8C8TXbUQ5xtjjmjPC7UOHf6aCFjHCNeEDhnJ4HT5XbOSu8
	 qVSu7s9QP9VMMbGUA5V+kRMlMiAivnL+4MIfayM13DQLjQa2tFnkL6gySj2Ur9o+AK
	 iZjlRed+DQp05fiMydrBGgHq04rpMGBeNFl5sgw0WLuWTTr8ASC3swUyIWc22ezA4s
	 PU1x6WUYmvNqvtFb7+sTChmDKAW0fiILBDh66vLwW+0+PISwlOapQ91p7L0uV7I2MX
	 QpR9bsTd+ncZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924B8C3ABA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174595799358.8182.4537721582960026269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bbca11b16df4d8824ec3275f56a75d7bc29d1dfa6c109b659824459b6ff57ab
Date: Tue, 29 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745957993
