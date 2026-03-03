Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D31537B032
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772573694; cv=none; b=m6+x83ugjBbw8O44yZm4PrTdR1A3zkAoKNSsbBqxLlWNawXqtY5y8OwERFHaWtehJOFaRZeI1Ku/lBYTGQkeCsQ7fvcWonZMRuTBnW2chyYQFLXdnmJXeB1iQEByiJ99d3PncRQofu5h85/SwwJ+ZA4ePWQ5GmaNhjWNdtgz2g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772573694; c=relaxed/simple;
	bh=xsNVfnJk8ofFwwVRqDyccQd1K00iYqKaeRU6fTErULU=;
	h=To:Subject:From:Message-Id:Date; b=K6jktahPtfjXybgXCaEkSm7qO6/RQvot6WMb92zWSG42jrQ9QZdOXWJD+NXByJPDn88LnUXnaWsrC+iDfU5JTEqbqPHLLdfMFELGSksacU8a1REUBytTi3aaJfT4PRhiyiW+ztsZHUS6vd5boU7WafzueOe+Nzz2JtFec5mJwHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bj2pYOmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bj2pYOmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7245C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772573693;
	bh=xsNVfnJk8ofFwwVRqDyccQd1K00iYqKaeRU6fTErULU=;
	h=To:Subject:From:Date:From;
	b=bj2pYOmdB7R4agohPZXYmr14xsi55nvB7SKYWE8XIRPzDx6CKg3M7bl33hjRYeMZx
	 LbU5DphgPXgosykzucn4mOByAeRxJQfvLp22TlbVBtLD39aNjriPsHxvNn4RRXuKiu
	 RrBEJI5PpyldY3p41+Kgbn3BH05bg9LEQwLGIEEGDKj3r9f400+q6CoNdshkU9/MnM
	 eZhrllO6u2KPgMKpEyKOappZPI6lfdM42/0jvwbmmKWC0KW8Pg8s0GW8V/MeMmfPuD
	 NqiJ0aZJygaiOlwxiM7G2+/pUf2+yNkaZFDlxZpKjFd5VZ7yrUGIa1pqxVNoZjAKoc
	 VDn8l2LMdwsag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB676EDEBF6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177257369375.20182.6535238633063141418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4077a36338e6f3a7c27b44918856ee2ee14d4edd8b088f91f8ca8c2dc2321583
Date: Tue, 03 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772573693
