Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A51BC8E0
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742776194; cv=none; b=UMqByhSqezDUem8H5KiPQCSN6snS1XFHl1ZwlbAy54F0zmisC/VPRjg4CI+Cn3bohNpxsIgywhxTOLadECadE2mxaeiNpBywS6UJcF/UdcEE+HTxHYRvWsYpwBlNtlFazJz/kJsZCl9RLaY/oUOh7rsQoBf4K/XOjjwsowX1WC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742776194; c=relaxed/simple;
	bh=fc2M+10HrleP6ENrbQp5eFPvOhhFNLtYfOgElCk51kA=;
	h=To:Subject:From:Message-Id:Date; b=JSZfza+4sP2gHZZ3x/PGifMtf68m8oKbUmtlIiu7Y8SOx1WeJp8ADD/FVjmcz13OXe4M9L6bbPAgUCK0lG5VZel3g/Zmn/wipV2S7BAvM8LQmE+4RV4E4Wy2+WV0xSTJWbRH6RsHy3ltIoNXp5UuXhrXwoiR8fzJuWejdVgOQF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gw58W4eX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gw58W4eX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB79FC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742776193;
	bh=fc2M+10HrleP6ENrbQp5eFPvOhhFNLtYfOgElCk51kA=;
	h=To:Subject:From:Date:From;
	b=Gw58W4eX18V8gYRVNk9f+EjPasCcY/Y5Gc/acm0PaRullWVDjWhyGNl6LgiwpaKBs
	 x/WltCOkDCCYGLi8f3Haw3AMYV33H/j1vWOtwL//J+djOkDYlATeu/dv3PPbhEIcj5
	 8kPU+wILNhmrHJ+nyPo1HIFqvjnU89xEBaeWdIMRMjbD4CiqDCQosQ4tzCYApJKIil
	 cRHFuJ8dC1KX3qnS//0a5IsF+pbBMSTHdaTW+FJrqA1YiltLpb/ZGJC5MFm3DEVNpd
	 cLESUjCkxSt+eoVoIt0T93R+h/cVsCQc+4CLjjRn0dhnqXpAa36uvMC+NJfVsa+Iw2
	 MZ9pgzsDtloFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78B9C28B30
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174277619367.5404.10903778171173939752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e06a3731e211e612fd6a3d89abd00de24d5261ae5f0d872506ab3e21f5fb2a9
Date: Mon, 24 Mar 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742776193
