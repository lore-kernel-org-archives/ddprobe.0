Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7FA199223
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741465134; cv=none; b=jlu6+Jcta0w6tQ6XCyZj+nV7ndE+/6WMtQhGQ8cyQ0pqVCWZwhLTMfxQcNuY7RcQKsrF+whXAlI2xLuPK6MYuSn++EVDKqQCvR+K0r/JvVDXVUHDasgD4SPEunyqkzsE9crw5XhT6LjYXbI2v7ZdpW+yuAOzrvAXBHFW4srnvfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741465134; c=relaxed/simple;
	bh=xIjjCICzEfSj+92RBnGt/QxeJwKGFyxmZS5jb7nLS/s=;
	h=To:Subject:From:Message-Id:Date; b=io/kWs1NEwbjk7YsJIxc7LWBJvesdxyiS3sgdqeKdey5PoFljbxilSP6Ti1M32d+C2BTfGIvEY7EB4kx7ZwcmtETktLqTOul7aZi6QejKOnmMCWFxLu0a2Qcv2+TMFa57CRfzOUyTQdJK+9Q7XQcDcxIcULSipAwq/HaEYg5d8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrKra1G8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrKra1G8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A781BC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741465133;
	bh=xIjjCICzEfSj+92RBnGt/QxeJwKGFyxmZS5jb7nLS/s=;
	h=To:Subject:From:Date:From;
	b=HrKra1G8EqcoTDoTBPBVyIA2OgjxNZOdwnwdCMO37kgoO/xwY2vkMjBvxZWRDg9Jj
	 7dDqCgW+9TScppIlEA4Igg4zuXGpq0zsMI+fAYRdRUTNcZ7LUAiKWlcvmvex0g59SU
	 qyL9+mryFIL4Q6nUhn9xA5JF5PBQYUq9sTVS5Gr1wNAffLyrquprby8q11YisiPLlc
	 SQ0Qb3Bdqk/Wh7Cw/E+uOAJaAVsmboAuCn+9qwzHKp44KRth8lnqJU2kBPdD3MEteQ
	 XRiltyqyURgTDd14oTe4/PVvNArZXoZ8VXh+eKbuTvfbkWKnGnfw6Qg9X4bpCFDEGE
	 LKFE8LZ3B0OsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9167FC28B28
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174146513358.32050.9551191344361625922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8dee372050c33031d01a1f4a07478b308c51f85cca56db356254250b4ceb331
Date: Sat, 08 Mar 2025 20:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741465133
