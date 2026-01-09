Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDA0633DEE0
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767995034; cv=none; b=L1YcUEHMZTrxOWnoJXIe4jvMfFyx8KZ4o/Vnhy2CB0gHdI070PKPNsSFud7mJDATPXyhUbe3Vp7S7iyo8JhU3ahi7xX+x5YyvYVAqWK9Hd1vj0tw52L2d/ACY++xc1g+FtJE4ZfYY5L5Lok5Q/jEOXmTw7iymzbeWFpKOLxoHpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767995034; c=relaxed/simple;
	bh=mpRKhEvyQtX0LN4JYTKbgRYKZzizHj3+kdAfRkzrgyQ=;
	h=To:Subject:From:Message-Id:Date; b=oUK2oxsU0KUwE7CJlGdzhRGvXGkKxVnoKYskZKKqb/K4AxPwmkcFLm2h/HqwqTwvAEcOcwHfyZDCf/6OEP8grBLv+NMLwLW/AkEitWD+QjrJ5c1u545gAFoLz7wXeKX93eHFqzdBIPNKSEzyztuvMBiQJxgNj6eMqryjkQtYb1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMUq1Qw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMUq1Qw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFBBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767995033;
	bh=mpRKhEvyQtX0LN4JYTKbgRYKZzizHj3+kdAfRkzrgyQ=;
	h=To:Subject:From:Date:From;
	b=eMUq1Qw9ZINhiNBhnlyvb7dQVpGwN+4ZuFvIUmsDmO4DgU0FJTmei0SX+acQySrDM
	 ZkeiL6Q1zLWbYVCPt5StME+p9e3b/6imLkTZGdsjvpV52/nkmUc9WHotR4DN7JV+uV
	 D7/Kzw/mP2AspEgn+/POcCV7CTHQGXTB4zHtJfrpNk85O88xp0E2fyo1mZCYmtfTfq
	 ad57B2Lx0d2JPmqOarjikGApXxpk0PQy626kwdtmKzVDxjqzdFJwPmLrRNVna57w9v
	 TF6JF2r/WSAS2hxYP9FRsIKeAw7yRpoy4UzMkecGe3ToSJmVpRcUkYbXjdZGWcOUZf
	 znLVTH9nHoanQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0BED26D9F
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176799503357.942.3566554973740169127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f680a8d55e358748e15017a09aaf7bcea63816e47670e9aafcc31ee3778c3185
Date: Fri, 09 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767995033
