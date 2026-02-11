Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F212C3749
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770795894; cv=none; b=Krwk6QC6B6tQ8oPiUaZCbwOwTx60x1sQ5uKwYJjGuCCkWyzS62VjSdFMKGDLj49KXzNan1INyIlMIl64ipqSXYFZoy2eTcciJz5eyXDg+47Yqd/ux6ABqyFm9tDONobGY4AMcVGN91t2/rr4wFSmwXeHRVC1ROQLNGE5hIrFR+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770795894; c=relaxed/simple;
	bh=o8wqYI0SxiQU5aMn4FubeK3JC2utYnWkg3Bazd/TzUo=;
	h=To:Subject:From:Message-Id:Date; b=Yb4am09RtIULoCKEiQ7WyiXdnq5yP0fK3vwa22fOocTw6yNocrfnwW4ayOZmYQXkXqCCWZa3px33nhAlsqamkS2X3SAY0aW5UKqeo8cfVJHpR1TZVCARCVwPJ6mQpGLYgNdJWqi4fnSZrjyv+UI1B9d6n4KgcoRBhMWwTGlmoYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbbWa6hz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbbWa6hz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B268FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770795893;
	bh=o8wqYI0SxiQU5aMn4FubeK3JC2utYnWkg3Bazd/TzUo=;
	h=To:Subject:From:Date:From;
	b=GbbWa6hzva+v6KBCRaWVCbOw/Wp3aXN6o7elhcLKx1ggJgL9LHrym6wA3ujT7G+UY
	 WVgRtp6TS4Hscm9KJFY3ebfGav4EELu7ygYwo9G2buNoFA7eLED7HQwkhlMANLt0Vg
	 RGpq6Vw9ikLmQYYh/ZAqtcXlUCgsGiUGi71w+yiYk1yG0UbrfPWTuv1/BscON7Smmk
	 xs/9AcJ6WKZtG38MtIyC6d/2a1inXA77qHsl1Ag5+Mxq7WwAOa8IQnpRmIYaIyCqdX
	 xcSYcr3DuZU+EPPd+Vh08jSfe7GkzvVCH2VutQ1skLfdU8YIl1oWtMnf/UJkdIijOR
	 stXHrZKNQ4aPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD69EB5979
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177079589359.24490.18349110131896811132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 528f3fc763c9cbb06209e8793b29b7c09dbed14284678ca346f133d94d51b613
Date: Wed, 11 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770795893
