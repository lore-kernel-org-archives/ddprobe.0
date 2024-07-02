Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B581586D5
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719963323; cv=none; b=GAoyFOgkKiYX+oQyt7lh0BdJ8BDHDkrY5hKojXdn8x9fEk2dO+Lq20ReZbOY2rdOhdv8Y7Of12R4H/lIgyArq9Jy/zGlEPNAwJB1mvrbBIaf0SMH+dMEKooLeIU/IZ/VsNa7A5bry1kNFUt/GUYvaL7cEP8YpleSuR7Db1OcoI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719963323; c=relaxed/simple;
	bh=1pRpVEWdmEOlNFBa3Evw/pfDAbf9GVbkLjph3+8ygzU=;
	h=To:Subject:From:Message-Id:Date; b=eNUI00HZXixUtYjANgcrPHISxs1j8zNFjWzyKZLshMdRZO691WMYxivFc17XEmHKxc6f3U5kKdVe+mzKtbk4IyxpvKZozD3eX5HWPrdy+L+ywFnbTEvsedbkWc4fl2Bps74sCUhZnl0kraVv7SyNp+L4J4T1l0dSRQ62W6TZLHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDRLX9r9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDRLX9r9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACC8C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719963322;
	bh=1pRpVEWdmEOlNFBa3Evw/pfDAbf9GVbkLjph3+8ygzU=;
	h=To:Subject:From:Date:From;
	b=lDRLX9r99QQPjH2N3gvHPdHAcHhZtLWILjrnDaGRm2T9otibsfxTS3Mw1jb23RArA
	 hw/JsNCZvCAjFmYe8/twYl6oGMDFuIA3+LSzYy0huY8kyCTbQUAQYtiBN2fIVWz5Ya
	 BDNS1lVAtdRz6s87xOhtD/Y6FVu2rwKpXDccUA5lAFufihsfbWNS8riOwQyWLuPoRX
	 +PmmzZ33HyAUm+QCnz7EJdf2x1y7XO2jxtb3HmORHqYUmc+FYgaoih4j65QoRvLQNX
	 9QqNpZ2EBruiTcHmrWeHe+fUxOzT5NdQrP4RqBoKWdbHjmBrq1/ebWvVresZIahWHP
	 Ly+yKH7pyWM/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35EFC3065C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171996332278.6663.13665922906248745456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a879ca09453703cc9a6861b039a854f6b19586426d2fc2dd9fb8726e5e9077f5
Date: Tue, 02 Jul 2024 23:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719963322
