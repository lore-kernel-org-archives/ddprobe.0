Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1910D2EB850
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755612594; cv=none; b=ALM68WPaVBpjV8LoBcOJT9y6XAn5hR3ynztmWZ07ekKFK/OqWaGzNAmkEZ2Hl4EifNXFhJR6MFQf2hm/R1wRK4t+hEXTepclcZ3XBU+Ay49QDWE34Rb1yJsoYh3yViEv49wpzwx+A1+uBZ11CS0YH/40EflQDIUBsS7vELID4Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755612594; c=relaxed/simple;
	bh=IRxrvTxzpMui7Fi+2kpfm3xjrp1Bq9TJg8dMDNwtuqY=;
	h=To:Subject:From:Message-Id:Date; b=ZMzpC0gbZ2fjlHyaO4BJj/OrHV962efdJ+c18rYFZeB0ewANeAFU5otHsKDVp+QA50N323X7QurdczYu6Y0DSMxkYSXzfPMAnVS3lSLvnxDm5xyPZM9xB1Su2WESN0SVdWeX8nra0oFCFpWQqCTOaTFROMcry7zSeysDPhTRc54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxEfZkjW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxEfZkjW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EBEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755612593;
	bh=IRxrvTxzpMui7Fi+2kpfm3xjrp1Bq9TJg8dMDNwtuqY=;
	h=To:Subject:From:Date:From;
	b=pxEfZkjWuSi7upA0p40Y14+moB1Lr+DvEDHfQMZ7tjOVjPA3eszXLeLDHP4NsbyjK
	 4bN+5FXj00OOWXxgenWF9u2m9usD+5oDPbPkwdFOX0VuiKoVf7F5/peo/wy+5g/5E0
	 d3LwLC0QQUU1e40cFccS9DTuJIJ+AbB04hvVzQtPJZvjLpWq45dqasuxjFj+UY5qfQ
	 Gi/Guyw6Tkd3QiYSq1cT5dOxWVoG0D7C8fqn+w+T49JFAmlR6pD0OfK4xWt9mKpzEz
	 NatSIqQsAzAGFwJABM/zxwIpwYMMQDeAlfDpiJE5ZuKtLYhrgjkbcNUyQkWvVEF20z
	 CLafXdJhSCt6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD5CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175561259357.26758.10507808719232368891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14de148bf58e1bcb309635370d5cbeca4cc91aa707db69d2fe82fe9fcfa99a3
Date: Tue, 19 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755612593
