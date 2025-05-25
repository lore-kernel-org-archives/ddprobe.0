Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3885B17B4EC
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748155195; cv=none; b=dnWcUAlSK7LlXGvwVwPAIJNSKsU8uxFlS9aXmB9KCYHwBZxIte3MwxZ6XyriPSlE20iSy3DrbLerNqQhblRT1Cvk0jvbUHsJAk17NLQrKw9YgfDOLKuOrk2D+yVZ8fPJUKXs1ltkgqyihjDL6haTDrvNU8fzyGxae/z/Ds8D6rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748155195; c=relaxed/simple;
	bh=sAOeIjpwa3bp9WEeMjmxQqaWjb4nR1Og10bGho2vrs4=;
	h=To:Subject:From:Message-Id:Date; b=ZzwISm3AauRgkwdTFluyvp7xF6n3veF1fkyW/SIK3VI57YON/EDU6v1WLUMTzFc2JOFkLuyAqIeK+65axWDYcovhtmqvSaCF5XpGv533SEb42snQOYBuAVbr7VaOKLCnMJHsbLOcHd7UY8ecFJ88eaeMddZ1FAXLWXl/lNej60A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syNHWA7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syNHWA7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3A2C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748155193;
	bh=sAOeIjpwa3bp9WEeMjmxQqaWjb4nR1Og10bGho2vrs4=;
	h=To:Subject:From:Date:From;
	b=syNHWA7XdKtWdsDxG2A0TpLDV5SQ6QmEWDXAzJ0idZzNudegIwFlznt950jP3niQ8
	 knn2h4tElWsaBqCaQQIXw0a+7NazvsYoRGiBSFeN0pnF0jYoo0/wxS8/edznBMMRnR
	 9h8z/VLEv/VTha+A9rFtPvUUy+yLEXZBB9qEz1At7cQLtbDhXYx2SZ4BspYlzaYFoa
	 d/VP9Czzd1tYxutTI2kuGxrZ+kg2zFWkiONPYQUBHr2i925DNqq6KFSdr/xgN5cK4y
	 hNrAnon1WUoB2M6ugZLq63RUZ2yJRl/TAoASfDGEH8in9J0qUIbk3CrdGvqoVjpRIM
	 cB0ibV0C2e5/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978B4C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174815519358.491.8758375588259592571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2f0749c2cac3ff4e0624b9ebf99ea171460a5678cfb25d0797dc3ef557d397
Date: Sun, 25 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748155193
