Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37234A937
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776584254; cv=none; b=ZvNeSzYETGACahrLJK0Ge4JYwFGOOFna8Qa4dFJRNCrDsTwLF/ZRymMmzTfUcnX7xSpHqtqI6hWNW5bff6oshCGxkYrs2WL/pKa4uKBo/yNIEE5suk1vTvSqH+nNkqLgRUM+NIXW9F1e9oD4mfQWXfYVPYYeLnPm2S49/joDdQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776584254; c=relaxed/simple;
	bh=QpZzOJzfawi+7jog5WD+v+hri4BbbBKzMsKPDEuSDng=;
	h=To:Subject:From:Message-Id:Date; b=SL+qfDHwIb/52hJ0A4gWy3jB2fJ3YUwrBtQymtOYcVH4dYHafifyfV8MVAq5jzLqWSskffWP3Vw8b0M8u0DBz2Yzbye/5OoFWOR1PvGWSavp4NSA4YUlMNfTGK0FzD4jO5dS5SRMktud55W3BTY1/MWB2Xa/Jvz2Z7ZEeFC+EnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Crq+ccse; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Crq+ccse"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C10C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776584253;
	bh=QpZzOJzfawi+7jog5WD+v+hri4BbbBKzMsKPDEuSDng=;
	h=To:Subject:From:Date:From;
	b=Crq+ccseohTbRRfq370lsPtw4tnTVlDsSPoDuLlk86dfLtFCCekcPUvai3O2diwz4
	 gUWBzhWX2t5n3PVCs8QP6/DRjdfjfZhbOHeX5MKQfmRWLOF/5z+tQtuBms4kEtn/Vc
	 8ES7ay02nCWg3ix9XnP89sNMReI5Dfwu65WHywT3K6vOpwsKvSokwGCDPZtdVrkjnJ
	 Q2MZuPXMfAb0SYvUcFQqYXK2dBfaaovbDFNnYPYceABoU4ICOQDsNOmQgcD3Mn9tL6
	 WwC7L8gqK6M1Ej/BSjSLd9JrXDRpM+m6EDCQ5IBaPObt9Pemp/fyxX5pqrg6H8unt0
	 0L9lIycZqJhUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7DDEA718F
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177658425368.21301.4249129496160925831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dfa2ab45620caa8abf6956e411c4c4a051b9f53c389c25ea4a1d521b07551e9
Date: Sun, 19 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776584253
