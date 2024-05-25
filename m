Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647AA57880
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 13:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716644663; cv=none; b=nhlOJeMXK+LNx5QC1oTIIrs3BTk5FtAOs66txPZdSNOnZiI2wbO0mD4mUltInQh3J7hs5KKQ8tuX7PqjF5A7zZyGBqAW0SahbaXqK1sv3eYPxC/6aoscn2uv5+3boluuA1WN3PrkdQ1Bfc0sXKEPitCpMAFyb2gMkYSywsbI70I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716644663; c=relaxed/simple;
	bh=uLRVify7GYLppMdPdHQ9h8dxxF8d6lnTxpsA0408Wwc=;
	h=To:Subject:From:Message-Id:Date; b=Fd9Y2k7jl58/DmBRUuHuADMbBCYWaSMM74uAPL/U8Lbrf1fI4jcoparKINmXlORU7nCVcTLjwvp+drLNp4Tclz0JlpaY496ldpHaoYn8nsuaXj9ZHSBGXb3B804l1dcL3b8Krgv34t3j0Om+3iwuyI2/T5T3teceWRQJIc1L/zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHgyvqME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHgyvqME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9F9C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 13:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716644662;
	bh=uLRVify7GYLppMdPdHQ9h8dxxF8d6lnTxpsA0408Wwc=;
	h=To:Subject:From:Date:From;
	b=mHgyvqMEfWl27P2Z9whNcOawpyK/LTJIRijabRt0iAGZVGb6ROJYIq0R17Z9hxsYE
	 +1iBfi05u/a7X+XsP6KngLK4UPiYSFxiBRywQ7460pJHcBfv6Pf3I84MTARGQ9jx5h
	 wOB8SsVgkXUaPa9Xnsb+pUdVmXex2UvipY/lc+dGpYCJ7FgyGAb7xufIgs3d+exvAf
	 gi8gf1QwaTY2DyxFLYFVxOapYVAkMsoSAwmQb7DeTbU8wntDoqqMyebAjstXwAHNpW
	 O2RsO8erixVsD8N61kSS3cwWGDWKoGw1ehukc84biqHFMcjyqc3q+XJFkIdaElWiTL
	 9mB7pKKt9gNiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C082FC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 13:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171664466278.8450.9876954566905762483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88e97a0f601df8466ad8994873a5befe0aefdb96c728e37e5f8beca7e95f2aae
Date: Sat, 25 May 2024 13:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716644662
