Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B83E1C7610
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729699554; cv=none; b=mUvGV3zCoaaiXUSafX87kmAPv3VfZHBL1p//PDeC0uqBNP+JWqodmK3kZGqOfSwC16Xc4ZgKUXa0cD1yxlXyf+CXVc3uml/wxeiPVeWO1TTsOnnSe9F8Jb8Tu2gDr13Ruw7dOYppkTsLJz1qcdko6551e8d/o57M5/IlG4334Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729699554; c=relaxed/simple;
	bh=qIHsLyp+gW93DVWPenLRfINgJMSSCNy7FpydFGLxXe8=;
	h=To:Subject:From:Message-Id:Date; b=BAvcvvhuGRkEa3bw7hW91efqkhb03akWNYHc7qKI0HsbHyATd7DB/MqZkoF2AuSX+EbWoxB+AVmwdoRnR0AUS0kAF+KckPfqD4z6YFJH7IKW18oCAC1dqTFz3ze4LtQ4hzodHWC31ixXm5dVZfnceMoH14RWl2J3FpgqqkCARjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjDL0W/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjDL0W/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9564C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729699553;
	bh=qIHsLyp+gW93DVWPenLRfINgJMSSCNy7FpydFGLxXe8=;
	h=To:Subject:From:Date:From;
	b=bjDL0W/I50xJpTVV4CNYnC4Gqgg9i2ygPCYVV5RN9HNrzgJW29GWbZxSzfM/QJtFM
	 tob9V7FVpFJOFTvlyLMKwDPJbcwCFEpSighLtDu+HHq4yp/0KUZZ695LUxuJZlZu8y
	 5oTQ54JXPNcRPt6PvHVJP3RzKtpxeN3FxpX/B66Wgsvlw+1978xmMyJ2DoXtPkW02j
	 gGjcUr1FdzkL0N7gxQU4RmY+D11dxo43sWewE1dm+RWdjSKSiFbNT71vfmMoYZTxTh
	 dgQ6RV8+MI7X7P8iSmaauQlMXs/8QaElwpOU1A7VNGLI69ELL6w6xFU61+xVAHe/Wy
	 klg2vcfnvc4YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9425FCFA44E
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172969955359.9139.17698220226201471297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb12b3bc368fea178c460563493486d2d8ce8aba7c4e04111c39598fdd711153
Date: Wed, 23 Oct 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729699553
