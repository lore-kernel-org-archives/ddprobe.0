Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66AD638D
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 14:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717682843; cv=none; b=rLRHw+pRyzwZ1nmec9vFGX6ci/Gq+ZyGFDfze4YdVJO8vRsqxRJKX1Kt6+g7w3vStOsC4FYcY02Bw9Q1NMkmXgFczLqT6es7t0J3kt9TzQ+sT9A1mqiU6DAIejK0qxxn14nNU6XHRTT866LzPu38msqg8WhQRjT82G2lPVHvJrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717682843; c=relaxed/simple;
	bh=tlNji0hGe0uVOkfwIkmW64r4xbRSaLI2qhz/Gr/glzY=;
	h=To:Subject:From:Message-Id:Date; b=bjnjxgTu6zWUEbiafDN4j+mFlSK5VHhbHYeykr/BPfxKbWfbfGuLZ2ih8UwheqQU0UrVSKbMPkZZWvTqgnlPJeY49Ku6yMWnxtVQlYfPZbBIKU3IPECGYz7sAXPe7dUY1+qQqw3c5+cjgTv/Ii+z82D2hslpgGphW81k64vYPZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=den7krZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="den7krZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FD3C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 14:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717682842;
	bh=tlNji0hGe0uVOkfwIkmW64r4xbRSaLI2qhz/Gr/glzY=;
	h=To:Subject:From:Date:From;
	b=den7krZ+51wHdJdGDletACGP2MCybU15fWiKDxXiL7hOBBJgkU/zS1BrFi4miehuV
	 rRumdss7fl7N4JEn6wVZmGDChU7G3s1jVE7pbCmHwfBXBE6scCBzyryTIzWSfZquf/
	 rCzwrXKfyRmT740JZ9vcwJcpdbh3DYjVMPfIAyzkVKWi9tODCQJ8kxN+eaaulz1xPo
	 CFwythibdir3C5U5/VhG9blsa224e71DVOqYR3SUsMHiWBDC2n7npgObL+LB+9Oi+v
	 pnR7d8U4a6LNi9r0PP4yAKlRAOJAlaGC+X1QwTnVeeO+Gg52uSag9O2hvZEh70o/FC
	 g3psTAaX9aLfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D77C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 14:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171768284280.4240.11898157735732082115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bbe5fe75a0f69cefee4e6d7a89e03e8ca2caa97776d6ffabd2023ddb0d72a1c
Date: Thu, 06 Jun 2024 14:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717682842
