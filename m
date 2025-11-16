Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAEE1DF985
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763275854; cv=none; b=G8eGygaijzw417U+9SgGWqpxA/cNcaDmSQWCy7OZ9CjXICtS/JWMrKC9ICa+oiX1AmCU9FP7Npkik1smsq7OZEusbWhqTUzUc/4FBHsW1AzttU5n+R5u9xvHJt56X9a13+gt0ybEKRoPTI0FTY5OG9KzoC7J3NITMadGR8WoDnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763275854; c=relaxed/simple;
	bh=xKW04S7BXqwW0fuZbDpOFmyHo47iJulmTPNks+OVs6k=;
	h=To:Subject:From:Message-Id:Date; b=pzK3aypSsNQ0H6WnGL+VQQc0+quKG6pw086VnATiroY6zHXAzVAaWFvHmZmn1cMZwAMLCRD/6TLvkg04DOOhDAx/qO6atWV9PBNGnvN9FKiDcEcf029zitHKhDof2yNb1yj22chQf1j6MLHS5gyEwsL/dSyA97Fa2idgYz+K8T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKOgMw8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKOgMw8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAE4C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763275853;
	bh=xKW04S7BXqwW0fuZbDpOFmyHo47iJulmTPNks+OVs6k=;
	h=To:Subject:From:Date:From;
	b=CKOgMw8q9IMv9KwX6537hqhvhhwObrgpwbLHMS8dN83wsm3bMnPWn7Pkw/5krZyF6
	 rKUfAg+R2eklMxUGQQcBceCnS7uOIsnfowaU44OHE+mL12T/U17VFC+c5ovVLdVUCk
	 OGh/Sree9LWU67HHdfnDNUyBW6fxPSxXsookU2tis/sBITu0mqpWz+8GRz+oe4qDF7
	 vvTpNveyy7rjQDkI3tf2hYkI1oznEWD1BEwVWi43ekJ3CD8jgQXUCO0swiNFy9JTzc
	 hDMc9wExr5/s10FBDsKaN850svlokzIucBteBNrGw31W+tMUmlq86ePUoYslmtTVt9
	 T/fOt6YMLB1cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C50CEBF8A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176327585358.6778.314697001808040542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c081ecc801ae65a39afd52ff8150883917bf3d889639021af7bd169164afd6
Date: Sun, 16 Nov 2025 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763275853
