Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBC5282F09
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777625254; cv=none; b=c8fEXh71HBpJJXYJ0Eimbejmw2Dq0VHV9N1vXHrIzhQIJvMNWztpJTw5M8IQsdFrUgNtkwuG00Rj5R+IQb6VyW2aIvr6maQsrXydbonau5NzkT7HFWVk/fxd807g8kA9ZDqf5/KV8TwBkKZ/pp/GQFi/H15NgLzsEFi6SYD+RIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777625254; c=relaxed/simple;
	bh=xALJowq+u1WKxe2c572s5DkBieIRSAQmUmTuEfEZR4k=;
	h=To:Subject:From:Message-Id:Date; b=m06XoB5LW4ZHtvERfCXffYRU7CCuZg1JSvFldbwcku8NpCb0oq8pcjIoeNKND3N0Bewe0XZqwu6F6j3raw645pNYw4hSxaP1neafQyXBlhPvxURZbEm4bdhumtBseJ1K9S+a9miEZJai0FvXQCb9KfxEwOT9uDrCY6SkHNSIfhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YY07qCX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YY07qCX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C313EC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777625253;
	bh=xALJowq+u1WKxe2c572s5DkBieIRSAQmUmTuEfEZR4k=;
	h=To:Subject:From:Date:From;
	b=YY07qCX2zrvkrohPofJlDCIQJ5BNXY3JukJEqRGkytSupa0aLMEK2HUDGbTZo5gZI
	 UzHScWcpziuatBPxr9gE18prmLIWkl2+mK323jjkb4x3Fkm2gnKJBQMgB1D6g0vRNF
	 ExELOzL37+CVDKIXx0B9zdiFnBaQVvsUlk4OXxJOhlBmujRCiG4EFIATiyb7Qd2usF
	 SvZP6tiUU2tlDYTROoHhtKbAavad/xkLs2t4v/qj2Uptd30CqkMl8T7ieuhyAAhKk0
	 B6Im2RVWh2jLghqlNfBsZ1BkFaQVYIEoGtzJSgDoXs3WUOy476oxOG+Gh4X8vtucdF
	 pOLb5V0YkR2Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD478FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177762525368.4752.15916525000456055699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c6b0d8131105e2b7c55441225c8f8b82b95a976cfbe5cd639531619ed29ad5
Date: Fri, 01 May 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777625253
