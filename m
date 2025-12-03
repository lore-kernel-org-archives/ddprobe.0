Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCA323AB98
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764732174; cv=none; b=BIq9DEc/VUIf3tkeZbevjdTLbHtmgmv+kyShT8Ixd29ZBUQ/bF0DHCPUseHKYAlQrZp7MOn9zscapg1Iw5b1avYfd7tl19hWGTS5MCXNI2apMCz7JxG/Ej2s353eUzWc/vYezKCMgMsV5cwirmeRMp/yf0IS90Ovfj2zPXAf4ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764732174; c=relaxed/simple;
	bh=8YYXJNdU9yg8eB4blXacI+FPSNx8g9dTJZKnrp/Xcxc=;
	h=To:Subject:From:Message-Id:Date; b=SboU8CpofmYhWmx1EyL9mMpZrsDhq0FuwS1rWOGOPfuys91MwWUgUSPNyJ61T6Mq5Froe2CBpNKlkfpLqi18a2+MLIHnRAJ1vST4WwSW+TCCou+Ps5NmvGlnq3jCDtLHlcxmN5L1oz5F4U/vZLpDfUT1O89gNM64ee4stS7yzd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwcDsVBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwcDsVBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E8CC116C6
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764732173;
	bh=8YYXJNdU9yg8eB4blXacI+FPSNx8g9dTJZKnrp/Xcxc=;
	h=To:Subject:From:Date:From;
	b=MwcDsVBZKVu7vuC50Nw7XQrEGQ2tICOL1UiKnqRCr+xlCAhZYeDV5PdG549NSpICI
	 tnbRVR8lokIuVDLq+m5AIfusWO7I/gPL/UcjYUePAtWAjFTPTgSnpEDYtcGsOmQ8sq
	 LYdzNuC3tTrJxzYZF4wtXqXD5JGWc58Kz1v2ITOU88tt+NU/IjYLB/ANWDjoFj9VPC
	 iFhYzWPxUqrF0wCUsqdhSKEs1yMa7RUTL+GIP0jhglaiIvGDAOsadKNlMkg/ihskrY
	 HgNO5A4sC9MjDq26c8/JB7aT6pDlBJPPOkyM5wmOCx3qRIpT885ze4C23nannjyevd
	 JTag8hIc2xByw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93597D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176473217359.3004.18079432546425345283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c69d11d1f0e4080b59f91a7e7e916a951ff954af20cc9003a599d3db7a53980c
Date: Wed, 03 Dec 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764732173
