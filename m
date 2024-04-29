Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67DCA13AD30
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 19:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714419743; cv=none; b=CmrJHgtxSnepfM8BKNWEoJnVkT3nKBKoVFD6OeJT/XwAQMkWnk1UkCSDgQ6C0r44WUXN2X2g99Q5wznyeMI7BcxkRVI08EqP6+mQpsjxNYtBlrCsDr5f+FMYSFh6kVdlBmvUYyFF7KIR6vjxtpcoW8lSBRQKKwpB8U/FUO+Y/y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714419743; c=relaxed/simple;
	bh=KI+Cjb1cUov2DGaeF0Uy1l+zuX30j70+aYzB29bTheE=;
	h=To:Subject:From:Message-Id:Date; b=H0uT4XWF/lnoOz3+vDqR8zOSR+bdn7xQ1ws5NCOmS5n6N0xra2FjJRUnXqwAATe3PMVdTGfUWcykp4WqHU4VedUA4gQeLjlvCcApkwxF8ld8NEQNA0XQw/rI7v4nTS5lcG3/HG1n7C4X3YAz1a+JcziWb0/5Z6qyaaJcLdsYV+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2SH1kBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2SH1kBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA815C4AF14
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714419742;
	bh=KI+Cjb1cUov2DGaeF0Uy1l+zuX30j70+aYzB29bTheE=;
	h=To:Subject:From:Date:From;
	b=M2SH1kBleDqj7qS++dTSGmx9TdX08667DMNtZIaJUtNVPyXJXDIBYx4qHrxF+XL1e
	 pxEU59toujsD5QX3mIWcOmX24YzGZV8Bta5pbnC0E7l1/Lzzdb38vHYiBRBXHehetK
	 jGS7cBZj9CKhvS9VVA8jXkAWZa+T0CCYOaFdCCCDp3uACbvQD6aFBzDs1N1DRjujag
	 Wgl7V/4mOFmdx94gmxB3zdiQ91AHag7MohKSmCQ1W3KYKN/2v0fdCRwjcv+2XqyzFN
	 bPcFHWai9teSdHsaiZKzESzvI90no7sl04qY0G4rI9r3rnmJmopMAiLsRm376DbbFv
	 BybSDykq8HEZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD2FC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171441974276.30396.1150012743893796147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295934fa667f32e9b842dba3194645f509468b86a24434969adfdc6167a77e39
Date: Mon, 29 Apr 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714419742
