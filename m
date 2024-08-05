Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3273010953
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722851154; cv=none; b=ablDMC0535/YcJ7U++/53U6SNLCZlMo9G3djiMHFF+cmWYOJpZDECLwe7DNJwMTD/KH8gqflPks10KM8RlWBqRmRD21+LuqsufDG4ay08P8yGwW5tgEU6BLmW3E6cjoKegZCYTf8Z2apQfC8nWhO73wK+M46YOszylFFm1U2D60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722851154; c=relaxed/simple;
	bh=6x/vdC1DZEGxOu/EwHOuJkE0fUU9ATW1v+fQoSkrbdQ=;
	h=To:Subject:From:Message-Id:Date; b=gdhTff9k2RK/l1mDAHoTIfUOBLlqAIQkoD0ZCgSUXhqxDFFnsL33OOYEbqoKxr4vFppcRV9wcEERFN6Ps5tyXV73aj/TxKzAIcT//rf0YP5QLzgvakAyuRf2tt6/ZJAZVc8y8ixH5Lhum3l87ra1ybFYkpWYpqj1uvrIRVlCb9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VT60WiF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VT60WiF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BADC9C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722851153;
	bh=6x/vdC1DZEGxOu/EwHOuJkE0fUU9ATW1v+fQoSkrbdQ=;
	h=To:Subject:From:Date:From;
	b=VT60WiF4MAe/zU7dVO7jkE2XlCshr65iJbcF38sYJZ7Y1/QrKS8Xn3IfLDz75DLps
	 gAYyh7HIIZZTJmpumqC00qGK+oSHCeK2J+NEziCRGlKOsxP21XWcadXnRFpx0WCYys
	 o5dtSL1cpjrsgcBWWMvHuue5cKT9IBWhKmiVGDZCeZ8OU/jlz9Jb6T4goxie7r+kPJ
	 1zeW1sEFhaxrIM5H7g4fyiCx99U9FSSK5ZUeRzvpdzWvJCiB40nTi3I1QVjJnU31d/
	 auE4Yje5xhLi3mgTjA6x9u2WMcw9knsHURqjpZyrQ6MSEeFC5mI+C7u0A8dPt0IttR
	 JfGEKy+d7SRuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0309C3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172285115363.7294.5557161307331414800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452fe3eec4a51a0d5a13134569cf6800a570c48357c05dbc0dbcff1002376e35
Date: Mon, 05 Aug 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722851153
