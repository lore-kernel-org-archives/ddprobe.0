Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA4F48A2BF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791371434; cv=none; b=l5REut2VL+ztCZJmMA54n+tbmun8TaO1nhUIlbRJvQ7AcrC+ExQhI5SyyS4GyTN2tq8ynBncfdSoU6zd1t/DfnUG5v/+8PtdEgTY8mhYQWuD16b9zol0DRfZN4wGc+mPJWJi8HV2yEjShNrWq4gwjGCq2CQmNcMg21scOHUaDCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791371434; c=relaxed/simple;
	bh=KFQio2A8OdxLLcYJRnXrwM46c0UYC03sz2TtPzbUa1A=;
	h=To:Subject:From:Message-Id:Date; b=P+brgXDHCt4kdlEyv9dG/lf18vMsim6MWW+ZrotTlIsJZPHbUT2asA1yV0aJacpXUu4PuI+qDUGvmxPnN7Dok7zSBBUtl2lbpda/1cAkuXTO61V+i/SOuFQoHjV+aTmSKoSWMUbkifWzv7aXcp/oSlaAAkoIFMm90MLAHEn589o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQU8Zjfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQU8Zjfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2815C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791371433;
	bh=KFQio2A8OdxLLcYJRnXrwM46c0UYC03sz2TtPzbUa1A=;
	h=To:Subject:From:Date:From;
	b=eQU8ZjfkJN+htnBKhYZi+Q1A1V9EAMvPE+Wmpur/VafK6674VyBR1JJwDl4HdDltd
	 1kuIFnwTRFRRUrbVvkRCo59EeemGL/NrzWtEBbhi63Ann/UrBPpweTQq/BxXqVuTuv
	 wadcwmsYo9BLGbOZN8zOa5kO9Tnr83opemMEuKFdEgmzYaSnW0hlHsHk8XNS0mGSmo
	 0umKXEDLNsGwqdhiKVSH0qRQvdAqt0GjRfq883ZNcQC26WbF3cb/GfAjWIps5a+1nU
	 hc6pwSF0IUbVCVdYRBPnimMi7eP51W6zQm4915P6h7GB+iteiXArNbUGe/Th2JyxY/
	 LN39D50o3tH+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BCFCA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179137143368.30600.15329407611732083811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 851e242d8ca2bddb5a5137f755cd1a5bd37b0fd9e5a70077e04be44172511e1d
Date: Wed, 07 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791371433
