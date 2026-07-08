Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39531175A75
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783522114; cv=none; b=iFs3FtL7aMBTXxDV1Q+MyFx4Q7PdNRH6VY0613kN3hHjdzw0fp0hWCRTEUfUsMu/Cp8qFwVhHwlkm6MgxcmxgooqcR3sYzWsmSFO7hPmUgO+hkOz+jUPoVbq/szoHQHOw2frUTeDYWbHzidjqC3WgL7tCM0HGco4gTm73jBfhnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783522114; c=relaxed/simple;
	bh=9aaChv+oSBzBX1/BJuvEqu8AwoZqHgvi1cVBe4nQOpc=;
	h=To:Subject:From:Message-Id:Date; b=CuNJ1xA8dBtcUwOBdorRJBM7RzAY8/7GMtoi8B9DfTGzDftqPioOleRbCjda6OoFkFw/VuSv0FC+CfNWCyL06FPIRBuzcn2XqnFx9tPwMKI97W4enfHJ203WZjgawbG3/51otfUVCj71y9RAxCYvSW4xb+xPhomTLyrUAc56Wds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+fQKjDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+fQKjDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF765C2BCB7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783522113;
	bh=9aaChv+oSBzBX1/BJuvEqu8AwoZqHgvi1cVBe4nQOpc=;
	h=To:Subject:From:Date:From;
	b=m+fQKjDnuu0P9x7SAsd4J6ifGfXpij0XdqZrM05URzM53PNozePX8dTwvAGBHlsXI
	 2F24FYV8+lVbFamEnr1+JKxjJUJFoGOtw/V0jLzLds4pjp4F2TnCtjvK2gXprslmVo
	 j5zyWEbfK4WOlp1WxxNOmnB4tF4Cbrs8SzqLETf1H7tLIttM9hLH96kOgSPHKUexoq
	 NgMUuA+wmnyHuB5Gd8SW1A4pOBy8QCOe+VZYd3+nIYlsDyCkhq2DNce6IwWm8SINIo
	 m1a7Gc7p/Br7cZFyVTPxQqc9F7+ed3qE1UfOY6C5sQn2WRYa8IBzD39sE6uA6MD1yF
	 jw7/+uPrY9G8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB576C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178352211369.21029.577128745427986177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 203d809e55fbb5cc8f13d8caad135f3694494b5afbe24d9c6052bb8e3cc4881c
Date: Wed, 08 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783522113
