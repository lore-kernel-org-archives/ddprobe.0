Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7AE81F
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717295724; cv=none; b=dzRQwMi4Mv4Nc10IQ3zrwoGIjH37dI4YF5BXdsoIXD6QPR8tRhIFpV3wz7B7mrclucT5QuevXGqfmATxS1Ldvf7+mlb5yh97ODLmmQ5ZNe2WxFv2jTqV4dfF+5VNeNH15on6f3KWXNY4jPGA0ZvOI/bo2UcXG721ihFqa1FsRNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717295724; c=relaxed/simple;
	bh=smxSd8nwZFP1npFVkcwILnMFbIKSgo7Ox8Q0gyHDVdw=;
	h=To:Subject:From:Message-Id:Date; b=h8z0VvjqurDZQYOFoY2HfZMAdisiT1dnsvFGPXvm52lHjP3yKhAgP6M8HLYX+gpCbwe6MbaFxSWCkjLg5Qp7wcLTYf406CPWYdOP2vsE+06O+3NAYJQmizRYdXnUNyr36Z7fieuIJ57WxFTP2YectYvukvz3U6ZQ5d1ZnsS+u+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aV6EoK7R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aV6EoK7R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A0AC116B1
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717295722;
	bh=smxSd8nwZFP1npFVkcwILnMFbIKSgo7Ox8Q0gyHDVdw=;
	h=To:Subject:From:Date:From;
	b=aV6EoK7RS/JTcToXQrf9MPLwTFXjq3i2E35mOm9hrWYMFNoFDX/D8mfsVyOFezxwL
	 J17Nv1Mk7tj6Avn3lTPZGZyBML+WTSCDAoZRWGwzCe5Jc/IN8LnsdDGOG6xjYZfXc7
	 QE8KJRthKwYntUujUwe03LIDmWfrgE1Lv7nJUy2yyWkExjzIedY5jmvEPLCYwA0yd8
	 2LfIzOrwHZ+i5BAo3y3F0i/ZExmMnMpiPJL5ASl0+ciHo//wyx+NAEadKnMMF31aGl
	 BUeepzSKcpwlinRDULfAznveBe6UcDJkzPTzy4GiQP16AiajUBUi/GKZDNwDoDPOXW
	 Lc7lD5hKIgLEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD96C25B76
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171729572276.13594.17033666576402317524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d5e8630cce1be7a197d13125d6c1b5c65700cac8de503d9b2280afb622f597
Date: Sun, 02 Jun 2024 02:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717295722
