Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374031C84A2
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767455034; cv=none; b=cvnEjpcCTHWJuMl1Jh+iJHC7m6ABYmZE7mDy/48Mg9iJZv3EwxCYjnoLOflpPEQZaJ7gHCEPeCBqKg6qU9xg9JtxX7TfKcW/4NrTmoAjuuyCp5qO0t5j39M18Np+j7cHV8RuwZ9LIoPtXKPhVadwjJvpgPZBHjDSmd7DEeLAOSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767455034; c=relaxed/simple;
	bh=OvAvPlojW+iRFOIJwOJQGmjvyKiuWvfMqOq5hKCBmJQ=;
	h=To:Subject:From:Message-Id:Date; b=V9gcnlH6wUPI0YQGZKHWxOL2C41Id/LgVQrTGgD6o4/Y6Z8w4iSzSW3yIsfNDZUtB0xDdLmd/OjBKJ42SRYDKyE6t/nUor05PbhKd9oNA4/k9bQkKx7zZSo0j1XBwUEBmLU6Y+7tUIVuQ7mFYvnmiZ6bL7grEZyeRedxnCbwZ58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAaTQXiW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAaTQXiW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA24C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767455033;
	bh=OvAvPlojW+iRFOIJwOJQGmjvyKiuWvfMqOq5hKCBmJQ=;
	h=To:Subject:From:Date:From;
	b=OAaTQXiWXNvKWQUnzk6GqTnRd0vZiWCVe5BjCaW6xbfM5K0htu4xxv3K8/ZrkB5N9
	 G+POrNeW36rRA7Z3rw0d2hrHPCWiF6oHVaPf11PU0pilZar3Lcp23JbasOskHq7RSq
	 q2NB2xD3q5cms+i0T7OKhwvIWKJ9EowS/rJGS1AL+8UKHNfQCEs3zJy00OJe5SRCK+
	 5DtXlmCbJ3tPAJLLboZH+A2KTbcOZktfFBV/q/N5/5c3QF6WdMmWrex3dKEAhTeh0f
	 eNDGZVYlcstq6IpbMEm9IOnSG6jUxwWyYrilX82/apbjCzvsireSMcg8bY3JS0swQu
	 rquyiSyJDnCfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABDBFC6160
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176745503360.865.17482886222471313644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a5d2075c22d97a9a68360aa2e97a8df80effe60dc42db5e0d36671001d9e3c7
Date: Sat, 03 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767455033
