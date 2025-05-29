Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370A621D3F3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748485794; cv=none; b=lFBET6g/ICfNBRecVazdYoFnon5eIBXIF4JrCAkMmuUMjbmEbAo1rEMzI3CPeWnNMMZXQgjGiRrZryV7GphJUaXpIoDrVtKHNvZgv+XjQwceid1azILMaCb3+PNDzGyeRTpCkhD8xvH/Lo5KHOUrifM+aVYnlqM7FUM+/HDPO1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748485794; c=relaxed/simple;
	bh=sxyWEx/bTcxK/egCfBcPl1er+yEaBLm4bMWwzezGZwA=;
	h=To:Subject:From:Message-Id:Date; b=F6insKg5k1ygIo8iIkhcFG1B2P1HAjBHG8XB8isIDrg3z3uZAZYccNuEhqGFIlTfOrLEMZsxHe98pZK3zWK5tho0XfFru0hmfV6OqeGGitL7ljqmAMjLHRBAX57WVOhLCr9Rb8Tgy1RC9PSEfVQKwr/zYPUQf8COl+7mT/4KHX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGRPhUoD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGRPhUoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0444C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748485793;
	bh=sxyWEx/bTcxK/egCfBcPl1er+yEaBLm4bMWwzezGZwA=;
	h=To:Subject:From:Date:From;
	b=eGRPhUoDhw+3i61xTr/UQBBWfpiQAuKid4VocM5Tl4bMssXIxESB+mb/XRhWyvsT9
	 lSuHw5qU33vcfq08Ndf3AIADA8oNrZZwhI/587tWBsoIP0bug13birDHjMD9ZWlzbg
	 cDQPdZNngBlxLuzxVfmprGtDC9Ga/8QaDZUwk58LXnbEbflCUsccqImmtUuLGKQyyq
	 7iPXVGJKrwptMpTOdnk4TYxAamaYYqghboZiEESYTuTveBNQJ4kLDLkWIZRRCgf2Ha
	 hbbqyjOxfNudgS58G8LFleJBkuVgKzQWJAnUa0wJsL4AX4PSy08BNfHxEW3B4VFjQ1
	 KbEeFbPgUSz4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE5DC5B543
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174848579357.30573.4146434904339598046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e844c54d33b776033b61103502d047cd135b4c70c4c5c538a59e646de6e7b5a0
Date: Thu, 29 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748485793
