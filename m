Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F7217A2EA
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760483394; cv=none; b=SCsE6sFmgGNxtgzw3ogTXSLD+eCfhY5VsTs8m6KSsKaKtG3vRWLkyMTKWKz+q3lO2yGWMWfWn/0h12Ma5teV9hdUZC10gf/GZR455GJ52PiabRE01jB5m9IAqotIqAxiHXqK83PnHLtfFu+WWSrJAgwqvC2m/kayOSfhgvh+x+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760483394; c=relaxed/simple;
	bh=KBdJ9xViIPUubBY7VMQOorZgDWSI0F1BzR+Za2ZFyQ0=;
	h=To:Subject:From:Message-Id:Date; b=dp4+d77rgWMyhaKc01f59SnOSB8eqW+r6ji+2wXxi98qMayE4VLRjWEooGP1y9/ybtPufBtVimP4Pvi1AmcwlkgSqTcxz/rMVbkRWarbrfXahFKuJiq9lfeZT1sWqCwJs+vydj6UIc/6b4pCCF+uSZqIxJ39+8ArB5Y/tkGeQ5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSei8/aB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSei8/aB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DB7C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760483393;
	bh=KBdJ9xViIPUubBY7VMQOorZgDWSI0F1BzR+Za2ZFyQ0=;
	h=To:Subject:From:Date:From;
	b=WSei8/aBOIjmMmC0FHwTScbhR24E55guv8MdF6rDAtRH44aZbIEIzm6VFzQYIhcru
	 rC8MdAhEvI7/AteHHbcBRRwgVoyv4+cclhtvrHL50tzqMFWRZFK0Nh0IOwjoaDOb7W
	 3VDdXyIDBXKEoRHpsgo+XAwuSlodzG5b2AjwXHjCFoPgQlgwBow2jDWZliIIET8A1N
	 RyK8nMJiOBUiAE0Sf0ef893kCf2VYn59+rgk6L2I2IHPLmrQM8Sze/EBaVGoDZrBpb
	 edbyQ7mptrQtppegn7Nwf8QAyprvle5L1mDL4fuv3M0GJzcYVPBgavkQzASaRmrEve
	 iOuu2fC0QW0rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953EACCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176048339357.30452.17342288058301585440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41342dcd58a38463a5dd0bdafccf5e23e14e8f5e91edd1f405b07c94f38aed8
Date: Tue, 14 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760483393
