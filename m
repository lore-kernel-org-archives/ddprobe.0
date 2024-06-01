Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A2A6FB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717211663; cv=none; b=CjY5nTevA3RGqaod8ZZ0MBhqmSzT2t9aTSJrClDYw3UFIAaV35CcZhx0YWynqP3/RhAgS78E5OH5e5Az3sQmAJn2Q/T5tWX9nInJCiOZ8Xuqe/hg3GuiuwLvQauPquplML3WIVMIRDHFsrUIXQU2/85e63jhUVG8KtwPKfsO8Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717211663; c=relaxed/simple;
	bh=4ZMc3c7xMNTm1L+UiJRiF0FYjsaH7p7UTazCzsi+DP0=;
	h=To:Subject:From:Message-Id:Date; b=O4yxiwHMPVgHnda9rbL6XshbAMGkldTkgJhD8diquk4QlNpjuC5s1zx6WqnX08wAlZQCELVmcuStZ52E3sqAINAfvJMo30pX7UVT8q2006rpfWm7jw1mUtxlRFYsbMFGY3qSB3tkeV6f1YJNHAqqW790nLSsFt+4XNePmYxiApg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lH+nnA6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lH+nnA6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCF3C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717211662;
	bh=4ZMc3c7xMNTm1L+UiJRiF0FYjsaH7p7UTazCzsi+DP0=;
	h=To:Subject:From:Date:From;
	b=lH+nnA6VPubCWlgP4v1EeXOfLMG/sPWQLIspe+VGacB0OH/ZHnKY2yOaXRVdttrKA
	 aDrki10MTEnSYF34yU5/HwCWFZvnuywhqcwhkNqn+MNGrnrEf0D5vak7OInVJvhdEN
	 rPm62V7mUHLeJ2Mjikkn5S0EMjNUoLc77JbuOvRcb3C8fCtgbKkEd2ArSq8QsTQ1Gz
	 BeLs3shSAxenBoVsbMtdmTI2Pxn6KoN4iFI508/HubY799rW3JHOweL29kcEpymFcz
	 VaMCKNydbgmO97SpTS7L39W7IJIthj/eOkQQorBbowCRDL5AdSLQdb5niJ9ZB+y42D
	 OsSQ6pFi78l+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E29C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171721166277.19039.13044382529295457966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: decf0f878bb1cf3b13e69623b028ef1f6eee6e4922b154cc101c4dc8057cd88f
Date: Sat, 01 Jun 2024 03:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717211662
