Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2665913A244
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759942194; cv=none; b=BM5nBxRxZvGEcKjSc/FYmbUm375YThL5QE2BvIZN4zTKxm36qi45FH5bxeCE77+BZxncHqLY86UvraNMH7V0HlTwuyrNdvUk0QzB3vCmB7WTlwXEsWgoVqy+lEWw82MJO2LPvCezj+9xcwU+krjnPAPgvbASoa5ltFvZbuUV+gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759942194; c=relaxed/simple;
	bh=P27qSGdUZicT1klpWaaqTZwctPdigB+g3KRpe52yiPY=;
	h=To:Subject:From:Message-Id:Date; b=XB0t6MlfxrLJQuTWhUKOARL27byJ1BvLQxH0NXxAwvaCxx/QoSBbYxDKrGLHo+JleHqfr2Ck9G20GiTALiCeKp79wuvMcF3PnsRbkHNS+irJOEXRIr+LNVKfanmxCGWPDWR1oC6lshOL65q4WvjNWZ0yl7EEJB/fHRf8aDzdqAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoLFWpR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoLFWpR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A408AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759942193;
	bh=P27qSGdUZicT1klpWaaqTZwctPdigB+g3KRpe52yiPY=;
	h=To:Subject:From:Date:From;
	b=PoLFWpR7HzKYyq0wIGr/2/rDPiLO3jkQuxyuQG9zl3H6/AzOoyx5M/6Va/idN+8+r
	 yaKog7/TNZ66znapY5R0tb/AuBjegkN81o1A7ZdihOrUfU+VvQj00BXZVX3IYB0K66
	 1D3Qe6fSovJOjtjPZuZXeed7i2MnBbPqabEALY8BLSYzlLD2fZxpEfItzsyR0Tg+Cn
	 CSCfDuaYXzywXuputsrHA2f/7iZ/ml1fvSeFzEf9/aSUq5mCeMVMkWjRNukh7iOSUB
	 g/1d5yzNVM7YLZBQRzZ+jHO24+Q3hCINWroUwop/TqfenSlnjhtXLkAMlKsUqlJiRD
	 yNuIlUVoOArkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C9ACAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175994219358.20575.11584295152376558575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49f15050e11db9c267740782452edd8340978edeff716a96c953676bc3055569
Date: Wed, 08 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759942193
