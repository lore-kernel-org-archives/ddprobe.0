Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E6BC2FF
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772606094; cv=none; b=Oo85b1ZjNaagEpibEQwGrSgLRGqUbos1J02dPWBycMFDVpqSi5eNB5gdEgUeccI6bqcwsPUE6XjP9rQiGx8+B9TLzI9aUjuihsf6UJsVViH5s9gjmuANRUdXweHR/EL+SU/U31ioRbw+YuLUvJVyogwaWNzgE3Vm4X5bM0TORVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772606094; c=relaxed/simple;
	bh=7F83yFDPjRVltfi70PyGBtGqPYFrjuS32ooNhuUQsM0=;
	h=To:Subject:From:Message-Id:Date; b=FR6VJ+CbB3hYmbpNxTjqRWPnoX1hqL7pdrghhlKGYLzJ50BeyEwfmGK80TFPIeDYBpKFApE3/04rsMGn8cPKter15bo/necwzDI9tc5RgamasL8TsQtgE8goSb/2FkJ+lxsZX/MYrQh9Az4EJpK18zlf9ds/BsAMJUqhrEDRWFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KM1pHtnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KM1pHtnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C284AC2BC87
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772606093;
	bh=7F83yFDPjRVltfi70PyGBtGqPYFrjuS32ooNhuUQsM0=;
	h=To:Subject:From:Date:From;
	b=KM1pHtnQJY5etkqWbZNiFOOS4mKI3Gw/lxjJ9zNq6KsonYLy8aFmoSOvV2Yo4C+Qy
	 AIeuNyrjfZuDj6Itkikh2+XDAS0Q01YATpZeSzg6R5Ni/a6hyHSBpayTzt4rpguj+X
	 u3kEWir8+OHDKrDhB/mo0wPE+Xdtr8Apri4JAhtS8ybd6cyCOFTzcaXSZc9mVfnsB8
	 9e8/hzBM6UyHIfLpPszsq+DSStVUk9gkGIQRSg69mT7ddndVQyKL3eqSOfl4rqFpEu
	 fLHsbwkXFXCQfN/4c+Ouqa8VQ68Gd/IVGotQFVz1LVmmOCEX7AGOevCSpZCzgZ8iIE
	 Qnauvrq0ILqKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EB7EDEC15
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177260609368.9145.3925424137624619447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da1b5cb77d750812c731672ff11e9a458988a6774ac0091861ec617026739ca
Date: Wed, 04 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772606093
