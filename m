Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0609E78F2E
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778057855; cv=none; b=FYGdIEWP30HKH2Kvao//B/Xco6jCYJAliF3WylTwUajXNauJyiTio2qO1ilreQlCHMVv9WhpDQKI7ydS/UU94Pw2Kb+SG8xfwJc1W3DZDy08PF0AiLCmdCKxlvwlwCpxX173lPQKVWr0r74aFWNG6WcAdrAeoRhKzvMbTLrfV90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778057855; c=relaxed/simple;
	bh=2iZQ18XHSbRVL4OdueCfS+fZy+nNEHB+/NB/D/pw35Y=;
	h=To:Subject:From:Message-Id:Date; b=oxTqtEnw9QaY0iCaMssovF/mVmnOEM3szxQtV9H0X6d0CjJ3UDHszc3opPDpr9EzoH0jQ6P+hBgg4cdXoKNzzuBa3YiWGx/pDhuKRPHa3rgR9Lz7zchpnG6x+YnfSxdb1RM8DyPGhD98r7XQXB5jhc7vB62GBAQeyWOnoKmaRm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8UMps8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8UMps8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D29C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778057853;
	bh=2iZQ18XHSbRVL4OdueCfS+fZy+nNEHB+/NB/D/pw35Y=;
	h=To:Subject:From:Date:From;
	b=W8UMps8/Yw5Uk7TuqE8/ypDxKPJp032pj4jWykxgcgbx2vhDDfcEXntMwaGKYundE
	 EPLJXEXAzO0SUY+nk3ygYVd+IO1NxwbtRLyTiXg+lWW+skNeGVAMGNya2nfrmoI0Cl
	 QGzohRGTu+XQ/77vgASv2PwHKMIeTeJR6YxFNxEcXtJXFCko7xm1VsoNKBpt0SJG4i
	 F5S/27c/J1YNG9cUqe8cvxHLrw0yLQrl+9DlCRc2cXkCyVgAyNf6hCtKF1IfhnuxJB
	 2xqfKIMDJdtAdJ+O71CLGtvR5teX9DF8HO3rUyuCvAADawJOseiyvKGMRTHTPSZd8O
	 ocZsSy0SVw1Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFB2CD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177805785369.16036.15689368081529349671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c2da3da6abf5a8d946ab0e895c4ac0e334cadb4d4ec8ccab7830378689668f
Date: Wed, 06 May 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778057853
