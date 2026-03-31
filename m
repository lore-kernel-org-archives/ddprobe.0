Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2857430F531
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774919694; cv=none; b=k3CTvegk5CBi2udb4plRbMudxmjeDJ0/YztZxe6SKesD1kUN5xgbotBSH44t9MSdC8MEPmf0ZOSS7L4dTvhQXXgND/8mXuQztZsjen+xst4Shiw6lcU9ZrgTLS+tgfwZXiapeCIM8upsH0yWLybuMWmiU6F/F30dlRrgMTE+T50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774919694; c=relaxed/simple;
	bh=IlPLfvNpBY8zZ88JYngphdRXnX3JLsJuZakWMVL0mj4=;
	h=To:Subject:From:Message-Id:Date; b=t0nIBhMW8VBaHBrLLg1bTz2qo37V5XuZKKO4cPEP7vxIQcDEFMO8CCUETjbaCVZg7vQ5P96Pk+lYhJkNjOgHIvkcfoumWFbltQu4r0vigLviddgNIUfeYo1/IOebAfjmfgdGaK+SqceFCYPRHeA02++mV3m8oRVpMYWwekuTFRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6VIDcZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6VIDcZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C51C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774919693;
	bh=IlPLfvNpBY8zZ88JYngphdRXnX3JLsJuZakWMVL0mj4=;
	h=To:Subject:From:Date:From;
	b=L6VIDcZzRzwl8V9vpifLYQ54XEhNOYd3I42ucjv93C9o8fNFLrTVOcusMHseJyhJz
	 f02QzRc1CTkvTorxGoknxPLQc77CzgFjN0oTLrXN8j/24yAnGCBwXFvSSJEy17A2Su
	 W9+qCO+yI1BctfvJtblW03bJJn0Qzu8JMKzhmW5LgZiNyabHxzuWdyfe5Yll7cHnFZ
	 JLb7dFzWECJdI4sOleZrEOm83+ZbBGPNJbB1umFn/k7qwJw2J+Vle72OXRKqXSwsPH
	 P96tlLrdZF5RMqAeQ3/pyVKG9SslsbRz49+B4h3KRPCwvx/5YpSlPajwwCcmKgYPPU
	 o7o5sMEk9rb2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03E51061B2B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177491969363.12854.8110875495978972194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ea4659811fec6208e54455f5991c650e81156ad280819d1c7fdd34161c40c5
Date: Tue, 31 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774919693
