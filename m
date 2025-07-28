Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352C116A95B
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753679395; cv=none; b=sHus82MqvukXCNusbIHYJ/2+L1qsVBSllP8T6wuJq8KvjfC9junThHRxNn0MELMJSv2pCyoSypD69EN5T6hnEgn+etVvDkr0T189YPo5PsGPUan1XCSqo6C66UaNgcjnmc0D3qPk+jiBN4CjwTNAEwbtt07OuvS6eoarlBLvuho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753679395; c=relaxed/simple;
	bh=UG93kDh0XfbRdox+dvLMhXL8kvlqTSzPXdjUaESm1UU=;
	h=To:Subject:From:Message-Id:Date; b=aQupP2XEqkLjG+9G5pmgSptMrnogtdYGgk6JPddsCI0DrihVO+IGPZbh4SkKZY4nrnWNvkdhxTFmilDX8SI+pmwmIUB4/gDkOsJ+uI2YP7lE1zNZrvNaalHqSVnQFHSlNnm78+j7/WLtou51oKKCRC/dNx0kFRFPf2FUEeqo2Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlgE+cuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlgE+cuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13D7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753679393;
	bh=UG93kDh0XfbRdox+dvLMhXL8kvlqTSzPXdjUaESm1UU=;
	h=To:Subject:From:Date:From;
	b=JlgE+cuChNPNeSRNNHIi/eiNruz/6KeuRbSXtKJ2PEmJS1eC3zqLk4I+kMAxFT62Q
	 SLoc2P9r1/4wfW2OePnEL0+kfsx9gMrEXtsd9siXu0McyQQSfeMpSDOkjnbVqcvskl
	 adGBUfg6Lt3Csmin1ZxsGRxsIWTdn7b8aVeB7ujlxdF9KEyh7ViBSidJYAVHzxHc9Q
	 bhAOL660k74Mi7UyVu3IuiV8q818q9fXCR8yJH94XQwl9oveFeQ7+1OPZGv8Q4My8/
	 K0+ISIIKyY/v5qdH26Ld2ZPVFID+yhHkLvB3ZUVXpqVZn4XLiA4DErXGPHxvnWcWMv
	 UvyrpDgDtJ4hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B9DC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175367939358.16905.17243020535298541457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7ece13cd7c9445f95e66f008c42b1ef074bd57c69229b098d47968f9013288
Date: Mon, 28 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753679393
