Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393393C2F
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766879634; cv=none; b=LaZ2OYu5mdEW67Hqn1jnxgy/D2BRBZ2+60r/8h4Bs/Rma1H/hiM+bX8BTsspTYS+JoFTjdDeAAc7fcH0jUL2RZaz687PJKNs15VmIDIvJ6P/Qy9SrKiG20+ehWaolpz2bIpyaQfhAXnut4RaQKZACx91rs7gFLusFZc43VPxQ+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766879634; c=relaxed/simple;
	bh=ZJhwEoLWF0cHz9Pa++T0hFNGvmnKknXewLp2UKZNuMs=;
	h=To:Subject:From:Message-Id:Date; b=TUZlCsuSlWB5md62e2xpqUl8srXBbjWINSLVpdJWqLs00CCNc6Ae/eYfDgsh37+BlN86rP5ltl5XMk/DggE7bH97Eafck0VSYNx4odkKeoiCF7rfyXzfEdefgXDj8vyw1/O4XzrOUQG156BoPXczxIrPK94nsV+nTeNOz5w3otw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfr4JMkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfr4JMkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD320C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766879633;
	bh=ZJhwEoLWF0cHz9Pa++T0hFNGvmnKknXewLp2UKZNuMs=;
	h=To:Subject:From:Date:From;
	b=mfr4JMkPkFjaBCq5FNN7JEmRrsqmqSc5BvQpSV0LYwf3IHcSVgwUJwwb+9EMyYj8V
	 aSVNkHhEqXQ4dYV0D8FEXaGNt393J1PRtmq4o/ID438ge7JvvKWwCnBxLzqskI9qX+
	 UfGmcYEK4o0SNtABkvotpyjGVtGKAvQ3hQ8IcL9PGGOBGRhE3oBsszwD8TBkJKuKTp
	 12CTgBcyLtDRsmkzckQbs0d7L4tqHPPMmtYscn4WWl1FM6crlktE/jhHbw3R6Uasok
	 M7H/Ge/hF7AbdjrRzgA4/D7U+sOLeCiOcXcqA9epL9lhStw/x3JiNVpZltg1b+T3yC
	 mjGsOgjDn6Kyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D04DE9271F
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176687963361.29808.18347033850475593874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3cfce12277d535e5a79928ff046e9d0de7396fe34475e670e19ad2c33076e44
Date: Sat, 27 Dec 2025 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766879633
