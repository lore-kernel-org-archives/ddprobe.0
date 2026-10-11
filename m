Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB3940A936
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791756034; cv=none; b=VrJfyNElcWKDQRwf3PB0F5T+o1wuWkuezN+iyxoZwI0hVKATIjftSGXbA+R/ZwaKSJU7YcfYQG14tpQQ3UJG+R0wjNYtQCz0pvG1FTZgpbdGq4WLIeVGLnr7gUiH+8ttEs4BORC2D8BWOasGiSlFhAg4meBCZ5zbixnyt9Zg4/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791756034; c=relaxed/simple;
	bh=Zzr4ul8OqVczGJnFStQgLJduVpad2GOahVgp+50Rcec=;
	h=To:Subject:From:Message-Id:Date; b=K9nAOzsjmWXOcjdQMm2kbSN7I9NUa9FryurL9vT0y1/VHVGbhsC4bePrVYSzen1mDhppjr9gMflGi93jX+XWPrBHO3q0q2mDqQ2qc9OKDauZjiLx4MiA30v8/wKwexZ3lllme2AzgkeoqkDHRZI7hoHfORnWPhd3OfEYYeVy2zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRTWtNGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRTWtNGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD809C2BCFC
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791756033;
	bh=Zzr4ul8OqVczGJnFStQgLJduVpad2GOahVgp+50Rcec=;
	h=To:Subject:From:Date:From;
	b=BRTWtNGyVwKPR+H6n9eTNUzWFXykcFud1iCBXo+ftI3zUCsmHm8e+IJIWcOM3TVok
	 G8jwzKNpZIXyr6u87SWodFakOpL6SfUQ0+cUgZxJ08s4koTBbgGOeOS5KPmlXoVpBQ
	 iI4c+MWYL3SpiFcaXC7/nLd+2NlpKhyciV0V+KHj7tIaQiCbEBduoi9y47v9V3/YXP
	 f3YVVgMbypNJn4qCpi4MELRsXvuHo88+xbMZqEt7sYaniBO4hzYlSS4PITZr5QQ1FA
	 43eXHYmhb3tuZL9ryEH8HqrJLWYLZRbSTDwapm+h2yS0mo4PyRAb09/Huodec+cO8t
	 dpjLTiSA1nTxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB92DCA9ECF
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179175603369.8499.5094499541829806765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a449c67808dea12f97cfb38b6655ba6ab0bb79b7b0d29d2b4d75fc1885f84d4b
Date: Sun, 11 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791756033
