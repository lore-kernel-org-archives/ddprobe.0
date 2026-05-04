Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1297F3E024B
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777916854; cv=none; b=c6IkpBXocII5jt9qIb5YUqLTT2vzk8ROc1TufTH40T3iQM2f/HhUfxkDd+i3M4tZTpfYWp8KgjgP46N5KdAyMGi4iWS67JqAeaNe6ypcJnw6FX8qukij172MWxl5ajn6COLTIPavn55/RwdqxS2hu/7WOu4AakUQ31mDJtARYmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777916854; c=relaxed/simple;
	bh=IbdvcfzK5Two736kHp5zZhtFdQ7d48qsZOtrtl7gZNA=;
	h=To:Subject:From:Message-Id:Date; b=Jh6hvZFeggZsoSHoTOUWeq8YvYj2xq5TszQcxryUkH7SCtYZL29KT3yCt7uzYqjOacbpLmlfJAOTa0L+PdF0nBv+R77RQd7ljFB/eJGqhABPgLYT8Vtg7hJSSTY76XF7AY1OMiHghMC19CzYvz14eC8YFXOostBb1c8Rh9Vu3po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNSAf2w5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNSAf2w5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B705BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777916853;
	bh=IbdvcfzK5Two736kHp5zZhtFdQ7d48qsZOtrtl7gZNA=;
	h=To:Subject:From:Date:From;
	b=ZNSAf2w5jr8HKOnDBtV+AKrYcMfbvteRS3LZ7bDdtbjWHXtg0SUOOH15XP4gHPBRY
	 S3oEytQ3Q1JaLEGuRxBPIAcoIS8VFpTLnWWF2Xcv+EmMjqAQC6QUjUt+Y/xj1ozy8q
	 UZ4Woo9bP+rsB250Fo3sjq+rDAC9gG9R048HJGFoth8fj/koehm8H3VrDYfywTMnqt
	 gfapcpEEMkbGWfmDJ4Qj196rJmi0h7DmaqTj8+sBb8d5WGjmmGiyOEbnd3k1b95wjs
	 nSqCXtVZYc5Y/E3pgU88FPqkzxEW40iUOPwo6Z+kvc2XOjF6MLUQTo1sM4iV+ZrXVC
	 wNRldSldPivKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA50DFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177791685368.19417.12664727889240772371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428becc280b8e29f6c7094da3dc034d54b8853bc261b5e74c1886876a44325fe
Date: Mon, 04 May 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777916853
