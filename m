Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A065579E
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753147794; cv=none; b=IPTqF/35wuYttemZ1ApsGPTCFBt1AD2Sf8JZufLF3nyTP1yqwHa1VJOAMWaWsX8pcA8H/vy54StlgpSNBhKbzREOcpAAMkO5CkiyK7TOK0Oj9Lmw8InqSontsSi/w9jGusuviHs9vDGtt8P67X18o2cOihuOVYmGbTSsOHQGcWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753147794; c=relaxed/simple;
	bh=ljcfJksLveZrmPp8hnUGovoMrhSZBzRTaCMBdW91sS8=;
	h=To:Subject:From:Message-Id:Date; b=lcNWp6sTp3yemAhdyV9RKmi1OzcvvZ861o50UmfhcKFDGeXMHcNghEIJjpPWlM6Lep0MBzwTT79Sd2MGNNwszXPlkFPsUE2bM7UsrTHQZV3s438R4dV0NQrHokUnS7pVfKo5cRRLjL9Kab6W8byBk/wMRQc580UzEpzGL8lwqzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDydLCbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDydLCbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69B4C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753147793;
	bh=ljcfJksLveZrmPp8hnUGovoMrhSZBzRTaCMBdW91sS8=;
	h=To:Subject:From:Date:From;
	b=cDydLCbcCIWRdblTr/XK0INzzuwg8ZY4VYL7wiH7dSRIR6cxH162cdW62OhKnGnqg
	 RnZpKEG+mQ3CxV4uSeWWLy3CWQvwDiEXf2aNHa1Il4Kdx4fxhtRsmofXIUlWdM5/JI
	 Dg+zpwiJDmTemcFzXA4+jm/J39wb5gOzO2PNzuqK3+w1dvAi1SitAGvWZZtflApgi5
	 dWHVpHrYj6Y6O5J/N0q7CjDBi5DwEG4V24bUD4A69TI+1/W5w+AwodwLd9N5+ooLVu
	 bYX/wCKj8dRTvW4IvyainECK5vigG9nWXFohjOGSLZixdmZl8gdW6lB0bMB6RCwz5C
	 djPP2oggYO+9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EE6C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175314779358.16495.8545350664348060433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e34b41e6b2ad6f13146be542dd40b3cab51f6ce819179dbaeba074062bf165
Date: Tue, 22 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753147793
