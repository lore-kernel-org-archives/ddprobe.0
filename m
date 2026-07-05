Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED5D376A17
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783249714; cv=none; b=tbpKjCXs0B26Cl3oXZ7YaOb1Symyi2VrQkFC8HlC28KXFz4FkL46aSmSqRAs1p5+WgdknBVrVw6SnK/jJCE5pCNz3wYZyC5EAGLjVOpp0Rfwft9Wjm+kmffweOv8hZbVagu9/YBWUUF0RDTR2xAH5M697EQbREcaKHDh7aT2bec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783249714; c=relaxed/simple;
	bh=CaiEV6c7Nw+K01ZmBdAg2JKa5z9D3WLWE4DCxFCuMu4=;
	h=To:Subject:From:Message-Id:Date; b=quMMa6IDIAne+xnobDfitqZ2ivsYx3ssRsrGyu2ZF935pkGNFx6mMaMf3aIHUA5DeWwfXLUCzk9UtTBrp46bl5QYq+HVfPKkqrX4KdwaqpD2n9N/mUWWToJy4OG74RD/yxS2mtuQ1S12CRDmwXsqBT6anfU53E12X+r47LI5Df4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUz1ZbEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUz1ZbEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0CCC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783249713;
	bh=CaiEV6c7Nw+K01ZmBdAg2JKa5z9D3WLWE4DCxFCuMu4=;
	h=To:Subject:From:Date:From;
	b=XUz1ZbELIUwstJ2DrZgsZUC2n046r4i4FmGcQC49NZNoQI3h8rYg6TJOhyD7MDWzs
	 rWwrslI3VBbZ9ohnB/O0GwPUetCTTxrsPnWwrMtJfiQiDy0vm73Yc7vOU3Pvz09yID
	 vmLIzUt0caT9hdLHN/9ZklnHouhKcNCn6llwMBrtPHY6QuTimHi2LGw3YoLJfoa70C
	 g6uQkLDhCes/4Qovbr2Jn//osJ2lOOSu+hOxvjgA4XdMaTCosUeIuD4zuwnbrU4O5J
	 sxQVM+VVCaNIdfw9LoZde8IND6auZcaPWrpMW/i/vk8f8EaZjfDL8iGr8jv2y87lSl
	 MptcPSLQ3VymA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD91DC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178324971368.5762.7374363792450318246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e4313e900934e2503d925ed3a3fbd2922ccdf3503e73105cbb8ea039ee90df6
Date: Sun, 05 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783249713
