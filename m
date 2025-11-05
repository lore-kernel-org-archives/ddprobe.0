Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152E028C871
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762372194; cv=none; b=cqY5WFXgJtr3E+fTPLXkh5NxV7dlQzJKwLSPS42whODsYsRGVJWsSWRnA5D0J6AhulowB2g/eF0fWoSgpmejD/pidvK1IX6W8YO+FbEnK18ZhqZQAlnQ/39yW3kIJexo2z9jxL3aYOw8VTNHmDfmPhDtB8x8cOIfnBg/U45/7n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762372194; c=relaxed/simple;
	bh=xJccyrcfw0Wv8+X1w2Ck07FTvfDohbRsJIIVenQhvcM=;
	h=To:Subject:From:Message-Id:Date; b=MWA2wtfVZdIL8GlpXTGMBOjmOdxC9JnM6C7ZCLQtU7rM/n436S0LeCI0Jt70Z2Zfhlh8SDMDkjlaJPeJdGhEr/fIhVmfC/gUp8tWLXLjsO2ZoflnQAkWfxTwOx/BtO5JdzTuvhG5NwcSsKSst6KEFIRoAyI8D8sR8VjH6hYJsxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6AiAIar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6AiAIar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEEBC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762372193;
	bh=xJccyrcfw0Wv8+X1w2Ck07FTvfDohbRsJIIVenQhvcM=;
	h=To:Subject:From:Date:From;
	b=D6AiAIarFSV+cJTWR1nNXFSaqog7yzlMDM+tTPmnSkR1vty077IcJl1CCm52oHmUS
	 Uvj7JKGdR0DfIgt47v8Ofeg3zyF/DQi4ttkh1bXdgsAqDWQJwd8GrV+i1T6CyLHcJ7
	 iAev0fEGO6r2Z/fadHAn6K29YLHWLN6TXlko7JjeWqNpZx3b/GP4+7ZnQg9nvZb3VO
	 nQ3KEpIdcfLACAnA/DIpbQAq08DyS7z54oLpsPfQcpMaW/TyDqENHKdIpEhdlJCGPw
	 Kk86uKk9diiv50M/3TUWGUAi6Gqk+AoHifr7Qit7/34/ty7UA2npYuvKeWIYMW2hbF
	 m7QE+OXXt+K9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F608CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176237219357.32602.1623885565184341511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b1b13c518cf4bed62bf2846cb0ccddce99f7c0a422f790147b096ae5f55904
Date: Wed, 05 Nov 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762372193
