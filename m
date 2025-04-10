Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A431EE033
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744300195; cv=none; b=RH4wVOJptF4ND97Dm/4KImDUoZqfApGXCBhCJ+OJbeqTHnAxeaOoI0mtFCj4j0sC/n9sNJYEOnG0uXEZbdB10c9/6GA3aGeeN4uc/RRLM5Vf5ICUScHWiAhk9cPjF/xeLZsTk/TmjkwD3nkfnbBIq51c7akFF6ETWrPB0c66AlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744300195; c=relaxed/simple;
	bh=BZysmdbK7bg/yWiROZfrehlXWHyWg686romxMzFvxZI=;
	h=To:Subject:From:Message-Id:Date; b=sgTRfzrV0xnkC6lpHdqFK3OCd+D9LZQRELNjwqDVcOqPdgWDA5GryfTytyZjP0TA+Exlv8TKlPItNjOOovqbsqt7cLUyDvhxDldWoYpRfhtc4SnBVTKNOmFoY+4eyKzZhstWWBpZzBYxauVaQKK5l5RbxootYf/2p9dyqyEbMSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOZw8Swz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOZw8Swz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A880DC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744300193;
	bh=BZysmdbK7bg/yWiROZfrehlXWHyWg686romxMzFvxZI=;
	h=To:Subject:From:Date:From;
	b=aOZw8Swz4mSOM9Q4kBW1dupBTzEVY3gykrPBxL4CKOI3OW1SdqEzO6OHUXUgUCeAu
	 NoX/jDHHIlMlAdLbPzY5j8x6HpPoXUyAv7AJl6mh0N71PDntEbm2le1SjobzVRV3UI
	 mBIThOwIS+iH1mYlzVaAWZ5m/wZYYw+TrGiIn1rlDmcfPjCwPQBua+R2uE+iokNn+C
	 H9AclxO/ln2G8othWkbmzKZn41n09hpTAy+h0nimu/9llijvNNqZ9QRAjtVlvSFx8O
	 O210lrmE33e3bVzSjCxxedJxPmohsTMna/RxVAGhesMpeuRSbw0s8lhdMUfNhfNa1g
	 bv/J3uQf+ab4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93243C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174430019359.9668.7481487807574683470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ea9f141c0a8aca2e78d332d9ad3afe866d74e6124bcc04fb43ce30174a8d7fd
Date: Thu, 10 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744300193
