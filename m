Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4EB70808
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765049574; cv=none; b=kqqTCdsdEASVukHJJyGO+mVelV4/Mv94JUQB17zflksjrt9eeg0FZx5KRbgCWMJvPtMJNAZ77uV5vZzrTAq9F1EUu/u7sbvKkfD7+P/8iCXwhgiKSJbdX8hrjcMLgVRWIgj1yB3tPtK1gZy42l6GBpqoFPi7zBPpTXgr3o7i66E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765049574; c=relaxed/simple;
	bh=OMqrAf7arI2ObGUe6h4u2giYxUHBtX6YPAxkwgQ8owY=;
	h=To:Subject:From:Message-Id:Date; b=br3zRaOKHeeACiQp090xVnmN1S2w+pf3cGgAFh8w5gkaMud/buXDFy9HSifCBC4Ud3HAt1MRHxxil4kLQpNHYZaHhpqXB2euWgPKswnwrh4K+hB4kD3nRbAJZaCWqqIu7JV4sjs/UPy9fN+La988nCGZCmXDapyICvlgIn9JcFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzEDo65D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzEDo65D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62D2C116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765049573;
	bh=OMqrAf7arI2ObGUe6h4u2giYxUHBtX6YPAxkwgQ8owY=;
	h=To:Subject:From:Date:From;
	b=mzEDo65DsEtilOUjILpyEFvr7LpaRaGUbMSTPNpIAFZ2EFAzJCyO4YUvUoKrdqrZU
	 WXyi/Jrvw9ImEDOkzGhoIZIm0+/jSO5hn/ywXRLdgKcbupSCppljPbzSPV3qgoYkX1
	 QPKpmxJwwKNCkFVL3ARFtGVQUaJcZJmSjzWlAHZt6qrIFCgJFsFA9glSgkdmyYMmuh
	 mJLsKd+MHBrHG9MI7MdMScB2AyKUuNsSVJayXRJeot2GD/1IgAttje9mCSvRIJdqtl
	 +4yQrjc7mfPBpmuCVEoZzkvadnk7LeC3ELMZn8quMRRL3HS2Eg5p07HWWpakFZk9Md
	 9qvYFnukkt2oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945AFD3B7D8
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176504957358.24271.16556909638794768174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5b78ded98f5431dc8a077a0464c36a80ad4e3c0212e6f5e3f6a1941340847f
Date: Sat, 06 Dec 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765049573
