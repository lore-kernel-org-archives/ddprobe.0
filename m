Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3112F2D
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754290194; cv=none; b=oR17V57XdHdt0jkA5st9ctLO7Mrt/Eo+mQyyes7Nf6KqpGpGU3uLJmoeTK9/DemTLQzRYD168p4tl0ldrrkyP5kwA6DoHv+ykW3LI5PlLhzPRLmr/+A9kgL0VTh7/IWxQREug2tcsLMOq0uIZxLfW2k+8jzxII8mSXuUrTykdhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754290194; c=relaxed/simple;
	bh=k6hjyxSFxv/t+gqTQoloGsGDm0prZkwjNfewrimKQN8=;
	h=To:Subject:From:Message-Id:Date; b=qC2URGRkbh8TuHF++z+ugTlD6N88Rkmi+cedUQRfXmxWakJ+O/stVo1d87nxFIDcbzxkFrB1/x8AqnMW52mx29GaKUGNBrUz7iwDofoDEFHd8MjYSx0R9agpSVElBQRfMaJUwdePsbSrVXdmCBuKoXl48oUiV/T7SgZdkg7LZ5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ga/+5Lge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ga/+5Lge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86F4C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754290193;
	bh=k6hjyxSFxv/t+gqTQoloGsGDm0prZkwjNfewrimKQN8=;
	h=To:Subject:From:Date:From;
	b=ga/+5LgeZQMMoBXG8TYxoHZy4WkXo9dSdSl9BKoyzZ7LsetGeX/JC3PW2CsbzVW0k
	 l43ImMEGXABgFaF4WO4Cut1TaWFqAcI8O2m4BC56x8J+nufTPnVh1yTt8WJa+/ecKi
	 wBGixIGN/PTNvIY+s/+Szd+fnXZybHKeAryVAWT7pUNXeSfHKpqXE+OoHcpPdNvo6K
	 78SXy3TilbRm5mtsXP7/AfYOvSkSV2YmgQdfbzvPwDvFsY7B5d7z+f+oP9I7PCQRhs
	 znyWqiChEtrHeePP+yVCMx/poMy4S3KFoChJRStiWcuU7R8x+L+JKtbIpnAjBSS++D
	 ZZzXxia+ZB9sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951ECC87FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175429019359.18175.4589886762098333390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd9000321644b8b487384237a6992938996178385e90b51c57132ed967efc004
Date: Mon, 04 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754290193
