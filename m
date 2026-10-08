Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B3E3A168B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791471634; cv=none; b=C4naNhYi2lLRZt0PaYPZqh+sHzM0s7kcWT0Wb0b0XBk4USMypT2gsE7ahH5BPltxekKP82fWLer45yKjchdPnMfGKDpHlpDnwBdwQKOnulZ/FEFnehT4bzwpsKomUrhvyUVRBlpwkKVzV7nywFTW1iLoLlrdtA0gqROLnKMgCuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791471634; c=relaxed/simple;
	bh=4JksfGFmZU1/+Oue0dcV5BtvZleFa5DWFOaYnOwobns=;
	h=To:Subject:From:Message-Id:Date; b=g11F1ZAi0ljqrGyy7rdz/3RuNk4anVFrY3slxsj8n6V0bZzAFMrbOndaXhp7aos1guYb+c7U179UX0nw1vTNxpAbIbo8Tga9/a6MPnpsuckoNNvV2u2gvJZVoKp1o1pDR/hNeFX1zHC0O7GzVvrsGpt5qf8mBYo0fY/whA36vyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTycrIDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTycrIDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC95C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791471633;
	bh=4JksfGFmZU1/+Oue0dcV5BtvZleFa5DWFOaYnOwobns=;
	h=To:Subject:From:Date:From;
	b=ZTycrIDv3WoRbG3odE9cPPx61TuKe7gxu/BScK/mfHma2kFAj3fYpSWJiUrqSne3S
	 ZuEGO7n/Uu168hxPHCRlRQdC19uHxKLxAqtZueToRLfC6FzaUWoJSrNtZRRWgB5VTE
	 XR5g7d+cVEAOix++b796M+GWd/O65anOBGSTK87K4ce0/1/RNkHx+hZ3bopZU41lR0
	 kFG2DWLD5g2/AcGXlwfwG7otCwXfuQCpNwJvLJ+JrBwYf/X1h29brz5je8uL7D8YeK
	 I8z1wissst7jGWzihgK1u7+tEOR41Y4v+knhtLqFQQcVXeQaAAIk36dapulSdxPUs1
	 7l0x9rdO2qOEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BBECA600B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179147163368.8316.9420568495448774679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3583d24472a8242bf4f2532b740f4aa5ffc612cabca55d38fb4030b8ab03607f
Date: Thu, 08 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791471633
