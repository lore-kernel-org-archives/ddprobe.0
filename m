Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3117F2F2B
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723997754; cv=none; b=LulbeTNky+yLWnw8Gg8uyoXriJ6cVQu5bqwp2b2VkMHGRtel/yltYGkA+pnB9Rs5jSkakBry6OLrNLebIPy1DJdrHho01c1QOK8CiCEjD5j1i3vUm1uK+rttO5tg3XrW6QlcmPFh2OiXwiBNr3CkT4n1NGS2Hd8u7GfbJJ5NmjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723997754; c=relaxed/simple;
	bh=lUdBE6hlGygGFw9TxvS789NoSbB0hfDObypqL5f+bdY=;
	h=To:Subject:From:Message-Id:Date; b=Tq+Zk9gSxY4woF60glvqI+dh2or5sU8VVOsaW37cinletCABphlISkAQepXOJRH5TweWFsnRdUGz++rNleeqVoApJIafy2YXz7VQ4h3rWpghNOAa/gCMFJX8St7bTZp5hpfkW+M3omZprcc7xrGG9kcnGMy5ezLEpZTnoo2ZHQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+ftTaw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+ftTaw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF593C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723997753;
	bh=lUdBE6hlGygGFw9TxvS789NoSbB0hfDObypqL5f+bdY=;
	h=To:Subject:From:Date:From;
	b=l+ftTaw3oYMbnj8qr/EQagW9BmfwLAcO+A0RSazjemEVL3YWQToJUfoiS95qVNZ02
	 FWySbsvIba31MsWy0TIyGcqtaw3lSwpcpK7hse2o4qqmq+EV2tx8jBRdfc8ZmbkQVh
	 65xad8xSkwKOKOniQbFLAnApiB6hqaxR9FdpKEQ3G6pLmJyEzSn/w32aaykzDcID7r
	 wc+bvrrRmCkw/YVpOats6b+VOCSbyHrvCyNOikWN8GXYm9R/U4kpt+TMU4rtA+NzzD
	 kGW5Z/35hW5W1c/DopGz+ccMzamNlFACscxv1FWAOobdcYcIWRWBNAAu2JeGu7nsz/
	 FB+bc5/MqZEWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCBEC52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172399775361.6054.13448904203242766057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 869383b2439e6a071e96483a810055a48a92b30e8c6d4ec8427541edbfda4c55
Date: Sun, 18 Aug 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723997753
