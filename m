Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9AF12B94
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788741634; cv=none; b=R3gqAvd3LaOU9GWfQmCanfwhTm6ukyHsHEErE8TVTspf/hTrj7nMrk/6K3BWFXflB2epHRnA+4Ub1yKkg3RL5NDsbTPY0dvbLYtHi4NL7G872m4DcY9+xfLEw2tTUJ23I7D0g+3pVliJPgUvCvnHwcRXWvtfP5RcV373ljwNyDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788741634; c=relaxed/simple;
	bh=9g/ykgIYuKXtxbJqsz0VyV53mn3a0IceavfjVr8CmVo=;
	h=To:Subject:From:Message-Id:Date; b=fjpCvTyP8YpbcAx43yMFVuhfjw/GhgsA1Plcdos3hQRAYybQpOmo5Dloi/FEvYps9ui5t0MeTHYn9kz/aP9jIenVnK5eOJAOSamhHiV9Pvr2Bg6c5mSEV8KZkkELJO2I252yLEHVmOf71hNUS7OQOO1nZDwHx7suA93FlCODsKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTOK7WcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTOK7WcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D539EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788741633;
	bh=9g/ykgIYuKXtxbJqsz0VyV53mn3a0IceavfjVr8CmVo=;
	h=To:Subject:From:Date:From;
	b=dTOK7WcD52dnlc6fHur92oWPIXUWgQazymMKaMOY6hGM41hWytVfG3SGVGbRkMU7Z
	 pwRqX5guW+7bYEqECBkhoftEX+uRoIq1K5lCx9tKOOfGn13SVnJKvjfN4UxnQOgc/9
	 RKtd4iwYPRXbjKP0Z5KrkjFOKmufqfXBvmcituzJnP7bMLeAiJVVM5Xg6wPjreDKfi
	 aQftG3o/UfK4UOUDs6n5gisBBudu22liPCU+4CKt60VpTASYuf8+C5Uuomb+1Hy5x0
	 G3MI4r+YTUrJiIfMu/P3/lXg9xtS81X0Im9mqeE6EmfJucyvV38z2yWgXqJRdj7BUF
	 E3ivCRqcuIq9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21BFC79F8C
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178874163369.19476.1856703004290872654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03d7eb8e7999b590a3e3a332f21924bc002e40aa8e5a532b28d66cba1da8e07
Date: Mon, 07 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788741633
