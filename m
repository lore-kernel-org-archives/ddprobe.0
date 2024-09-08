Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394D5130A58
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 11:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725794155; cv=none; b=jrl6dgXwKsZypN318s2I4xpxNMXmE9iG6q2p15RXWAhU9aMF92kNa3qvXe+GatbQnLKnAs9urlq1szevq6jTz+t1d26w6yPrFx8b2SiuemcZj1iOUMhanb8LP2a//SVEZEaDACoEq2YkNc4fBCIk85izA3ubzVHKVli8AqrzbW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725794155; c=relaxed/simple;
	bh=jaUduCrDRG1LYIIfHdcv6BKUc/cZlSDeH1KtNxPbzy8=;
	h=To:Subject:From:Message-Id:Date; b=lU+dMO0z7kMZTV8Jn/ZpdiI4omd+ELP5c19kd3MKhupKorPKDdRJdg40gPkxDgcggTHvwvfqexXmPZjLfwZUXsnVWsohj0JOMqJ/uuidgGWIhWr7DugNGxxEsi6/nOrRzvATcuFC5Z2GEssidvGaDgMzpsN8XwdyCuxA+pA1UGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgmMgjSZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgmMgjSZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7AB2C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725794154;
	bh=jaUduCrDRG1LYIIfHdcv6BKUc/cZlSDeH1KtNxPbzy8=;
	h=To:Subject:From:Date:From;
	b=tgmMgjSZgzr3Y7l4h7ORXtSzjA3D2YGKIhHZheS6ykDBHTR4almF1R2coXBvx52th
	 qRqjVXCdfUMs1XFulk/wzzCMRmrf01iBQyRqiJ52EJEC5BSRPf5IOij4kcOfhKLHb1
	 CErmB73YRgEQpA13AHhOh4D8bLlPcU4mav3CZ4vIE2myB2esO08DSy02DSMQbGeJJC
	 Rj1Jm18UAcRMyTLTqsXFtBPrS198wSfSdscpRdN5kf3BkLLtlI/+/ugXXDxU9+h4Ze
	 6IutuadVdZuojoihQHdWxstmymFcNmrDfgb3/nJ/MozRCCSMkIZf1e0F5Y2DbKP5Iu
	 3sRDbQNNvfG4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D06CD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172579415363.18801.5056719250960815002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0befcd26e7735caf94c6afdd166b0bc84d8c200aad36071a3bed6bdbfcc148b2
Date: Sun, 08 Sep 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725794153
