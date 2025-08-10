Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163C4D515
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754796594; cv=none; b=V8z5LOgDPk8ZobVV+LdxA3CBnpJa3oIEXilwbYxCb6wQ+V9XH601gnppQuG75w2CidYM21WRfOe6FiUDwyKpJqMdqJrr9Dx2NMCdxj8U+S69SaG2ENfn3JvAwWJhFCLFsG5w7kk4NurdSuOb8meKJRqyiJP2Ys5njJJtnqVqqFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754796594; c=relaxed/simple;
	bh=bp1GMI6v9JgKHTWsBEfTbObREqRF4ykmtgBSgN5SDBA=;
	h=To:Subject:From:Message-Id:Date; b=oE1HemIv2V9nD7DAkT8KgwFujq362cI2/10xjcnjFurmvFyVDa0SZwNZG/18s/A+nUH47GPy2a0BkZ9C22ru6UhFzIxXHQKOzp2YztpPwDewiLvMBdKs3ouuj72vPX8okki/E1inuNlweQFyrbneArSHP1T6mnxjiEiqqLY/iaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGESE+LP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGESE+LP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50DEC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754796593;
	bh=bp1GMI6v9JgKHTWsBEfTbObREqRF4ykmtgBSgN5SDBA=;
	h=To:Subject:From:Date:From;
	b=RGESE+LPiyCyh1I1AahWqt+O1uuHuN5mVHXPkaqExLDQ3eYO96vNWToxzL/lK6Aq0
	 ELEkEAnrqV15Irdz2xo1fl0th20rb85s1v48DWLkEliM7vFcl5o1HOyuXOC9qM14Y/
	 8pKvJEyAKtf7mm5rcQlemXeWfCJLD0ZFpt2xGqqgPktszExVoulLkTSI5zzFj4hj08
	 KGcQqBG1S8z/KiMXE80xqSqyvhkvD3ZGzQvQJRKqc54OslO/TEWCjJovZpnSSw51l9
	 ogQ+ghX8QJSU6UuVQD/QHbLlb9uQKkNxsozVoqCoN8+DSt1wSz/Phn/PFgqgqBVlpN
	 ub0Vhq8dMYucA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DA1C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175479659358.16468.7149508409367198763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8d26974fce4ad9b84d829d4ad01516fc309fbfde4af1994553aeaf14bc988a
Date: Sun, 10 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754796593
