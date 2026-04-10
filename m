Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C6E34A3DF
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775852854; cv=none; b=QibegCdKKRgwSsKVS3q9GUNdYeG7BPbL4dsEulnctfHPK099m4MgC3M2Adfbpc6uo/N78z3+cRUKnoquiW7L+si3Ln9DNjMD9hEg431lp1J8G3dfDmSu8MNJzvmBb3DdcSpqFUXIvipj16aiMlY7FnClciPWL8NO0JvAI38Ylrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775852854; c=relaxed/simple;
	bh=IZ6ymUrpQqj7aj8KP5EbDjwgViqPq7kGmA8R7P3cMLc=;
	h=To:Subject:From:Message-Id:Date; b=khLPDGH8+2+6UclkpJCzEPByH4jHRiVpY38ojF03tj1JjRaWGAAibGpbSwrt6yeUFucBVpv0OCW/8Z8auP6gSrb84aWltbiH6TNHdZ+/6h9aL6JFlDpFAy5YujDFDjhN6SDwv6ltNL7Ch6bL1JY1tOjL84A66zEm/I3wEVzykjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pb1mG7us; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pb1mG7us"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB23FC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775852853;
	bh=IZ6ymUrpQqj7aj8KP5EbDjwgViqPq7kGmA8R7P3cMLc=;
	h=To:Subject:From:Date:From;
	b=pb1mG7us3XD2hQ4Dvt+sdRNUIobljgyDzwo7HAURDW7S9SaZvNlT24SmvBxxZt9PL
	 CnWoyOTS/CtaxfPitfny/xhEbetNm1mTLuWwatoWFfXC/vrUzSB41nzO9eSVmJJ2Sb
	 wiO3nPjVDN/bQkobpb2Q+4IYhiiowEt1IqMmvqNbmKZlKxfinMyz6gAoEQdVw6MnMY
	 wVwUF0hmLWn5/1KI6+DvnBIQPzTRuqG9+P60/q+9Spmi51nCfkyG6296GcuwSluRUF
	 UTmS9E//mwXap97L8GhEiEvMYoI428QQNaB2iCGDbrrEQYgH4At96SNGwfIUle0zUp
	 l0BHFg6XvpkBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0E6F45A0C
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177585285368.5349.15281756402768441034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e36c9c87f663d06a3aae6404850ab45f7c1ff0864ebc11b6f81c48395c06b203
Date: Fri, 10 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775852853
