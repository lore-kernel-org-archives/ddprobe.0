Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1F44D6C2F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792099834; cv=none; b=FxmSMcwiRRCC6l5H1/3bWrlin7qZdb0894NBAHi7yQk79mVof2OcBpJs9EjGqqEzGdfNqsSgwKCEeEbh2wa1p2k9QO68MBp2TAaIrdQn+vzgfg6ShRquiNFBfbKgT4GZBlF5ArvSyC8TWs4et1xVoGkMAmGZAzF7zntkSk0u/kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792099834; c=relaxed/simple;
	bh=4dPoFinkNjdfCbyxAK73TjS6jCNMGCxnfMf2401sEis=;
	h=To:Subject:From:Message-Id:Date; b=Xlv/AkZCUyown6k3Mmqd4zTQ/fVTP1LwKV3FtDIPgUz6KJ4B9Ba1tE4HNbIgG+tvnPWJWkuLaC6B8FmfVdzCnRu+Z7eNeb9jm7RROrOrK3bEuUkYI2Olv2UZgY7gV3godin92iE0/2isuNb/SEPZHcfhwI9F2aZhA73ByzDYY+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQYMbzLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQYMbzLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE517C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792099833;
	bh=4dPoFinkNjdfCbyxAK73TjS6jCNMGCxnfMf2401sEis=;
	h=To:Subject:From:Date:From;
	b=KQYMbzLmuYbOvUxbYTsMo3p4Rcy8dvCECDwhoFnPf+yyS2qWZLEm46FjU0D1hYfKd
	 WTENt8p17ssuP0yGHheI6fzfFWjpcCUqzn0EHZAW2/TMClhJs1Y/iBfsbHvtJyyxzY
	 b5J3o75VTfQCOrBwqeSkQjSe4CBmiXJfeT/aHROtdFRTbpjfRuawtZQA7MGdEFXszb
	 iKha5orJk2YQC6mnoVnCqLqYFmp3wftjnl/sV3jsOvMcWE4nM4zm5FVAq7djvnbP+Z
	 nXlxi8rvOCqjC6hbGimBAhzG7CQl6OtAnySPkBxkDWee72lu5/edTtHUyqcFk7+DsE
	 Vli+4RqYJ0hnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EC9CCA462
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179209983368.3371.3027278226008043887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9197c0228551a5db8406bd22dc16abfaac6bebd20a809575c87d56b0e4462fdd
Date: Thu, 15 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792099833
