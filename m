Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97202581
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743652193; cv=none; b=GMM2uBp2DdFcOOYWmJMkpumSFn1hEAqg4fefnxu7yiQ8fuKOSCbDd6zfzFcu/CFQ9bnWuL/NwvpkfoStgTJo//aW1BOnlUFdgWClPrisBcC3m/4qwW4UQPjmwCpB28d99EH0Ztj2TfDFg3WOave83ukSxpD2OZVDMfbis+GwL7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743652193; c=relaxed/simple;
	bh=TsVncVHilm3jyFHatv2jD2OOXYBN8k7rb2a6/BK310I=;
	h=To:Subject:From:Message-Id:Date; b=JlTPGzzJ36/8ghOSKEDoquKL7MuohGFqp0DuySkbqLN1ICgG+h9MCFd0xMy/8AxNZ0L+zPRAPF1042b22g6UzCoIVKdJkzD2M6d+4wQU8NruUGhBhfYCk2z0j4z82kHAxAnASunqeuwliXk/bkU9XvJlRjkBiekqSOOysOLtLcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZtc8lU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZtc8lU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4650C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743652193;
	bh=TsVncVHilm3jyFHatv2jD2OOXYBN8k7rb2a6/BK310I=;
	h=To:Subject:From:Date:From;
	b=kZtc8lU+Sp0LN4kp099M0SIZbK4TD2fO11M2mxSCsuJdH6202YZTRyU/hovHd/9v5
	 iEj12fY/0RnSjQyks8AFrTWQ4dazGka82deLaHsqgcCLvpywN2Ij8R/nmvWESruBJ4
	 vpZXCq4sX8popva7Z4Ja0dwKi8vIhJA8udR9fkPCRYbuxRwYlc8IbL5DXyQ0+lVSAS
	 6ReLjTT+Xiq8Bejf1pkpEXNZuCU7PowumZ6rKhsk7S2cI1U1InugECs0BdbawhiWXl
	 XoURs/K3Oxu4hSeqsMnThKphBhfmCjT+UjI2UbxpztQevJRCAYs/GYKeNTxkrmXvfW
	 pvmm9gQ7h18hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA06C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174365219363.3059.1733245170291032918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07bc714c42698f13c98f5e5d9eae5d84ccb6cd85c1bed06d805e10cd063daed1
Date: Thu, 03 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743652193
