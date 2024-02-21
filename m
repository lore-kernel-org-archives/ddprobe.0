Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1822980C1B
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708529897; cv=none; b=aARR+Mcc3u+GiFtXqO+LAYUPZtHb0CBVe13avKGLfapo8JUmBgKBhWcQV2wzqe8KOLzaFJjhtnBcImZRgd5jNCbrtifM/Ko+CJSLRtPv71NVBs5bxkXQ/5TkJgLiZyEfCdmcf5esbDfvh1LkyF4kTYC4Hvu7ENSm4gkxCrFfUs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708529897; c=relaxed/simple;
	bh=E7n4gRoId15NzgvmrgIs48RBSCmGj/7CAsGtRU20x4U=;
	h=To:Subject:From:Message-Id:Date; b=fq/Yf2uR0riLF+7kTNedxNkfe6VI6tbsgUVbSUnDmQCSSWkw+uRCnPY7+5EBFHpknWYyXfVbeZZqK9rtqKBYWQsGCRGmfTb9UPYUN+d4Ad17fxhCu3n7xkcPdUsHXf8BoRqCFCorDaJXNFXE2qhrrFrQL4rXm/7WNlw7WqiQ0fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oshv4HRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oshv4HRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A931C43394
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708529896;
	bh=E7n4gRoId15NzgvmrgIs48RBSCmGj/7CAsGtRU20x4U=;
	h=To:Subject:From:Date:From;
	b=oshv4HRKA+/ONS1VUZ+cIHTVmeHVNz4DwpblQL824Ee4+sXiMywUJOudX0bHEPQyK
	 BQ1Il4q12E17wEfJoxEqpQkTtFejzyJ3dRwKfWc0S2b4mMRWZchqJHJ6gwzuo4l57s
	 YWReqwt8MxiUJ0mEan1DAqMT9PYT8wg5GY2NF3obgdbQ9HL0AahBkfOH1DQDwEF/Ln
	 RcTVyzyOoioB50svTVnTbX4nEJFYL+c4vKSM6I2pwtZIosR8NEWq89HpNy0Q2rJxlw
	 Xb7RWS42749EqmVBjd2RXrxZA8I/ttEx0585bKtolbBsXvnrQRSLcpBTf+SHP6EAZy
	 DM9s40328QXew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DEB3C48BC3
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170852989644.16397.14408017507278070377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e5c575ffe1ba079e9ef8c1006f08a5a10406ff7265bd6ab20df25d743c25d2
Date: Wed, 21 Feb 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708529896
