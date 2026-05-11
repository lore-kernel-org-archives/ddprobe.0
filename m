Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D31721E098
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778473234; cv=none; b=syTiFLAvuLZ66n9jrYwH9WE1T+8Nr4iYlWV7gBZC+BBCUmOZgmAa9271LfllFuFaLcvUljJXGbNu9EHNgSByPv2FbeXcoZssnfDCoDyn3udRslOw3WUu1+JVSbHSBlh5TzDlRCul7dwoiSldoakhE+DMDxfvUW+bKaFAy5jtKpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778473234; c=relaxed/simple;
	bh=QP30R/hRZBwA9cZhW4ZvnYrc16XTvXF2BJqJA7ZVF9o=;
	h=To:Subject:From:Message-Id:Date; b=NxfsvNFmCB37C/wIwZYgcC6FVLGxqM7L3rH2np3kwqyzJqcu4KrGCtBPyu01gIsQuRg5QU4sSpI0Lmp8Rp6DAVyHIpm/zafwj+Z6NBX5HX21fnEJw221JnrsrWmsBvtFWNXtFHC0aExPZ419rPV8lwAL4GgmfcipX1if0Plr77c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3RDE0r0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3RDE0r0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD06C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778473233;
	bh=QP30R/hRZBwA9cZhW4ZvnYrc16XTvXF2BJqJA7ZVF9o=;
	h=To:Subject:From:Date:From;
	b=Q3RDE0r0NdX1m4Wlu1SuXJWIHRpjFjSvtZul9uy4OIWEH/BlOmpiRHb5nzrFT2HsO
	 A6EkfvPeu3LfDzQjjo1MJfA0lyUMhTJvpIAenBrTXvWQfYqKOWPuK3ftjhC6fyOP5K
	 CT/sF+d6kOzTUvtn0NeLGCny7leHxNZM0d5OX7QFoVut34mk7h5iNqvnjOZU/HVgxP
	 REmwjt6x94RXh8K5xu7M/G7mT1GheYPLHzcOBFA/YPQpaGMkOJ0pmo2G44tGVvbssS
	 yu2s91ND/xv36Dd4mhjBYVZnmup7yszH9++aFXwTm1QIdAXWoAj1ToKksMz6ON/9Sg
	 tMJ/EryXI3kkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D5FCD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177847323372.506.12021790709692649368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a73bb0e2bcc031bf81d1357c2a0405aab09ee3c276dd0467b011ff3f5f5c2e38
Date: Mon, 11 May 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778473233
