Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C46638F9C
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771766094; cv=none; b=QV9LPnaUCz4r/5oPkYj56Uw3H9EJV5IsHW93TGRtGduhi/Owuc7KtuRRuFumF1MQJD5Aw1H3VZvqqt31kr4urFlUUsq/BxAOa6fZfWZS48Seeh/OPTLFxq+NVTB/APEOfVD/MIy6ejEpMy5v7Y2ZUrAZEintMOC3WTPTqL6gROo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771766094; c=relaxed/simple;
	bh=BM96U2cmaM8H6qupSFXk5Iza+88HeOAm7+6UjIM3e+M=;
	h=To:Subject:From:Message-Id:Date; b=DN4tVJB81tT8E+zvVQvKEaB+vuLBrumkC/6EUGYDtah9X9JN5d2gl3ESnWWuPpSatmj98DTE46UnB+3KRCgTGBH3gxn/t134J25wC5NCf+u8t4EmPmoZWQN8B51WS2lWqll8Qb6oeiNFI8Ac4PGWt1wZty25WPZtzhKpRRlW3hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMCMVGGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMCMVGGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C27C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771766093;
	bh=BM96U2cmaM8H6qupSFXk5Iza+88HeOAm7+6UjIM3e+M=;
	h=To:Subject:From:Date:From;
	b=DMCMVGGseq11NpkuJRrZvQ75HcALZRcYZgWo8I0KisekZ8FuToLQBU8g3zuRh+UTQ
	 bkOhlyIn+lpa+xs7ybVMoM+j76oCw4Li3JsA6oC/USSF8isEGWVSx4PRz2277EKlix
	 0//V81vLtsfgoVlFy+DvHT0jBDJlKw6zQc0viirIHuqWJB6n1QwDeoDT0PYMfZVU9t
	 P2s/RwySbOjpn7jt5ziRfNGjpR+FjWqCmojNbTZoCW+/zCiS853BucuAEkKXoJRpHl
	 hsp6xtCGbs9+59rK0Zr/L9ct7rbJGe7BTAad5CpWz86F98nGs9Jn1ovMWsNl4X+Ets
	 LrHQZICxUScTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94582C63680
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177176609358.1564.6755476264353041425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476156adae45cd39068412cebb20615671bbc62f5b44e88997bba4613de1ef28
Date: Sun, 22 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771766093
