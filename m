Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF5F1474CF
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 09:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715592143; cv=none; b=CHgl9bf610bCXL/C5CQJ5nOWBOSI97HI8OU4x5RIV6nqoRDzFY1dPy+j+2C085yaklCuX7RKtt7+rDLIuBmSBNvwwF4q2OwtB5h81mIQtTQgXpgCDPyv18pCpsfsJc2VA7QTMIb0j65gWePxlh6o1gLwf78jAIhDOk4H9+4wAjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715592143; c=relaxed/simple;
	bh=Ggj1DoMUqPpYZgsocvXx6Jri2ebyv4nlfbWxwPrffBI=;
	h=To:Subject:From:Message-Id:Date; b=q1yX0AeODTbtSwuaaI1lBknfNzXQOvni5TT+5lIZa2G2t2ikoIL4WOajwLVc4MBElu4tkQGx9t4aE73HxsZjzPSJBVZcPbmrT94JAAUN1MYao4GxWvTduGOQAt2Zqqnn1LwxabQYd04gyGGtj2RIMRisAZmW8FJHBmDdtx75fVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pf4m3rzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pf4m3rzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1CF58C4AF07
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 09:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715592143;
	bh=Ggj1DoMUqPpYZgsocvXx6Jri2ebyv4nlfbWxwPrffBI=;
	h=To:Subject:From:Date:From;
	b=pf4m3rzSbBplrRT1S7T3RVltGDHIiC/FAutUIBlfFeV/haAdiyAxY/Yer+uYvfTQ4
	 v9ZwynEI2W9TlQ+/5ztcGMtUtYatQqkmoeJfDPtyMV4drBFGXrKijJom7G/bO1NePb
	 IHPk6CUs2JGsGmsZc+YVZj2SoVwifVKryOyu0IbAvdHjmRFwJRSllNm6cflLt6VNpa
	 UJdJoF8oAoX6bsG3ajXlE1h+JTKQafzJX6FZjeQFpO8x9wTt8HZpMi6JD1EEba+lOe
	 0grHMS2cnHavAJlCGMFozMW+VM5vdxrZvBdk45hIjzYVh1BPd8uEMuFlEwqrgohT1X
	 bTfiMy+Oh0R3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9258C25B78
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 09:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171559214286.30886.1067264043716852280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b467a9ae533f8001ef01074bfabc8fdc3599590653dd31cd1bca78a0972b65
Date: Mon, 13 May 2024 09:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715592142
