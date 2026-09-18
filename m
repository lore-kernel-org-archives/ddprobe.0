Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38973148DD
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789759834; cv=none; b=MJZL651kHU8u9S2ti8MdiexzXBUNGgTYjgEz7cNWAh8eXgNTdNiUiNrMgcobjAR1cfdI92VhIiniKcDbroMpT3U7Rw41qihThDzZL7ffUcCqPHaPN+qvXnl6Ph4QIqdAl26HgdouSEH/xbAqom2WBHQ66B205/x+sDVqq/dQY98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789759834; c=relaxed/simple;
	bh=UB2MAyjkQ9zqnc4gzcJENKWdq442HdBjIE66U2mTvbQ=;
	h=To:Subject:From:Message-Id:Date; b=WF0qeageVfG0LJWzxfFMuIVAhFLYGJDLaKWEXWpew1objSu1zgZPmXGbZnbu/Jr/AmgMnEd07vhFbN2joI2/z848eiM/ITTbKkteRs4Z1FPgD5OkaaMPr+Pj2p5mS5C9vx6FXY8yLUSl6fgpqxGpdbjbotEqHZG1/q0DNIwbrPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKsUIWo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKsUIWo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC111C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789759834;
	bh=UB2MAyjkQ9zqnc4gzcJENKWdq442HdBjIE66U2mTvbQ=;
	h=To:Subject:From:Date:From;
	b=fKsUIWo31wVhizia1CVf4J4jrAf19wVauWQ0TygfRUrq+qV+7yRrDoKovjXq5BiUk
	 +W5CguP9cIeZhax/K+d5RsP3iyQnmnN/Jo+ZoQ0Nmn3vNvNymmbKK0ZYOk/ukHiybc
	 Iumkho+vTHKP2eC8Vkrw3pC7H3GcLL3VnvnAwadBRRcnsdjY3zZh86FNHTZysXMOl0
	 NkGDpsn8BCTFZewlbxFVJFQBkkZqfM/Rq1tjbLb5j4wmrwohNYP0QFNMvMWCxtsptS
	 93CXafFv6q8MI+iooBpSggXI2Xp/Kurfj7liB1q6IlHVdhl02mO5d2yF/3vPy2mH64
	 oVO/ER/FpMLtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21F1C982DD
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178975983370.25881.3541962694937766810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14aa8854b755e2162fb6b728e636ecf44d99cedba2ccfee49d140d4f5e925741
Date: Fri, 18 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789759833
