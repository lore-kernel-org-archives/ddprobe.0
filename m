Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D6C1F1516
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742599194; cv=none; b=D9yRFKpaDZ+L7ow9QzCQY/YrAYyKqPWu1EHRnb6Rob+u8OH/vSnTJp5Jx7NWjgKBRg7SyMUj2hUVCUGVZd6J8HAjZ2EeYM3Jp3icQ24XRBu02v4SB2bNh6AwjEF7zg1t1VDMY/GXRNZRZAcLdPVlM8oy0O3dr0qZBKjHTcM9Fh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742599194; c=relaxed/simple;
	bh=X6qa2eRznG7sQXqlFsncRFNj2zyOxyn24aw6z3Vjn0Q=;
	h=To:Subject:From:Message-Id:Date; b=kM+IcMXWg3o98CMtBInHZ0eyHLYH6ADaJB4KtxzdJgzzB3mPcQQKDeCGHwo+NA+3fi7vzJFCVHHCS870csuWOKUidDUArmQTNeAaB/8Db6rSxUdB4vbIAWcfkbihtOU5wADDQIh0zQYG7W9gXqp1mkr1wnDExZjxt5OpgTs5xZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0NADpAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0NADpAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD25AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742599193;
	bh=X6qa2eRznG7sQXqlFsncRFNj2zyOxyn24aw6z3Vjn0Q=;
	h=To:Subject:From:Date:From;
	b=E0NADpAgEZMXIN1l2Jnwnyq4Jtoz8apJLD7fEHhvZfUnbN597jAFWXldNTk9Fl7WN
	 LFYHKVZ+3jziDAgsHrv/aMLliuW9Q8Gityv+Gi4xB46sAS0YAJPp8AUVD7pmyS6yEE
	 vbfV+3larGftq1jkbkmm1pQvLZKJJI1nmmtNpHPogJSuG7eyFnFcGjDd6DS6nqUddS
	 /omYxhs0ov+8Hk92Fe4gXCQGtdW9oe9Qwyn7Z9mcYLoMakT/1JLUOgJB2w5yGi39Z9
	 foTDtNrn/hC4hAt6znJvpjVuu6rV+W3mSkvxyExH1D8ewaGwQZx/ZagDAEMnXZyjxA
	 5lzKevA+sbd1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CCCC36001
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174259919358.22969.2531103504600363013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c46d0079955684b3f3a546f8603f0fbb8174b76670a2ce7aec8b70b58bead7
Date: Fri, 21 Mar 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742599193
