Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1188F58
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735710954; cv=none; b=dwxZt4NKfi/2DGW0mgdnknAF/AnMyHJj4cH0AJ1qp8c9ujYTMRSOli5hczfs1wecPuVEFudF2LvbiglCJ7jyPP8UyY50OtA/QHbSKo/+MnfB3CgAmvgp9RyCXolUYAI6pjWYRtSajC0SD9V+XIR2dgRMr+G3u4RegniOZw+1MY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735710954; c=relaxed/simple;
	bh=9UKcr9vRBhptfERIyMwUtOOkrW1Lf88JMtSchBwDLEw=;
	h=To:Subject:From:Message-Id:Date; b=kbSgw0QznTGaWX44kBHQ9l82GKy8R3bNYq636HgzctJW91Rdq9sZIxO7OOXlqHL4Idz69J3cVsizfyI7KtEmpIRKsuZQYUpRQR4vFYZtx/5m1VTf+YU7FmZuYqmXtJL9osLZ/J6yP6W2dUApqBQRO7WV6kkJ5Zvc8L7s40aYLdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiRYiuqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UiRYiuqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2C9C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735710953;
	bh=9UKcr9vRBhptfERIyMwUtOOkrW1Lf88JMtSchBwDLEw=;
	h=To:Subject:From:Date:From;
	b=UiRYiuqWfYYixTRE32JuraijFwk1W++usAFJwWILXHXiK9EKXrGR68hIiKlbUnFN/
	 0Bdf7xiAgSN52xjxE1xNTCP6b0PcZoDXP5IrMk9jFuXVj+YD2sRgm7K3u3AdK6KaX4
	 EFTZRml3qniaxhYFlDrDtnxd11O4YfZnG2EJSOhPFPamzeDgKHYzq7SimTMjHIheTr
	 WHnCOSSim+E1Ky6NCbjiRCAzVnqkIfFMxw0aMMnpey6DEyp7rO2+Oxu/6K+MukhMVS
	 /emnjyFkxDj0cv7rTLNfgDdFoA+UjaYY30qohaGtCSUhFTUo3BuOOR7QRTCy3rp7YR
	 GLxL88jVoS6fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967EAE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173571095357.17132.1208002657665080627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0326a3ae0d347959b5b793481af8e87fa8453c3dde445cf9c8e5267a9485ea2
Date: Wed, 01 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735710953
