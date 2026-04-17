Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A5740DFD1
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776384454; cv=none; b=StQObrzgmrhG09pZFU+vdt+vpmZ+hh/LZ7REeThV38mbnl9cOyD+tb0phdwI/7FCWld9FLYSen21qtcw0QtAvPG2YssVM1kuHVIZoFlgztN8hz+wTWX3YPbythhIUDmbc2LvRDOdROZnDfzvMUU+CIbc1on6XGqvJkQLth8gTHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776384454; c=relaxed/simple;
	bh=pVu5LXprzMDw9X06UCiGJbV2QaY0HaGuIiq7WLTspOc=;
	h=To:Subject:From:Message-Id:Date; b=Yi3bIdMlyYPTSFIkzqsjzes/3DRe6d5cynteKSDvP2Bq4U4HgiutXwYUhsnlLD59uuHPvb7l+h+nly+yoD8FdAUIM4in3DjWzpEvjr2wqWpDFcHTBozuhIWwo8J0KBCMCGo6xkJuaS9MwAoq5ESJXLeh1EWiGPEHdAXn76X+cjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7ua6xwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7ua6xwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA107C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776384453;
	bh=pVu5LXprzMDw9X06UCiGJbV2QaY0HaGuIiq7WLTspOc=;
	h=To:Subject:From:Date:From;
	b=k7ua6xwqZ6oPVLDfolSUULkYmO2RAvsw3AOTNFagH62eZNzM9hUXn6Z2zHjqQPyFO
	 qpJzKFYdEe+oDZ17tL9QgiTHG8tzj9XJsbLLbhxQHppN+WpRSlKc3jT5UhLxU/Hmxk
	 sySV0bf8EhmBtXst7RPbPDd+uHb6S7GgvAoFdAEVpNaydy3WGC2EcFTDifDTjAgQz0
	 pMKHF9D8lqYx9lhcTMgeru4zhqHYGCH2kjVyKMxD3CLllV54LgthY3JEB5y0crBr54
	 NOZWwkavLu5kfO3jJAco44TcC/EiVdYsWeeXpVNewfm5bja2r8bX1zp8fec7AjBa5W
	 5prajFPe4siZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9364F8E498
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177638445368.21438.16772103659364737157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6145294322e3d395ec858edb633deb6733daa06054f4bb9186ee7f706da157
Date: Fri, 17 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776384453
