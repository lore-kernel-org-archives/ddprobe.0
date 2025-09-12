Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5012030A
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757638794; cv=none; b=VibiEn0yaGAeI9f4oIN3qAMcRdxJ3fatMu/K0dd+JbcBr7LyxT4EhhjeRVVRWhJ1eh2vCT6mqVR/yaHfCz9ql1V93IlMD9YQ74PaJr/P+4Yvahx01zA0rCs8j45nI4zkDrXGR8CD9VbbvHa8/kBKzYWuHnIiWvVHZI+VXUgsdLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757638794; c=relaxed/simple;
	bh=UydPlTbuhyJs26XqcRILe7L5juR/n/nXkjXEoDWmAko=;
	h=To:Subject:From:Message-Id:Date; b=tJJW8ovw+Om+lvlVd6Z4duqRguEdq7Gm8xmThi6rY2+8NLRxt6iCtvrQesmkxO/qZTJieXLOyxp/Dk3Fz80vUU0E5h66XnmZQlfF2hZDCnafnffL3FQOBQSphQ4JN/hlJYwcDGRPcbchGsnkDAf3J6gDoQzaBKLtWKyKrfVGofY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEO2W3Kh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEO2W3Kh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AC9C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757638793;
	bh=UydPlTbuhyJs26XqcRILe7L5juR/n/nXkjXEoDWmAko=;
	h=To:Subject:From:Date:From;
	b=TEO2W3KhQty1osjdd9gWSRDIMgT2Vu0qSMZUxr/YBaFrcnHPAg1xPq2lEuI99mdul
	 bxqOU+ALiMrjoukZlgLyhvGf1HZFWGsugtV+JNd+GFZx4VIdgg+92JIMNAxf72W5eJ
	 fAKqRQcgZRTKtTgzD8QicLsGVFqmB679WXm416mAXXHlvXeJyImRa5c6O6gzzNgEOU
	 0xZ1H+a3bPuKVM3ZdJDDzkaz0HiDnD2r2N8sXj/1uAHGjTP94+zEeyIU8SYz87gc37
	 hjA7H4EU4oEsMylecMmB1g2WFxczrpelCZRl+sZN3xZz/rD6zBPicEZoeVv5hTCTF5
	 Z9iwKiu36vwhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BB9CAC58E
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175763879359.18239.7167840813687304728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0f5d216d171b250033290ff75c0f3955644eff3871f003eec6cdce35011673
Date: Fri, 12 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757638793
