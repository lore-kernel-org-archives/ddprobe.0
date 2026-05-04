Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333FE3A169F
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777893454; cv=none; b=TOM9kPIjiyP1yOu1rAfUqduXetRJOqRT6uyquiHRPGVW155ndcpBa/JQUxSUo9noj1iKjVYdEBUEP2bbg/YDwqdxOSRkdAdTdnBJ1bF/4cPxLtFm8Q/9g1vXML6fefqBPsidu6rij6xHqRZc2hghNJeIWi425bUxYLhSjcwDPt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777893454; c=relaxed/simple;
	bh=komv8U/69tzsQqX5srBQXtWAH5zG7+a2WPSiUoz4cgk=;
	h=To:Subject:From:Message-Id:Date; b=B0mC/fGkrzs2780OXgkf76LfnkORHg5ve881PzYmhziI8XMm7nVjro6m1OB5Z3+oeI++RNRjhlREAh1kTUg6q/UgvHpTLeA6WDpifVqPkY7/3BurdBKJ1JKA50SyJabXR9Zd6I8SHn1Opp+koZgQ8DRhQVPPg0iH/cuGoRrIIVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxlsvsLB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxlsvsLB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBFBC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777893453;
	bh=komv8U/69tzsQqX5srBQXtWAH5zG7+a2WPSiUoz4cgk=;
	h=To:Subject:From:Date:From;
	b=hxlsvsLB7dR2dfauA0dxm/IKRavqfFlIgeszvo6ZfsuSebK0AOVMC8/jIQ8ulJUNE
	 fm8Qsoqi3gsFFVd/IeY6vtUGHr/myIL85KBLa8+KHDjiUBgCJnsF+NzCBu56We7oxY
	 U1cm5JV5Hbzrhl2RLTtPd8NmqaV4LsMpaxcrT0y2w8wlYf4llu92I4Tz/OFXUTnmHP
	 pEe5v9WtDAquieTfavULxYXLBA+w6o1Cf4j2tBoHYo2zzpz/t/18jWWatez//0AtPP
	 aM4Kb0fpiqkMMGQir4wqq4JxAaL4COmyf7vKtGIFCdLYwdgGlUYEXFuVPDZrnRPBMl
	 oUFtmDbnrjp3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA70CD342C
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177789345368.15646.17826631011575678200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee34e69a88c26a1d892adb6e98b8e7b972724cb44eee1ced583763eb46260919
Date: Mon, 04 May 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777893453
