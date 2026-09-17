Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E874E532F
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789675834; cv=none; b=uxdEfLyFdzhkn9umX1jkcjl1splcuy09W20j9u597oUXVh+ZGPHUVRJjnabO/8rCml2mTibJy98JC8iBUcnVMkLBKce/3QmMNeF+cDd7tjV1IX8hwBSGTw69YcyJoIBGvlI+OMgO1oOJUQshv67lcOUc/dDrPgGZ12CsxaW1+Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789675834; c=relaxed/simple;
	bh=z0xgY9dBEz3HSAjt+3+Jrpn9NcxtgfaNP/3zylv3yeg=;
	h=To:Subject:From:Message-Id:Date; b=OsmF15CZxWzkPK3kAr0S/d7BJrlQl73ocfHFjU9mxhnXERHd/6EKiGqco0fq/wBeSUFCNAq3AQwft9vFdfgWRXFNXk9Vdrv7DYy0Vse+EGB5UUpIHSESuKKPlY3qJz2si0YArKk2izf/WrlUZQQ0FKdUdt3y5SwXwumaxLpi+yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBKA63hT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBKA63hT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4FDC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789675833;
	bh=z0xgY9dBEz3HSAjt+3+Jrpn9NcxtgfaNP/3zylv3yeg=;
	h=To:Subject:From:Date:From;
	b=uBKA63hTrdZO5aIzttadSuKUupoV3aqfsyrZ21ya6vnOO+afAkcWn9QRb51CpWNUB
	 uFzGEufIKSxUv9bmVnEOi1zGzd0lLfRZCm5pymaHbUGa6+R/VxDYymKt/18cM4Gwxh
	 oZZvJvZzvc6MYt50pjbnWN2YPrwNdbn1vRxXy5pmh59IKRsv+YfVgfSYFKMneNGeNp
	 KO1auznLwZsW02in1dUnYpIYIfBFCeKsavxWsme5p6lDzkQbOs7pJFJfmPWE3leQAi
	 briOoc7cNHYvhecOxOERJ9iVy2V73eLmjz8IGuawZl4VC/bmfwGOCyr9vTdCiUlh/X
	 HOzC/Zwwh9I9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCFDC88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178967583369.17923.7685833491158825201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4efcc00ec2ae44efe2c54757f9ba8758fbc736a48786f00ce2058dee29f5baa
Date: Thu, 17 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789675833
