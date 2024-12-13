Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4471E049E
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734098754; cv=none; b=iGtZF41jTsJ4IXABO15Coj+8c4q/sGR1TYo1yDf1ZGwOxMuXFkhQlbI/QwmYd/4SR35qZ+Bt7x3oX1ki1QUyGE4Qif6IbaL7wHmyXTIlJD23X9SOCSUVoDxlgsytBGgBylo9Ck+xvHNszRjEJS+ZCnKRwy2ddmT3ioEbG3Yc/vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734098754; c=relaxed/simple;
	bh=rabqO6SM4+frH9TIcHhcAKES4/ilnCjwPb7mLoKvrNg=;
	h=To:Subject:From:Message-Id:Date; b=XacrIBI8ctOkaLq3ZtEyLdr0Ng7GebOs7gAYVhP+1/X1CUh1bJUDE0SzevSSKhRV0cESP1BNNlszgi3r5Y4vCn4brF9FVcFPPQebnsRPPFSWXSv2RW3g2nSHJ6V9nXDQYmpFH7RIFao+ZNSAka764XMcQX1f6WcyUmNYgfTrTq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATwMENlN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATwMENlN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3102C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734098753;
	bh=rabqO6SM4+frH9TIcHhcAKES4/ilnCjwPb7mLoKvrNg=;
	h=To:Subject:From:Date:From;
	b=ATwMENlNqe2Bm29L1fEDRZZoeR8dTXFpd+rbOr17/G64aotIO9cXA9VWBGNIMdnSk
	 oZK182aEOylXi+rCW6ObYClC6tM9UM6oS7kWiw5uUuqYnrlBeChi+jc++zVUEnmEaa
	 Y/8Ce/1VveWMFBoDsvPGlD9Rir2xP/KdXgY4I+zlX+9w1Nocod06lSVpd12IRMhCa9
	 IDWwSgtZ4g3U+zruNFzq+1NxLqsrzAhvZkwXVOkWNPXwohOoT+iwJ2KyY4tb+C2lwC
	 D/EJN5oFghj8V4dLIlvvTBM1sBYc3Z9GyW6VFSS0T4EUfw9h5QygNzfQdD6fzjsL1Q
	 7vLHVlfArA+QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3709E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173409875365.3833.17209113854942236472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d611b65a66053fec450d2e1ced99e0c5c681653d72c5fbab3962e72d58c96c1a
Date: Fri, 13 Dec 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734098753
