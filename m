Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C2C1ACEC8
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746659393; cv=none; b=srnH50OKLu/mjvsLEe/5suDYw9Jkp1sXSzj8NPAuFVL8cKmiCFoyR+Uzrzr4MTmCKrxhSz6iqkf7KAO5AIehGjoBJEuTTqdxsUlFoJvXH3IC9ZfyD/1Ok2PXT3Xbvo2cXViRezJqWEsO+SHtRiWTeY6DRe1msdx8Sq9ku5LL+FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746659393; c=relaxed/simple;
	bh=olQkVgMBGiOVBgc4WVGYCge/S2+2f7lEUSzN93/n/j4=;
	h=To:Subject:From:Message-Id:Date; b=lzRo+m5/MWnqGDI12FOxo7FdcEyJOTdVlSFTRCCvw1v0AwGyJ7QWDJGzTvUtgd3On1ur4f1yy50638YU0+8Mtk1fn2q9kYMwVRvl7MjdOO7X3rUg31WYtubJWZmjBFpC0n6c/RQLIqBTJN6SXcONggK4po01IbrE9yseFlpkiGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgLsJA1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgLsJA1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0381C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746659393;
	bh=olQkVgMBGiOVBgc4WVGYCge/S2+2f7lEUSzN93/n/j4=;
	h=To:Subject:From:Date:From;
	b=FgLsJA1fLHpaFQADLJp1HNodaHfVq+V54tHPjCNVPed3iDV6fibte1FcGQUzym+KG
	 C0CPxXL7ZYeaaSryRth9iykXKtdfPqYV1v3k/BunQpujaoOeh8xSj9vLhNsOuqOghT
	 jYReLO7w6QtrLd7wTRJnBVHrAy4wiNhuOgi4ph7t0zycxmM17+cpc5B7OyzYp+KdyF
	 cSI7roWNiyG0UEQQE2KBCrH/pmAG6WooL0eCMH0SrA1LhYBwiHyEizW+dUakTb0vWK
	 EZ+UpLIG4eiQEGY/MS4azJbevqIRnV3+Fl43ZpbqKuEUqC2KJnFa+LLPjU6X/1CDQu
	 HJTmeHsC1Rl9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B1C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174665939358.20234.14540802046407433664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b24b1cb6af16d01605baf0bbac48504ee1e84488bfb20ea9195f04117eec2c3
Date: Wed, 07 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746659393
