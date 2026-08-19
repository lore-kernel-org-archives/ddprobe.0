Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51626394E91
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787145634; cv=none; b=GxPeWWEIR3KwW5zYNzm4UHx8gocm3W9Cen1SmIzNi+NKgfXe5JJuA+i+chNsQg4GF/S5RushOEz2g7xFGMnwXRm23rm/kZWHuwKBGYmjDOtjzxyvey9dGNUtPT8FtaagWloKg13/gopYwZlZbEFsjCzsL/tiwo/ebrNWt19u2C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787145634; c=relaxed/simple;
	bh=YK9ONUCMukX0q509FUXfNre+on8c+r7CquvH6OTpCHA=;
	h=To:Subject:From:Message-Id:Date; b=eHVRldEGRGeTAVNAbbSy2PQcgEcj8LHEF6sGLISJHLFqdTrIZ6s7QipaylFJs8jxj0vmGoWZ+Pp5GSngTIAMXVf2HOA2oUtEJL1D8vYjs0AafhEjtKw677jyO9cEyO4IbaE9C6j3M9EWpyDY56RdXT20IX4vh8o0lRopG+v6114=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppai7Kum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppai7Kum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FA3C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787145633;
	bh=YK9ONUCMukX0q509FUXfNre+on8c+r7CquvH6OTpCHA=;
	h=To:Subject:From:Date:From;
	b=ppai7KumdwruUx6y1Hh5LlJLAy9ZfD/3dOSvTHU/I9U3j5XnjMQC+aZNuUXdEOscR
	 f1TaOGjjcd9E82HNCrjWpaxswWqZeNZQjycR14TlHyjVmjYPoi3F5nSLPrIPwK0Lvh
	 l4TVbQvdivcqPjR++tDNK+9tc/2Kv+uoI+tmsrqM3jgbs1YQbd9hxzX0Y1dFuww8KW
	 yhjy6Ly3NokdU6YavPxcp6SSTgcau4JirgoFla4iGDI03AfKXR2cehlv+FXwhC2lOx
	 z1+kkQ18SMKofQLGVJnPakoep50TCJ/vrb5q+rryyFVFxHOtYZrPru/dv78AzTT3lo
	 6s6WFR0xQ/tbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13B7C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178714563371.13884.1771436557170133874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48b3edacd1d900d3c994a0b54d4cacd79cd86ad3355a7664d5e0429c4f9d480
Date: Wed, 19 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787145633
