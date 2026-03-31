Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2016B188CC9
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774927494; cv=none; b=nTsLU17wOyiJN2rAgdq7SeCxqEh6FxksyyblTRX7fPM4JEK9lo1Fd1b80dCZ53NpUOY5kZ6eTJI2qXKEboUfhtmfgR/Xh/Lf8192Jhl0D1QXRR39ncatkWMzzbq1V+lutX3Vy+Q/eZMtFQR/6hYltlC9cwwQ8IGPAhEfScuhSW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774927494; c=relaxed/simple;
	bh=bwe+l/qWHYxp7eIWpVA8n1hxUpmCvF0A3np16X8w6nQ=;
	h=To:Subject:From:Message-Id:Date; b=CqPn5cACsm/7CZZuRyRF0lOXIFScd2a4WYFEwr6NQRI7HgrMtFfG5K7VurKh8stEeS1CI3xq7032Dajx986prTTTV8G7+QgzsuIJw2w0ifrFgK2VUlzlZg/MUapJjUf6GlMU95qjj0xO0TsNI/VJBXEDPSTmHKDdDUsJst+2kI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RB/Ob/8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RB/Ob/8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4197C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774927493;
	bh=bwe+l/qWHYxp7eIWpVA8n1hxUpmCvF0A3np16X8w6nQ=;
	h=To:Subject:From:Date:From;
	b=RB/Ob/8tSyX5eXx56E11bDrfPSK6y12Kbmfz+gmb/zgygiXjINxQJGkRJGrUVtPp7
	 3FNsxwqC0S+bD58Ror9Y4uhLfNctIm1JY5nRLcyN68q49MZ5UlRn3bFXnYcfNi0wfV
	 MebDFbmeFJ03VA4sehCWDdpAOOIRwGsZozQVuPCLehG/EQ+lfwju0Zje9p1j2R7k5X
	 1JVLvaqktsqF8XsaEiiqKTE5DLx7sLFGjK7O4bHA7OwNsP4AGyvk/GZBpWW7EiGj81
	 AiE98XFkOm+oPFNQ3a3Ps7Xcmo99PhupuBQp2K6FLaCC0in3NbTDTpxeTSoaiI0VkZ
	 vVexb7+yI8wwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900F71061B21
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177492749358.29299.11448142504846703370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e01e2bb2a4e0706a7e7f6b2f408cdbe9bf118ce43557f724cb2d508e30e53b60
Date: Tue, 31 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774927493
