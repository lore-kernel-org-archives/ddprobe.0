Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A21B33FD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747545594; cv=none; b=MyQe+Yw7I6AXhPLUDgjFe9qj6asSqZK3UgVYtv7n3vlRheV2dHMg7oT1PqyVMOMgMolL31STG/z6r5Dg2KrzI+OX8Fw0lnRFOmr4UF9o2xIVmCwUHVGSQ+4S53b6llXIDEo+n4/2e4q9v4/Mxrm2JNaAsuhlo1aWYkZzjldJaM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747545594; c=relaxed/simple;
	bh=hyGbUsyB8RZ/xkqPlCxpBkMLzQ2++Ixs413o6i2mR9o=;
	h=To:Subject:From:Message-Id:Date; b=W9MwFWRbO4Izpqq9RYt6CNQ/zOBWKrUMzG481mZnLyPD82ZRnU2A10bI+PfZbFgIloJGaw5TtczS+K0vlmsvvGklnlW4h88wLN+gxOBL1w9d1/m6d5Uxgm4Th0um8T5qTJMRjjSrGGTlw8C5OFwz3BAByKe4aaTZNreTvnfBKuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jV883s8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jV883s8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8880C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747545593;
	bh=hyGbUsyB8RZ/xkqPlCxpBkMLzQ2++Ixs413o6i2mR9o=;
	h=To:Subject:From:Date:From;
	b=jV883s8RXbIvwSlvBc0H1CytjVx42eCRa7kMxUW0KDxA/Hb1eJd8lPaNIBlCvm3bQ
	 fytmBtt95py4SMkBvwOeCBTBR3vtgz6iGLf5QimicQeWbxsw8dsiDjIlJHN3V7N+kA
	 asipm0YwRsJi/JUjW189zHzVejWHxSQLj7cJXGMyqlALJGwPIzPgdOYTDCJ1y3E8bv
	 AYXE98QRo6/TqsoKxQGi1tFBF5tZfwNDI7/B812WNdGGhEJhwU08yz1f1mkMYcSnPd
	 fNNyCoLSL0JsSHJ/7Lx96lKazW6XlIm/07iwOC3AALUExoX0W/Lx/r68bdHQ6oNRPe
	 hUoKmnyk4j0Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C9EC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174754559358.25207.10332648976532491166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8ebed86cc98265369f156bef7447b06349f64cfc9bc81b0e5fc832ee6c7a57
Date: Sun, 18 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747545593
