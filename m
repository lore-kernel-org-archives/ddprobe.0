Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E58541760
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726392954; cv=none; b=qgx6/o5EjYu47qXn3nJ9VAwBlZjchxPnoWn4YSGgHA6qimkRz8A76sbxVZxkJMBZgvmWBdBeIVOTeUznJOyf0wMi3Y1wtyMQh66GJ7EmLVDvcnw7j0dlrT9b/omoFt5FdCbnpTrAwNZiPxweGDk8vhOnLJUVbsrgWBh8KQBgUjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726392954; c=relaxed/simple;
	bh=5V0+2j4MyAQNihTJcWBhQQ61ZdzYe1oIP67NaXBolN0=;
	h=To:Subject:From:Message-Id:Date; b=RuAKOXhgLCDid+pGTDNIF0MuNWV6NvPxURQnhjm7VQ8D742N2Zzclz476cFN95jT10TSpLTTsNyls7pBwtmKXdvdHLfkzVfVJuIp4QIvJPafvDiWZpAN6MsDB8nJ02b3nBHhQTCcl4x4Q4t9XGnVsQUguxWH+Kl2W8Oz2DQsiOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iV/fsBBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iV/fsBBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AACC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726392953;
	bh=5V0+2j4MyAQNihTJcWBhQQ61ZdzYe1oIP67NaXBolN0=;
	h=To:Subject:From:Date:From;
	b=iV/fsBBkxdzZgor8c8Q6+XQCNeCIPGmBvlRPglFrxKLK8HwGUBChy6i4bgsYecaYd
	 qflAAoeuQ38FEDMLcZzqRnbnSVD2QG1wxi2pH/vIf75JapeF3bPWA67qdqSNWtwrHn
	 CDQJfwSS9e4lUDn10YmwYQzG/69LM0WbDmYoqSBedegi1iZMU/bQrOOuA70mXRdthG
	 Ml5yW3sHjPINaAeIde/ZANpai9Kynpe7ZIoBFU0KK9w8Q7WH9nDKuz3y7NLs27Lf46
	 4qxDAXi7XBgjqYqBYaDicToyf5ILG0ZNujCbYuamlhBFNIcYJflO8mt7096kERVpCZ
	 dLeHrODsBp0Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2DAC35FE7
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172639295360.27400.7972279115567769550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a621d982cd1d3f5012df9aa637ef0aced0f2330a44247d9a95aee9dfd19474
Date: Sun, 15 Sep 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726392953
