Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055A8301704
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769874834; cv=none; b=bPoARes6H5DEtg7FD2xDpb2p6IRvkiA95+xmXPy84aD1tS84uk9jaAlZHvyuKtzI02YjeFA5+embm/Nivxjdyo9xF+Jt79NO1ydNBWrKd2LZC3bqkc52VOEruXFB8U7tuvGUx9JGf33HgYt1W5Eqlc9C1v9xLo8iUWdFOh9j6dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769874834; c=relaxed/simple;
	bh=/PlLth27pjl5HwHPFHdewfKNH0rpZVdebEdtMadc2KI=;
	h=To:Subject:From:Message-Id:Date; b=UBT/X4H30HDDqfeyxGr+euGNOQtnVeB5TyJuEypIvs+NPvJIhjX2fUKjy42kDZRYpFLXrLXdDoPzltBrp058H9b9LPAw5MWyleXZ+l3j30DNIWV2kZv+pcGWDCXCF1JRKH9pjd0dXz5mrErcew+UBZHKqqBpYM69tMXaDt9xDRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBQLkWMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBQLkWMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F292C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769874833;
	bh=/PlLth27pjl5HwHPFHdewfKNH0rpZVdebEdtMadc2KI=;
	h=To:Subject:From:Date:From;
	b=OBQLkWMfGctF/0gvpWCIPaQSe4weKS1GuBk6VvqLp84oEADRP01uoHfjD/YvqNROw
	 C1squfUmN6bbDGNmT1+6vZ+errG3zWOufbvdL0Nk5yaFKM7cs5WGJ/BitQe1KcyILY
	 dhcNxaGOsQ1HDP9GG9WQVy/bTEObLmDKkRlBZfVRKVeeqgG38Yf3XqQCZcEStv7zE1
	 0+8npI+Y/GdD9mIaezYyoaBW+lYTmwoUrA/mlyx4vCNzFa16ty0705mB0XPA4iheVx
	 Hwkx2UjDQUGysc8FPzPwaXWrQ6FRksiwj7P/Iz52lyLoBFoyYKzqT4NM+odU1E/YTI
	 e5Bk8zBwP/G0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F4D49C9E
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176987483357.9426.4510331450287065824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aea960ce4e8e19f7febf1569a2fd3b9f0dfffbb95db9efaf5a447a9bbe23ce8
Date: Sat, 31 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769874833
