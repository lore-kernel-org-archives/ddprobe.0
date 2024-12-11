Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFAA17736
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733960753; cv=none; b=nBOZ0qFF/ptwCTVI3BvaGCXiuFN0kyPY29rdjh+yncgtA2DM29sdXMu78UKTmRF5pvpLhExTXu/4xFMNpOnu/w/k4M1S11OUaI0140PhiDkILvjgueRVMUsZt51A2K3Irue0r9WWMElkgO/uIb9ew300wa2VRKzwKbhQ5xHWjZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733960753; c=relaxed/simple;
	bh=HWi19UwdBwtTj7DGRB4udYzNM5LOVq5s1LZlvPqrygA=;
	h=To:Subject:From:Message-Id:Date; b=hCgGYqsWGPTo+UgjMC8oBPY5aNwzxCpT+zOgKwcNk1z0x+914Iu3mJgZbDAaNZELfVswEU+aW7mn9H7IXW+3f5DUoS4nYt5X2ykBIgIL1JI31FomoQMpBpvAEVg7puSRZr9S5wCBvfeUdtJU8WWk9pJxyXeReluBNSPVTP8XKwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJ5Oq8r0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJ5Oq8r0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF44BC4CED7
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733960753;
	bh=HWi19UwdBwtTj7DGRB4udYzNM5LOVq5s1LZlvPqrygA=;
	h=To:Subject:From:Date:From;
	b=lJ5Oq8r0jDd+xQEmaIzLyYl7AqZJMgR9/Cjdp96UjHTkii/Baopt0kMkGWPdAXuFa
	 4vPmSa83gAGnyPrm3wmVbHeXYSTveiMK7AgRFPQ1cGyt7+138F/oe7rqxof+KZRZNM
	 Zd8iMigc86kONafj8/bkXJ2fVrvUXPx3wBTv3wnaLuXPqIEf85DMaWfkL4yXnLcYKT
	 iRAcANA6W4DhXkeoHQAtOWukvdgavJSVDxLxwVwTV7h4dKTGDL5woWI99FQvo8TByl
	 RuY2ae4tX7NxzmYBF+QyKAskyNh4Ss2GteUIapr1oA8tI/arrCJ0hJbgaJASLWhJ17
	 H/qNjOL2E2L3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B93AE77180
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173396075362.2035.1161517668119170540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5385898e9703bf54260833408a62f2fa71606dcdebbf39e4d479d34d7a42a624
Date: Wed, 11 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733960753
