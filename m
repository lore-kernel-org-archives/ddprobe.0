Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486BD3859D4
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783069114; cv=none; b=oExL8hOBcr+nbLKe4C2wUgcCpRI793Q0lnIkuA8c/1j/ibGtvgbY1f2uofLOVAy8VD82orRAejQBx1EOIAWrlf/nyVHC3F9fmrOd0Tt3tqNtDHLOIVB3brvzr9eV5K2JVO+jwgzXMFpD+VxfU+zPJdX/rgM2AY9/DiYL7skTay4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783069114; c=relaxed/simple;
	bh=yOgYhVYQ/4PskWjrHep01wO776vjWp46WE5pbkZrv1w=;
	h=To:Subject:From:Message-Id:Date; b=OYkH3eb9kq0ty4EUuTOzetxwkjFmDXDrsQqNhbAFz9jyK6iJRMA95T2PGXgk1m2uCGQ63kgKPNjpn2jMH6whqHmMOtIh5n1d8paiohxbCOTbe8/zGcJ/gQJ6z/zZHtYSvkCq5fxMLFmWCd7cdPTr1SLro2aJip2VPPTLgkrYco0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6ckNpad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6ckNpad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2E62C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783069113;
	bh=yOgYhVYQ/4PskWjrHep01wO776vjWp46WE5pbkZrv1w=;
	h=To:Subject:From:Date:From;
	b=V6ckNpadN2DKZm7zCV2myYGI0xVmBhHtSEmsRouq4eXDkUf4J+0oNAWGQRINnYNhX
	 jUBtpBX0sQeDwEDSFrs2HbjnORQbLFxIpGTBfZ5613861yf2Fudtgi0cPLryW8QuDz
	 7vs/a7msSSQXzoZORaJKBZT/KZt+Huiz7hTipzUwg7/XdtXd16PqkJLg1aL6jAw8yc
	 QQdpa7xywFxXNFEZVk9AtfXsMxdz1bdsgEok+vmDHDL9QBNcn9ifZ40eKRRB3TVrSR
	 2Qqf1oOaNTyhLLtLLkAL8gKklqc+8meU5RsICeJIh6ID+dYyBIKAw+TFofTdjacj20
	 31U5mrhNKGy3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DBEC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178306911368.28818.3093227697270095629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7bf587f489d0c596fa0d6f310bea3881020ad310127fa0e9ad32a770a7ac5b3
Date: Fri, 03 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783069113
