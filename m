Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6B717C203
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756722594; cv=none; b=DEawb34bqVqh1Freosi4+QgMf9zoVlGuZQxu2IORsdl65S1mQdfrYbYRMCTmpaUYaW4bOZ6sNcbW/w9SPRE6vy+GU9pEQjw1+5DkCiH0rdQOPKEKETXMnehN54vrq6Jg/jcu9zLlMJTtpvd5jNrLNegnd4kwE8XiM7pR6LJ5gwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756722594; c=relaxed/simple;
	bh=hJTBIeNx0qTjLOqLKK2KkI4MbbLvhZj0NFo4O6LpURQ=;
	h=To:Subject:From:Message-Id:Date; b=COJWEDZjEN8THIzW7oRy6KkA8GMVRQGc2S9iT2/scoNnDWGGYJcSw5Nx5JOX3elXyw1e1NtV7+8dsoZvtAQikxN1OCKYhdW0SQcQ00mSK8wmJ68Sgk925t48GRsJGwNkZA+CZA8XWDJQrbdeftZyAUU/2U0t2O8bCFMuHNdnwDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrCoObRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrCoObRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5EDC4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756722593;
	bh=hJTBIeNx0qTjLOqLKK2KkI4MbbLvhZj0NFo4O6LpURQ=;
	h=To:Subject:From:Date:From;
	b=FrCoObRQhtiCXGpduWfHGYDGqkQSHRbrn/u5wgEkwBeVVlD2d6BY+VUr1B94mmHUw
	 gS0IknadZKYEzOCaIULh0J6gSt2Tg0uVWPCp60/LHUSTKl4GyhfnQW9eOBtCbBJMVH
	 U9cb1BD9i7RRALLOO+HUeGmEWgd26AxYaXy0Dh6xMpGv/oBzyhcpjl8ruhP7+k/Vt0
	 xdewabAr2oAP3aV8BEDzguvh5QKZ39hwzaTLAFGpPvr6X9lDswdItLHmBNjlElPOBy
	 cTDZJ6xWLx7NSz+6Pd/8DlSGLNsoMbAhQh0weFwPDVQIfiOhW+cN1sad8ND/TrDPWR
	 mt5WXduLpM4EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9001BCA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175672259357.10663.16481586691839404598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2581815d249c67453f4f3ed99170719b6d9d856bf5ecdfcf69467dc97d0b5011
Date: Mon, 01 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756722593
