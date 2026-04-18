Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167A663CB
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776494854; cv=none; b=cBh+LXoQxAzoxVgKhsQmSpGpYw0g6Hbzdxix1E5Ux3oNSQmOc/lZA5QmGgIKvHXfsVMKQ2ZrmJpkfgld7apFqhKaRF8QBpmnqClMviZfqiwBpO1VRMk+1+FLasSj59vGhyEWW/nWBuQBl9NcDHYxVnfs/DyP/nQBFAyjqiFEcds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776494854; c=relaxed/simple;
	bh=W+jzBj7R36uQ4ng+9UTHzvLG/BrygAOHqm4bYxQy20I=;
	h=To:Subject:From:Message-Id:Date; b=uYyskjG25ckNe5FGIVzzEx9Lf+WWqOe0xrK0mBViGXwnYUxlUbey14qJGuseasefOkdPG4iLmX/rDEE4iFDQHAJ0A51caTZX0WtuFL/N9j/N2rgnBW/5qYGEPRhe8fiSv91exdPauwHJPIfuH5/vke3oCTBqCAsK0gex/857Uuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCF/9gI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCF/9gI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC985C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776494853;
	bh=W+jzBj7R36uQ4ng+9UTHzvLG/BrygAOHqm4bYxQy20I=;
	h=To:Subject:From:Date:From;
	b=WCF/9gI3nkFYUVkUYUwtG/V2WhaioQWL+B2JqFRcRotW/CGqx5+iQ3u8L3vUSWavy
	 SN8cLcLuSf/xsxY1c/QUyNAAoy18T0yeadcHVfaznUAUea7g4L72jJRMMB61JyrENK
	 vPLbCOrKV97qDEYBmrgJMtCxH40BpmEJI/oknk/SJ6tZxOI8xyDI4vqWR8KKZFBNs/
	 CR79bZRj5vpo5YzO8Om18XpTsWt0MYHu6Apc8VuGCAzsZWPGD5DpkOT4u6fdAFrgwb
	 7mlBYl6MDLpR+KaWzAN/J8kkHeFvDp10DhPNabQQO6Z8ujX8uKeQ/NAfFsPZQXdAEv
	 uJd1dQnw/44DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E59F436B1
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177649485368.31107.9276257967350778791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10767cd37aeb78b2b82a7217bbdb1b3dbace86a8433f86be2d4e54669985d47
Date: Sat, 18 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776494853
