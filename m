Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF076DCE1
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753883394; cv=none; b=QrH6YDcJXf5y6ADIVULEX2R6Gl9U7suW0/YlI3earVDzAZMKhld9Q90tA8geamA6FtjAIORTSkDvdqO8vNVIbp3nMVDQWP3qP3GpG3+xgyDxfz2PRALLo1dZzl62bBnWusKJbpqjCAU+L7B0WrvdY6wHREjAt9q2YQSB9QQDnbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753883394; c=relaxed/simple;
	bh=Sw70ZDnV2st6LFx/zYU2Ig/nb+IqN6taG58xGal83HI=;
	h=To:Subject:From:Message-Id:Date; b=kVJs6I8+yXlEUAY/LOXh9vLuO70iT2htEhazeTD3UfdDTmwFQony6sA9qZmTcIMmCnFRsQFY5JmF683/fAoV0Ug0lEv3av6Na3mGw+hz08mqsogvBGj62mwtEpBIlcjk/a2OTI6tvZn7l0zgUAxKYmRVuiEWw9RJSsXtKSNRot4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENfJlR/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENfJlR/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A403BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753883393;
	bh=Sw70ZDnV2st6LFx/zYU2Ig/nb+IqN6taG58xGal83HI=;
	h=To:Subject:From:Date:From;
	b=ENfJlR/Kf3aJANyqPRlv+TOJBMh6V35HKTFxzeGSr5wR4qSlntLvlz0qCXbKPqr9H
	 Ea1DmuQdOPBhQNbv4gBi/W0oJ81kgE0CZGMdTzToU1wDsh3QKggqtpOcWFm7U8yRuf
	 WLOd7XBpTGFCgy0jK8/yeVDiyxCKZ7KyXOK52474vU2jMJgHhyJmL52bn+W7PN2Pfj
	 S/hnwp0kuVvGRfHNI2qQrN4fPktOhrXxtGNFo4TMY6aOvCecJhXFjr9d0rZJyhl+Zm
	 IeHUScWvOCyIewSX64H4PvoVDp/Z0ltzVWVKtPSQDi0+rEowTngSYjOYpuzlw9YX04
	 +tXni4KBdazMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DCBC83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175388339358.19374.7668874349034045240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ee0de266c1c3bf56a211b701846c344df72c92394952e82ec53897d96d5800
Date: Wed, 30 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753883393
