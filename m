Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38173EEBA
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747426194; cv=none; b=sXZ7TCEZ5Dre2YZDnZRFhCjJzrJ9h7Dpsvt7tkdkSVxwH6usonIaP0spQ3Yq8BlkS9Jf/wEAM0hL2dYJqu2meirHy+nZK4FqmNdHU+9C1ClQMEyVCbtq4Xf8icDNCfsm8kjcRuQKHzB1hX21eNdHlFyvSm109qqR7/BaeskJlDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747426194; c=relaxed/simple;
	bh=LWt4RWJl2mr8i042NHheig+ECKxpMKKfEQuYHRujsT8=;
	h=To:Subject:From:Message-Id:Date; b=gtptvoqWRQN1VWxd1idUrk1vz6UJTnPUqh1Ce2zWOUZvoggWmA5cKBcOO0Xp2ry2HFz36gKtpiAppxV82r20RIR9tbaAuRTzMQpYdK1B9DVfGw4lf3E2YXa2C2WtrIP8FPhn0sbbGMfdZkKDCiqfxMhwozI4Zt7YJSo+4RTsBXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGOGhs61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGOGhs61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A799EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747426193;
	bh=LWt4RWJl2mr8i042NHheig+ECKxpMKKfEQuYHRujsT8=;
	h=To:Subject:From:Date:From;
	b=XGOGhs61Vp3vBjuzdea7FOQ/4v4Dw3VlK4Dn8JYUQB1zSScls1swhgJCeMK1fwM27
	 y8RICPN4JpNDbzGqeugnXl7SUV63gNwygdqbHpavFXc6qCQfDS8VnmQRZVL1dVODtt
	 f/Dexw8PRUI1J0E2xx306qJdJ+g5WJzIa/XJ1Qith0B/+WC+26zSLPTKGNGeAv2wYc
	 DxHhCJmGd65C2ydDHLqnuGlAsoC/k3BK5GEflXHAnHvgaWPKpt2FRqA98GdgKLxZ2u
	 hGsZN8kR1xgi1sXUT1jDEX89zlIG+0JGS8MOXwkN0fVv1CmYcZhndBBjqXfdTxkYiA
	 r3ggNsOiMaewg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92361C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174742619357.26272.6350433528739485280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07dead2edaaee337fddb8cb3911e3a34a83dd60ee31ad8b0a6f76b630352e085
Date: Fri, 16 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747426193
