Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1A9629
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721779554; cv=none; b=LHCGjmdfsbWmS7hNrdboQSZyazK6gx5g+YmXBR9XQZsqbDATNFqlTpMhQHqO/hP2fK18FexelokgIdEjxmp/ivTeQ7Lc986/PKyouiCmsEzWX58vco023a6Ye4arMM0Y5GHp8rn+nOVhBAxndPRwyaE/K9bgC7jlWhzmq5yOrsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721779554; c=relaxed/simple;
	bh=cD888AzXICREnEAoAfA2FXPl9JDdvGhZdBS7Q1mLp5M=;
	h=To:Subject:From:Message-Id:Date; b=LiarRUG9cgMQx2liAVqd/cAC1rQ4tmfMK+PGttkK4snmiEX6psuaVKa6vSe5aXLQT8I0pZ7mEnQnEzWZmUCb/50j6XuewXGbRbmMDTeNta+RNHY6zNoMmR1A2VLMSOXsLCG1BBJOpzyauGq2HOULsB+F/dh4KAe1FI0YPwnbNeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5pwtOr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5pwtOr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FF2C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721779553;
	bh=cD888AzXICREnEAoAfA2FXPl9JDdvGhZdBS7Q1mLp5M=;
	h=To:Subject:From:Date:From;
	b=a5pwtOr9nNVvwexoZfPiKSSIV6lQ0mCMVBGGV54Qs3AKbKh5G98mItHz1MtGR1u/v
	 IM6U+ZGtFLLIrB1LzxYN031fny6lacJBK74//LqVCRggvxRYfxJF3XCRZhriKHc0dv
	 Rnse6fF1gGjnMfE/UHSwcEnOHvEtJz3GJb1ndEo1pUu7L+uhMwe7QEcfOJ3Mqveexy
	 dnbkoELBcA+MB0+7m7dSuWRnEkYOjOKsjxDz6+1ih74d+HgAfcu3TlPMkWvESULWsi
	 9mhnCdKD598aL07/rS7NHcqRANj+MEFQRkkxw8ByDSZisuqQpSsuukeVTdqbe1yxQH
	 400X2wYBoZkdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9778C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172177955363.9591.5669614367090078235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b851070831b324c873875be1c348d6c77c3476b6b36eb250691fd0c7596f18fe
Date: Wed, 24 Jul 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721779553
