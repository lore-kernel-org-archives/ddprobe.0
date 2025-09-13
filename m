Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CACB62E718F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757744393; cv=none; b=SN8xkjZmrYQNx4lbYGhdyxIicEenUixL8NFGqbKSKqbF1ms38MizSUuHzjPmYWp8D8TkdlUk2WY6tDNXwQs8rGN7lSoS7mMzvC+xrTdFRpDfx9Q7nl1HepYF2V0ZJDNJ8l1zYpyA415dsrejPHxwsrS7geDyFjprAS+pxAlOifk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757744393; c=relaxed/simple;
	bh=WJR4Z7D2x0Kk93yTcGPOoSsZXnkL8C96uIOqMiDCP28=;
	h=To:Subject:From:Message-Id:Date; b=RTwhnj/Zhng9XGE3NLXVKXrKkgVEtn8rZWyR3+irHmv/sHJGaWj1IA98bYrwAQyvlLFCg9oSH09Mu67Ue+CfSINjngfMMzIkvLZPObrWkJRO8fDFA6hb4y98R6+ejKfiahVdQ0vXJYTHxs3FQZj3Evgjhp3aZLmDNKbwNU8tH4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDoK2AHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDoK2AHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F24AC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757744393;
	bh=WJR4Z7D2x0Kk93yTcGPOoSsZXnkL8C96uIOqMiDCP28=;
	h=To:Subject:From:Date:From;
	b=cDoK2AHqrCOQ9jf/fH7byrmcf6iJT522QPo0UVBUrPiV1QryAlA2lLs++89T/HDdy
	 m5wwz9rr1RTjg7epKGsUP1eWgH/4tk+rxNyCqrZNgxL2HGVrHOYX+E8nmY+q+jync5
	 xHPrzMSFPGl8jsWFQF9jACzqJIzDtj6dOeSvPJrkMcJKo9kbN52TVkiiu6+tANDJSf
	 bzbe1lc7LvWx2jriV/uv/soDZRgiRvam5e3clOtnnmSGHpYFZv4JXt4WPcOFznlt+F
	 cT6o2Ky+tcH1lWLRXYfwfZlBTNI1xI4w+762/0oPicx7RbytlBiAofPE6zgAMo1Zx5
	 N6Rk1uPdtFmsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E371CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175774439357.31156.5532099903622622145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ac38f5f8b72e0cf3f4abe7c422d5f0293372f7c0c461a7ffbb35717dabd644
Date: Sat, 13 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757744393
