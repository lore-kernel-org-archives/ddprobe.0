Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138FB155A5D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772229294; cv=none; b=l0oyKjnQavKGkhmtsun2uUluw0g8hZA5OpPF5BXm9k4xCjtGxitdoTklYR91HD8VtY2ZQcJEtGucdT+MnSCXvZA7Yi8kz7uGollP4FOzRmjE/fP0nCfODtg0PpuHGu1W9ELxBGIxjgL/ye50t797n2aO/FTZ2x/mEFKW5oeI0os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772229294; c=relaxed/simple;
	bh=UFp0Zp9wtpvkRzp+0fyfq/czb5JG9AGMPtMu2yrdZCo=;
	h=To:Subject:From:Message-Id:Date; b=gVWkbZ1DDGZEMsQPu+3ADZD1LsP/A3ldCh0I8TcBd74tsVXcknSkFmi7j/Pkq7Tm62YbpHIZQ+/oNMjskO1NdU4grlBhYHO3uARzlVbn+qjZrAww+AjAX7e+u4zl747mPJ1ktkeX6i7CaoIc2B2j1OpkM2dznbJE94KzB12lLCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTSE8hJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTSE8hJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A42C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772229293;
	bh=UFp0Zp9wtpvkRzp+0fyfq/czb5JG9AGMPtMu2yrdZCo=;
	h=To:Subject:From:Date:From;
	b=JTSE8hJA2pDXSk+UJo+G5D6qXu9X8cGXtdNsgIYZBB/jytRhhABEshHtKYbHYuA+f
	 D4ap1N87egXb9Ox2IkHhK/v04iMgZBwYipduvPsJP7s1qkTPjBWcreLpsxMm7cHQ97
	 evj4VWZApNRwGRQcIe4g4WGLIJNMJde9cNiSajfCO/oFCxmieOFE4dOMce4Myso7Pc
	 MglOeR0ovgX2Qa2cicvyQ+jGJ3AOqZOCyvgG/ud+FHixgAPL6LF8MHQolGAsSe30fK
	 WYWPKpGozcKdJkFF1GuXnCiFBbCiseSqWvnimiY495aMC4lqF9CO1BFYCQTCokfRP+
	 qctZfc71G0CHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90740104891D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177222929358.1962.12646148623446343256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c2688ff277108ecdf696ba56e11c2db8682cc3977a4d9e3ddd4f975a59718d7
Date: Fri, 27 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772229293
