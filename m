Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF641A6814
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780103614; cv=none; b=bezrlEIlz/xVLHwwYkvks6nEwWMGsj7BWL0bRCC+sUewzCc6C8mxKJsajBKHkk8mbeuKUtrEoBWvmIPAIx0KBYUlHb85FVbgOh4/MrPwsiT62uXH0i0btOqzfGxLbnW3g5fYM4GMXRXJqjzMTxb3oquFCO/kUbMWMFdX8E2WZbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780103614; c=relaxed/simple;
	bh=Pzo/2WaqpJKp2yFviXuwfscNtXPavi8cF39avH0CpA4=;
	h=To:Subject:From:Message-Id:Date; b=ifIrrhydq2sjLNTcHa8644/2rfxFvTAi52qyKRSo00OFvTASMVUs6vtTyhZN3MVKRbhj0Rxj1SbSkB92wtY58hi55/AabPMrNJ+/3l4zPt/6nvHmz5daSBQHEXrY29VTB9jUMtvEd5/iEbn/CkxlKUrfde6k3Ob4bKdVcoLm+Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcVxHwZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcVxHwZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7E4C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780103613;
	bh=Pzo/2WaqpJKp2yFviXuwfscNtXPavi8cF39avH0CpA4=;
	h=To:Subject:From:Date:From;
	b=kcVxHwZ2fehkmH6mrO3xrHKB+j837PyhYu7u9/nVL+agckBaZk6c3ra7vdzpZnh5i
	 2xLOBUMfvzNV3r2uI+/pFkj3z7jxlCOwKpzBkuYoeQ8k9bNZYYL0VvyDdH8rRYsLe7
	 fGWHzRfrP8dnOxaNki2TF1u3zPKUC7btt0KKK92pMmwzKRpHvse7uAmTVjbbppGqtl
	 ZrQIdRZtidzWLA4wqK6eCh6tiCb3lrRNn5YZmzFfB6YGCPTRZM0+qgvixFR2HFH/tj
	 Uh/vX74obeWSLBhEdcBGLrze9s7MyfBbj+Kfc01t6xMLXx2bGGehlzR8FN0rc0mMwR
	 QTtyibZDXkHhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AA3CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178010361371.31300.1645567393199050592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e95cdd4be797e07b419246925f26c86b27f572752e1ed825a95945a2df933d51
Date: Sat, 30 May 2026 01:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780103613
