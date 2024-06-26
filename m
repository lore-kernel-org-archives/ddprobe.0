Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9D7181BA5
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 12:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719405203; cv=none; b=FUrbzUdcXQZeL/kWolAvzFqlgkbXnsR+JqqKvuW8M60yuRIujSDxAJd1LNz9Nj4y7c5O8yFMu3B+/F/RnidcijO/j6u9DmuEpNuP3Fps/XvzZe8rLeAH5arQagKORJMVYnf9GezwHvQBOE7YHWFXa7lLMjQE0J08JXDKDhqRUFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719405203; c=relaxed/simple;
	bh=UP+0hKZuWBnTEfHFE6atVez0PqQ0h29Kzem838TVEqo=;
	h=To:Subject:From:Message-Id:Date; b=Wm/trixXEMbJZEqju4WoIoFW2djG2reU/NTbLKCFgRxYAlnt1AChCTeUyptqYqdg9PWDXDjbFPGpPI2hYsYQR+G7ld8Lxnq24EYuLCo8IItWe/iyQJaovMQkAWA3zNkTVufKOVvGitWi9+oBQ1bFdltg7s6UleyJvFA6eM/iA2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQXbiLF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQXbiLF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D39C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 12:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719405202;
	bh=UP+0hKZuWBnTEfHFE6atVez0PqQ0h29Kzem838TVEqo=;
	h=To:Subject:From:Date:From;
	b=OQXbiLF/VBBVa3Mgq7ijUMKY5Q/4e9hUADCZfMs1WXn+dpuEbei1FOSp9dwOMzFtC
	 WNcvRfiYWYAGCr1nT+jHd4rRv1q7oMM0NjEL26PkjZkfuXS1VfUOeVlwMOaxIBo/+t
	 w+21n0oABqM78ZhPgOj0X91+B4eWaSB8xOj7ti352kI+uxgUVIKwAlM+sO56IZvC0N
	 aEp6NbGd6CEEpb7r9/cs5uHQdA2VftAaXNgPG24UDWaWiHIALC3DsAJehGd566733k
	 YNhFC7U3UPu6G8nEqCFmyTo1VyUvFfnkqXzV2DliT1Z+x0YmO2Gon6NaA+w9hn2Jd+
	 3eLKzav+0LM6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5168C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 12:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171940520279.20384.9659759511895040703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c243aeac95316014bec8116b9822de2fda49de8f85db4b002fe54a91fd35b75b
Date: Wed, 26 Jun 2024 12:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719405202
