Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC6530C612
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764164573; cv=none; b=VXzTD9J1BYr4PgbAGaFDdKMbMzeo31r+55hDx6A/qxbQvCQtlcVCOgyJawZqYMPaGpdSFilUC67Q/tWZ6k49FSNzKPnrVdO3Nyt9kO5m6c1rkOoR3FqpKZNm07v7mCWNmsFP4fPI8quaf03+EIQDYpaLtlbfsD4FISjTnWzKCt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764164573; c=relaxed/simple;
	bh=+tIgPuz9q/zwVfK0u2e5xzx40A2FTOF/VKMVXC9lH9I=;
	h=To:Subject:From:Message-Id:Date; b=mUbIJ/PXmuFQXVbj/CxAeE18U0L4OZLaffni9jrEEquPstoRC3DIBkRH1rssHku3j6yDanPJwqVaBaErCi6khHW8+8wZxDXIpHI0H+R/eXz30j04SHLmfAhAvevMJz+0pFmOfrTyd7EkdsPAKCEawGChLjneDrVX4oK4phpVt2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMkFOqdv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMkFOqdv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9789C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764164573;
	bh=+tIgPuz9q/zwVfK0u2e5xzx40A2FTOF/VKMVXC9lH9I=;
	h=To:Subject:From:Date:From;
	b=PMkFOqdvNyuMfHvH9g45/UCB4DI2Id1FvuRofctm6JJN4sIrRNxaltKeaSoxUB9Dd
	 GkeuA9AUHpqk9zB3fUUeiTfxGpbCbQ9eYqpNsJEgpd+tAc9YF1ql/tOiOj6TWHCp1J
	 yOldZUwHXIKrzEnWTRHPO0zysn9tUTFusY4UmaT6yyy7chLAlU32gW+aQkUCU7+P+v
	 QJA4hiuHpLJRuMk2I80zMkDKHDAygQAf2eje6Zq2aJ07DoQFLgohSSMvY5YZzFic75
	 f1qzgcXeSV3YChR13IWP5pyYVDwxPlUmOyd4Ye/KKvuQWDVZVG2/YNlgsEBq4C/BHH
	 e1ypgHp2SNBXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D51D10F4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176416457360.17524.12674567485230109441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721d2508d0579ffeaa97f33611dee895485d616d0cfcfc5e3ea72a3af4f3ebb1
Date: Wed, 26 Nov 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764164573
