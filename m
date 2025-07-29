Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EC22AF1C
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753778394; cv=none; b=h/UKMiRt/vN+sSRw8ME2S6ujU6wRwlewhWJ65p4oOO3Kh9sn60dFafl0z+GLMcs5VtagGNmRX9wSp8+Us4BRU37KEIebN2atrSG+vm0jOhD3gdIAM0UjvpvfaoOceJSNl+OFyMIqV1NIJS/lp6ujrm565qw4/8vPtoYN8gN/Xp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753778394; c=relaxed/simple;
	bh=HUGcQItnZJtUcQM2PSJTvy2zC34buQiTNVaX9wd0ljs=;
	h=To:Subject:From:Message-Id:Date; b=NPvpUHqvewDpU7jmTvPPsONuSt79KDP8KhJNi+0iYZuaQ/egT4N7MD0U7piN9GEy843ltr60Zf09rPolTqz4kn/DEGsIm1ngjOijz7/2753PcCtqm3dlTOSoUU9M5jSYD4CLVHGayeEEb4MdkvJxil6k3+fYHSA84nYTSh/oZxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBqrWqAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBqrWqAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3741C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753778393;
	bh=HUGcQItnZJtUcQM2PSJTvy2zC34buQiTNVaX9wd0ljs=;
	h=To:Subject:From:Date:From;
	b=KBqrWqAHnHY7oOQ107Svaml9GchG7G9eK5ec/7OSpmUhYOdn0kuvkL5moNKhYJX/7
	 ITv8izjtVdzeNXT7Y+XhJCd6h6qwtaTJYKATopTlMIEYsKn1KO2tmoFToLL3CQT9bc
	 gNFTxnDMf7wliWcw+PpS/OtBL14MjnG9TXOVkCyrKe9Kqy67iLFFAVOrD294tNUkha
	 GMeD+ZO7t5owC4L6FNGZI3Wt4R7CKVUrDSEIUFYCK723Oo0P6ZW4iuRQMILvF4eli9
	 jRnm1/NB6YrfTmaR3aqtJk+uO5lJcKPbgS77Hmre9l8y5bUwl6+aWFV06mBKS5udB7
	 JELBBFnSuiiSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CBEC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175377839358.25933.4239600476355374402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c517058166a8ac0480264b57767a632d0fca4d69d1a8c4e4b41f09fe4f38d1da
Date: Tue, 29 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753778393
