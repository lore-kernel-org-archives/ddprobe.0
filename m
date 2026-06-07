Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A7C4071C6
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780794874; cv=none; b=TjEKhRZgehnvigUJNHCXRVHAbRiNweinwEDxcAI+JRvlWzT5qE4LNdSGspgxYx/EzqNdv39Epk6tjUfAwi1TXmkekKzAJ9TkJkpk7HJbUMC7t/16MxSJZ0l1cvEC2fd/Dr1V25IR8ilsk8pimR8idBbeobyRDumyuJyG+XKQrgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780794874; c=relaxed/simple;
	bh=hCTwPeHXukbqjViJ0sXxsxi3SXW6Pnzdh2BTAmvyX+E=;
	h=To:Subject:From:Message-Id:Date; b=iSIryTSEs8rZlla/eXfrq2zRZtS4+ksq/HnJDeOiIok56329NKZtD2vNzddD3Gu15RufcQFW5VRcrQZNBE7SxXsBYhQhHY4tLylyLyipw2CX+zN68IkfC0DaA9/3VjOopzHKjeGlQT7scmiS1Hb4MM8RTZcQAZfUGl9SDY2KeV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILx2L2rN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILx2L2rN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC66FC2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780794873;
	bh=hCTwPeHXukbqjViJ0sXxsxi3SXW6Pnzdh2BTAmvyX+E=;
	h=To:Subject:From:Date:From;
	b=ILx2L2rNKdkBtEAoC5lMRwlQjqBim3TrFWt4hqC4Mf/PwWR0gPypNfT+t/hU2SSMY
	 BmiqTiHMOs4DRSFNSvXJOtJjMyU+BMlGZN3CKZxhPo3241jabrYaJmQlDyYOMQ/pxJ
	 lw9SDJ4HFnUPST3+iCJsDgb/G0HhXrEFyqFsxkyIIs12D4syT1klHUXIVEcdzwpJl9
	 ruWER+dT3sK5aUYf4OgvZok7Ldq0HAVW9tzFlFNSO/s3wzhdVVApV85l4XM0iVig1B
	 aayWJHspuKQHzQeB+auGSk28j6Qt9H8x6VPTcr5302adldxvSE29f6XkN6wVoD5tQY
	 PO18UvkO1ZbPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAB3CD8C85
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178079487368.31091.12749949005805744217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6c301ce04d95e37bafaba794b8d00f5f042f67f8d6c486baddc9d3d2ac938c3
Date: Sun, 07 Jun 2026 01:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780794873
