Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFBE34EEE5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790270434; cv=none; b=C+/XEN6CzNi2vFZnbK+fdQkNZj8tji720cc5DoE6wTjvBFoOVmTssPWSwULUWv3eknDOUJNHy/mJq/qkZCngTXGNQuOlikU/ElGBXL8jLUHcjsDKQVCIkr5BsgHT4AO2sHYE+gnBEvXVnWRwNRXJzhFkDG4LfpF+3SAYHyFrp04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790270434; c=relaxed/simple;
	bh=yAZlTZZm3QQPOGc/l+AerLG6Bu9HQYJRbbuNsibZ2/s=;
	h=To:Subject:From:Message-Id:Date; b=NbDBEs2P/6+nQLIQVkcquQolEVxsvrxo9zP5XRKXEvRwI/KjaK+gS7wscPd3WRGFG4gQQDMv45tFb4k+Ws/dJtuq3GZetQNFtcc1SFvcWF+clCfAp+oA/bYO3pZI4oEE786b4UeHCMT6AgADwMQlXH56rki5GBIQxHxVsk6mgK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HY+4DOXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HY+4DOXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A29C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790270433;
	bh=yAZlTZZm3QQPOGc/l+AerLG6Bu9HQYJRbbuNsibZ2/s=;
	h=To:Subject:From:Date:From;
	b=HY+4DOXxuZ7k05bQAMhQ4wVl60DE+kItExPC1qI3KuKkUf43YXnTYjUL1O7qGnzo5
	 iR4zgu+ACzHlA8OICP9CRjpiR6Y1fj/glgGr5DzP6+E8AuvMcr0+I22i0YvDgF0D/3
	 L7Xo2libIxUhSiHeP7OtM4SMLkJsfUNLdiY7Qr9iFQg1o6e+0SjZPCzzt/6AxjsLG7
	 C6PZr9LE6ik+18CHaSv27vCX6ZtSv+1384SSPgzWl1eQPeQNCmBgg1W1h8xwAIXIUr
	 62ktXjrqMaQOZ4jQavt83/4rvSY9cle7xYvJmEpzxTFOzntjPD9eGUnUPvaViXOgPR
	 d5wjbTSoc6x1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F34C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179027043369.30881.18006482771349832981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f765bdd28d280b689041de33206da39da0d871317a14661601bf359018c6e839
Date: Thu, 24 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790270433
