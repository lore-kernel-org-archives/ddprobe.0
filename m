Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CDB54725
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708379297; cv=none; b=GT/eXLexCmgobvNfeThfgxVqq2VkAEW1W4/P9zduiU+5Fd9M6w0/vszM6WM3XodEDtaa3aYfMfPnktoQPzsMg4sfvPPwMW6Iqfm25ol5ZCrOKlGdWEciev3TyinxxHj56bNpN/yXD+nCtmXfvUHKG3SpRtLUvB92kEdVuv6pb1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708379297; c=relaxed/simple;
	bh=AYiLEnG4indkS9x83gseifGzScQ78rpG6hv/7xuC5VY=;
	h=To:Subject:From:Message-Id:Date; b=MSuv1K+8LleVb+PKShsk0Jtpxy5FdfIGqauzuA19X/kskblBosEfsQmogfVnBFoLIp0b4etw5fySfJ+6ncoZiomY6wJMN/vSiTjOOw8tSvM1FM0ZuQQmEcEktYzZDeRd+dtZxThHDvlxguN1lZV84S1Jnly1xcyP5BWKq2OWCwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXpKCu9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXpKCu9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D1BCC433C7
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708379296;
	bh=AYiLEnG4indkS9x83gseifGzScQ78rpG6hv/7xuC5VY=;
	h=To:Subject:From:Date:From;
	b=BXpKCu9NMsK4n4UyaV/ypoPl789WBXpiRSx1JJqczUjdkDRQDdaOlPdc0o15P4Hf/
	 kbiSl4hIfpnVCxnJ2ad2qZ2KVGQ8+Ly1cWiFw8pXFAtogUHR5IjSw3uMhpdSCxkqJK
	 X4Q01jv43LaKFFOxfVJhACmHWOqJZUhXCqarfOv+cgQOsehEc423LSWTl3NgzuT33r
	 zNc74kGd0BTkijwwE1xgP01bjohMcZ01S8mxVFESmqNuN9GShlkZ2sPvJJ+bWvZdzR
	 BtrWuhWaYBm5qF677NCZFmyKcqXi8XPzAJ+DpOGqmmzGj2689Q+D173Ca870gPCqYK
	 9TVjmpB5Cfw7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F566C48BC3
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170837929643.25852.9618146740044514498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b78013be84a2b1d2e52d7f8afd93e94ea9ffa4c9537bf53150ebd510107e5606
Date: Mon, 19 Feb 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708379296
