Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426F22DB794
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784255314; cv=none; b=I1R+blC/srgFx5M37/XAufqWmkIamxZuD1Dqhtvp9ppZSCE79jF5ZKqf7hB1KHgrPbkzTMGFTNKAFtN5aa/CfD+poLZzph8wv2cMfKEfLh2r47jefoTQlJ8HZuME1IfqpUTZcdFpD1+BBu0WUubFH963m/lNtUy3M05ypcExbDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784255314; c=relaxed/simple;
	bh=WXoJwYOGeo2HpZl5Q5x2ykZNpWwdTQj4w4/VpK98IOY=;
	h=To:Subject:From:Message-Id:Date; b=LKRqh0LHJijes3yXmhduGfxhd6VS+xXq+/eQLalXAok8qWNFvGd7z79TXnnLzLlLiBbXFCWedif3iR2ETh+cSPE0DyE9PtTe6YyEwQfn469Jzc9jUX6hmSWSAKVE1uQxG/+s5nmForR9GWONbUiC6F9PgwBWVWdRWLTKHEPQG1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZRyAe6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZRyAe6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A12C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784255313;
	bh=WXoJwYOGeo2HpZl5Q5x2ykZNpWwdTQj4w4/VpK98IOY=;
	h=To:Subject:From:Date:From;
	b=dZRyAe6ndZt6mof0Zk5NOKjLUS0MjcdjMIChXtCu/P55rbr2qzkhz+2wWnnSogqfq
	 JCHSAVdc+utich8GygMxL5URU9LSOWlJOxsHs6piOYNteiwY6dxBnyF4yMXhNQDaeI
	 P1w866sCvncBB84QuRct4cc/bExxNARShKoHIW79CF82s0zIN3oGnUPGzzKnCvTVgA
	 vfS1z+KBRWye1m55F23dxvNdGYV2WTkb1nexbTFODtWOMrKBVmCq7+K7JPE06JXnNI
	 jPgnYSESUUYnEPjPC1NcpaCKJht9poYNKx2ClZJPfqL4NRD+TBSZmFMU7qlSBC2Ntq
	 B4Y6plAwFoMBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9722C4450A
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178425531368.18586.4501425221752406471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730db4cdd3930da321e8b28c8e9158ce51aaf9624eae51f38045262d792fcd46
Date: Fri, 17 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784255313
