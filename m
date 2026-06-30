Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0C0395AFE
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782799114; cv=none; b=mlCQUMvu4TwOGBkJT3gtqkRNizi/lzTGnCW7L1BwgrY258kDN//8Q4k2JGwfEm3PBZdFOG05XLUW2iOS6A74hotJyKaQR0cyz2Rb1hS8gkwGGWPKQTid8Uk29kAIYTtgIGkfktyiltK55vpxqp1ul/uKSqR9vDAMjp8HQWzf3AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782799114; c=relaxed/simple;
	bh=+I+CB15AgMrcShJqpBdKvB7FY3FrOCwVF1P1D4qYlgs=;
	h=To:Subject:From:Message-Id:Date; b=tbmJjaB7/PJ509c19FQAlLjumK45R+jESwQnkr9gsFtGnJpCrUKIhJTixtsxTyaGD9KGbHSvBkTjnOQdal6TqkHE8ECXv3vHJIZPMjuf4mHobpptymmVJ2OL7oGXDXXbEFr8NhDGcQQf9t5GjOhCfimeWZ9G/ioGi3nhsYoPHxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch56N9OX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch56N9OX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0450C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782799113;
	bh=+I+CB15AgMrcShJqpBdKvB7FY3FrOCwVF1P1D4qYlgs=;
	h=To:Subject:From:Date:From;
	b=ch56N9OXnUQBHl/K/HO2v7DH+GJPSU05Ut6mrB88UM7yKja35W0LEH2r33+sP6WLH
	 ID+ZFwTanzxSQzkX6mdyEan71IOkpW463fBiKpwYActIXu2DTLzDQpLekbve7GAgG4
	 D6eoUsM1E+t3LFtt/9Y6dQRNgYETrcCXLfSWVo/1+kDK8wNPp6LuV2CSl4BPpkNFQ8
	 6qZVYZEpWNgAbMtkFJVQtI2AcuZ2hb5J1SPOlg9+jgltyjO+brri/5H4hVdaf83AVm
	 10WhMT+SbdU6ExVQiWnt7Rzz+4Hwkegee9lDa+F93zcID4cGF+SNCXGBKfDzhWR9go
	 WoEiVKGgrl47A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C1EC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178279911368.29396.8500220181028741704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69a4021297bc02727cdbab8c2bc0c3f650f0d099bfc6c029079769907f0a8de9
Date: Tue, 30 Jun 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782799113
