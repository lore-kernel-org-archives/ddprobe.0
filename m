Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46748156960
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734068154; cv=none; b=AvwM8GMWgN5EhdX6zbf+Zy5CpaJcI/iydMXHJifMtMl+xRKDd33BWX9Em0D0H41uujLKfMFxW9BtlZYPNHh3fS7hFh2uu200hgEfsm1v6QWc5JrCXHPeDNM3MWcCaPWHCrer2BRhvRfDFc+h55PkpUncWSSEou+yQQedm8GgITw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734068154; c=relaxed/simple;
	bh=kjqJPWUCYTpFo3gxQH4DxEqfL+W4sH4fL6S8b2VTr4s=;
	h=To:Subject:From:Message-Id:Date; b=ksDni747Fr3wxPYY0142x0BebAF/FIeymaGVPOjJhC6UJltpHYIwyGMh7Zq5PDRTZfl+QNydpuaoadFNWkgFRh/wDOhKAN0gDwsk92L30uIz9VoXMu38i0hxkb6yLXlIbogS1E+4GoV7nubj50wW+eqjZHqHVuB0Tx7tyaucKE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvUh/xdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvUh/xdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59FBC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734068153;
	bh=kjqJPWUCYTpFo3gxQH4DxEqfL+W4sH4fL6S8b2VTr4s=;
	h=To:Subject:From:Date:From;
	b=HvUh/xdBOvT2P2D9ZjO5BuhrOO22PBpi7TjJsKfJg3eagdFvS6Goc1Aytz44OJsqF
	 AjcXiejag111giv9pk2si32611136VS7qfHdSyq4iHSSTj/DyEeEFQCirtM0YKXyQO
	 uWKyoDR4AcrsmXvuIpqjDvwFc9hupxmAH+fARvZA5VLVdWAcWiP29uHwL4gisjwH+N
	 A3/2jH/nyA2OJ+PPaJ4wZ9ZRqSdXgmdz8XbN8b8svvYgceo9mld71M34logRdT4EhZ
	 OETJGgovSNLQUta3blHlHGNbLoLfyga4XZmae0m0HK5PtDeGof4XUbzwB437ZHfEL4
	 9mCS2UAwn6FIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F81E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173406815364.12609.2157934701929703694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8bc168f96162cdfb0867980fdb0018231d89b101a70c24261d23577ab5e7385
Date: Fri, 13 Dec 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734068153
