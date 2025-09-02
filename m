Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190EA2F29
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756772994; cv=none; b=D0bL/JmkzRTBNOW/E/CakD5pMwjCZAXyMPGdH7VYFtEGYAWxAS5tjj2hfP1V+G1IfklNlOZjfpfK8x1QJclIWZ5Ba+P54Kt4VULwFVPrja78aBLmtfgVe0QcEAd4ESfXZcrXWsqa2eBiCQIl6rCTqhKk12MtxIxzmSEs8w17iZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756772994; c=relaxed/simple;
	bh=gTT0h6RNFR21UFgpwEZ4hKseUsHOY0szCgo6JWP2Qjg=;
	h=To:Subject:From:Message-Id:Date; b=ZBTl2sd4q9EhMI4gxgMp/R/haZ1XfHOlf+VhRKycA42PxXAZfCdD6wwS5X9AKPCgDOJJNGrtYCU8VpJtIbWO+60HFz3zefp8uv8T8v9PUL+twLLFf3sKUqCub7Mfqq3qVGTjero8EW9MXfijwoeZnKxcF8t6v9rrtOfJ0ScSRMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxOajr7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxOajr7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB283C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756772993;
	bh=gTT0h6RNFR21UFgpwEZ4hKseUsHOY0szCgo6JWP2Qjg=;
	h=To:Subject:From:Date:From;
	b=lxOajr7clszVv6G5S1qsIhF4nH1vOJfvFZ5gSPBbsv7M+lXQde9GNKdS8tIZghVTY
	 dJV4F3Nuw2lwrIOTiNvxsOAiPDOlY4mIHHUK5ybFmuMTdLu/mkSyULsnUSeyiVDuUV
	 FXkZehW6lT3rrO80b3ps8PN29s8JO6kW+xn25zdt6kJTrhUhHqpxxDbepu09nDt5K/
	 Vqwp3u0HExq4DZ8L05R7xLsmTOSxkILixmDQClhx0U2g2cZVucodPl3VBl/XL8jwmV
	 ggKnQDx0G1JWPnkNkFK7brP4QqIIHKhW7q5IlazXMf8d4e2W89tWmYREDOD628+MOH
	 ur8iXr63ysV5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FCFCA1002
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175677299358.14669.1246265048496416128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c34f548ee11ef851e0a02770bd2601955c299cccaa6e01f1f0ce6427f8e1b6
Date: Tue, 02 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756772993
