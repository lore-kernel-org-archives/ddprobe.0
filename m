Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF9F1B4138
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779615154; cv=none; b=IHwVXiNK7Wwf+UIMFZwrKdHxuiAyV7ntknIKK9V2sWd8fQtWRZnnQ83QQdrhPPog4dxq4PnpwXaAKvUmrvshyXiG+PXwHgs6XjnjM9il4a/BV2sCB9jiepaBoR/Mka4SHWvu5IYxNr7FWjYQbCgQzGoqqakSEh9xPLUtJkjLYZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779615154; c=relaxed/simple;
	bh=W645JnCET4sMU15pMjDViLicqFGhwEWysDlxx+s30Es=;
	h=To:Subject:From:Message-Id:Date; b=ZKr5oVh3z2IyLaYp7APBHjkhmcyjRIrQtuOyoXQKZLclyOHDjcN31Xu5hsOL0UI2tE7yw+hhb18qBB2TGdKwRlSU5GH0MVvHWxdhWytd6mZ7fRwctZujjt9//QgjOhaBS4iOFN86xtZeXsq056JffSitBO5Eeg4XCcRYPc6o8CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2zDG3Ag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2zDG3Ag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4A2C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779615153;
	bh=W645JnCET4sMU15pMjDViLicqFGhwEWysDlxx+s30Es=;
	h=To:Subject:From:Date:From;
	b=u2zDG3AgC7qf8IOQcHLk/mVfaO4rZtSyegRLDeGoVDbFzJ/cDdokgss1BaBUDJ6Wl
	 aeRyytQ1aZKSjCG/Af9FoZroGFU9fTP07kZEJStpOkgBgfHKXn6ZXER8aidvSP0pFq
	 aEslEA61nAiD2o5QrjA/+kWqEkR4CFBmjZdQbHyjnHsnjUBXgmJm4QZjbaKBMs5M4v
	 M2aRxue2ubI94TI2NjUMcVJlK5EtWiuGF3IhyEJzEZBP87lmPCwxg4gUhhxyEonxZo
	 Hj+JYWuaJmMVQSyGNpE8IGNlTvv6NsOfCYte06OJ/8XTNuDaG3d05gPeFvVgE5W3CN
	 FMpy+7FQIP1ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC22CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177961515368.21293.4912156539694118732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf5d3f3e8c4e92c0ee4f04a58af4884484b206f339a932a69a84b81bedd1b5f
Date: Sun, 24 May 2026 09:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779615153
