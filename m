Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED51221739
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755728394; cv=none; b=ofqmxwqVg3zXsSsSBi8og3c0227C5uvtruEa/RjtyqDKRq55DXjIz8KTGE02eoUeoAPHtssGK5RggMuYfDXMx6U4ksg/UaLyal8sq25WW67LvmbWleHXu9BKZAMWDEJhSxzAzC/NTSic7kyw3Sx9vwNZHZZslvvrx5TIb/7HV34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755728394; c=relaxed/simple;
	bh=fGh33hSNxMckU5w7niThj90tXso0G76HOvzu0mLMIbU=;
	h=To:Subject:From:Message-Id:Date; b=hNa2cKx6Y88ZXoNCmk52oj/uo+NJIhVoJUO0LmHJLDUjGaX0WKO79cVKPbdZdz++UCkFK766DliDuK3K5Clqyv0hbBq4M2wldJT7z5TP85Uj5LC4nlMtDoXYYdFWCMf/+Bk4M2oKaI/2Pw6eKd1Krd8ZR9dtgJyARcls7ZiPsJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuRvMZgU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuRvMZgU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE2EC113D0
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755728393;
	bh=fGh33hSNxMckU5w7niThj90tXso0G76HOvzu0mLMIbU=;
	h=To:Subject:From:Date:From;
	b=UuRvMZgU35d3G+/k9disltwgjQe96uEwM4a/OxBn6zVLMFI77EdhkRj/jPmaFOqTT
	 A2DpIw32GEAS3rqxtGg+z2wOGFp5GqBg9qjrMtZRM6trMOiOBwAZUWQ2H0MYfCypwY
	 IVxmuUyNdFylQaBJIVwBeKOSV8cN55DibbmwfV33SLVMyqktPlZj6LYSSTTJZ4OlzK
	 KP70BkSOekq9OdtJ7Zk4RMY9y9O/9fx4A7vp5Pq+H+gLT+2i0KlHdcAXY2nKBB1j73
	 mcREySHQ5Iq3+cgi0ZlyctlWFdXxhOmEgpbhW30ckXX/Z7XDVH8bqom7Rsvc2A4Q+Z
	 QB/LG3HeAjdlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37ECA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175572839357.15418.12069719490445790122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44025ec1813b53e91761ba49b4493c0cc6cade5f8c192fc28c2638fa1bf61817
Date: Wed, 20 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755728393
