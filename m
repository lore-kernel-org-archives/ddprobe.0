Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3D81BBBD7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736695554; cv=none; b=GTrXEdGUyHNz+Z5IAZqSoSjsib7n5AvGrdWORhB21IEsU+uTiXQk94MC9/evRphrqq3KFQx+cSIQ0eaRAyhqsyGCltU8EiWmOYwrr32mP73w6TbZeGynP4yp9yg4N3vEJG1A3u19pbdzDWfP38BkaWOL/3FyXaphYSSXjqiXpxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736695554; c=relaxed/simple;
	bh=3RDYwmBsUB5u3/KuGodahl2dhXTWP6RkbeQpq6SoUmE=;
	h=To:Subject:From:Message-Id:Date; b=emJFXFUyH+mbMwKVVB080pFitwrmINpk3HEA/LYM9oKUHXj+KrvLC6OYFbwJJb9Z152ZS6XZxeYRFnTRldU37y9HMC/+RD4xh8niMv+0T8/zx1rifKb8Sg8cEx9iDIjOEvq8Ux4ltxTcIcayA0Zb8XJEwqMkAcFBNfU2rp4xxHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/aOcc7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/aOcc7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08BAC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736695553;
	bh=3RDYwmBsUB5u3/KuGodahl2dhXTWP6RkbeQpq6SoUmE=;
	h=To:Subject:From:Date:From;
	b=j/aOcc7D7/psumjk8mtMiVyEAhB+4QfR4g6+15DgISjvbc29lWSJYCkP3AMfuqf4Z
	 YaGdLfsOOXyvHfz9Y+tuDFhPvDf9opDbawmH+vYgDTLun4clhKJA0UnwIlzt/CYPC5
	 0U86AfumzutR2bgeayAdVleq1keAd9+pd8LFqmhcd+/bYSr01hD6NLY1KMfghhXn72
	 hpxuIpneYk9SI8pSBpzEy32YvnvVMvC2yEBee115qsWYphBYgcsVzDNLLfvH7vhjWO
	 TsnfyPiYlfpxcW0VvNcCb30Bcx/ABx3wf+C6FLCQNDdsxJsxPTa3+vctJYgnSXiVwS
	 R665YvLWGO23Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BAFE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173669555360.552.15000394433126923193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68165125e134d3d81a9f039f98414eabfa86cc675124ad00cdf028423ed34019
Date: Sun, 12 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736695553
