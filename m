Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDB01DB15F
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756738194; cv=none; b=KHSZWbEBipUHSwWX6r12BCv9x5dGKJXaWzZrQR8PqdU2J6g4LCs1K5XKLpE6vU8jHL2PjDSwM4H7JlRL39IFUpFTAFit7KjL7/CUYGREeMh2NWdqjTF+7fy8eVtFx9n3h9+9U4t2aq586hDP2Lp9JQ6rjNC7tTebftScIcMLK94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756738194; c=relaxed/simple;
	bh=pGmdJGEjz1cDSdqnZ03WU5j3Fwpw/7jowwPIbljfe0Q=;
	h=To:Subject:From:Message-Id:Date; b=JE4ua8hJJjaaNknv0Xyu+z7a0Fyfy/CVlhAQQ8cnqar89ref9RVnfLsEchbwYPiJKDVdzRZA2pitBtl5BAKZKHJ+L/X0+fj0qTWNVthJk2Cb1mnOUK+axnP15j0xyqwAFVcVEHoh0pEAHlzX2Kp31k6Gaq1tedAqs8jUDp9acU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaT5XZGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaT5XZGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0323C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756738193;
	bh=pGmdJGEjz1cDSdqnZ03WU5j3Fwpw/7jowwPIbljfe0Q=;
	h=To:Subject:From:Date:From;
	b=qaT5XZGZ3roybZKPI85fsEgM+tu/vKWrWjOHVY+zCdKWpd2XEMy7bJrmRd9pCFw1z
	 hwiL4pKcc+yzRBtYlHQcwdosGiRx+tWPwMKNuF85/SnMkJ3BLwUn/5ZsOJv8DIxIDL
	 2Bza63YrCre1b7gwGOxQrA/5YhOh0F6R2N1JsJeyiU7u5z/+0ktDp0SR/XDFrWBgFV
	 YMVMI1vbkbkviw3zhh8LqvH1NDNPurLVDHQ4VK1Qf245TROlpTrMIssr6b+k6NT6Ua
	 hNIQ9LckHREGcBsIrDuj2YLGkZVnE5jwbFwhPQliSAFnjeG5fJDtbGlMUP6bEEoXa1
	 LH8DvgiMl51BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F365CA0FFF
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175673819357.21514.1009172422078005204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c76dd32d7cf3315a000fbbd4cfb7f23a71f3da817e845aa3011d19733ad560f
Date: Mon, 01 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756738193
