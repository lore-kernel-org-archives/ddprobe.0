Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423CF1AF4C1
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747763394; cv=none; b=PJqd+w3qO8gXfJyvIJ539xCh4eooDvNKJplJG5PvzqLzKVeVYKj7A85EcRElAMsJHWnXMdHKrjXg3IwrTp6QHJhlLHt818bosBT0ocGJ17O8zWfhk5JjpjQrWVs2Q0ehior4698mgzYodz/ybVZMXSUX/FT7yPR/pi12HH+/zLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747763394; c=relaxed/simple;
	bh=1ah+7D0klDNp4mFHMNeiqnXZiZuf2vSS2trNtmRZk/Y=;
	h=To:Subject:From:Message-Id:Date; b=PHcGU8QhZ5eFW2RBZ92XlAeZtlCr1NP//EOUrIgXUvshuT8t9mIlW7DRKHuwFz0EpALjdaQ1Bla4+S3ba45reC0J3IzW1EXbO9KBp7mYPh9wcXnNZJPleuP6daUaA37n69JnXkwPNrmQ2zVoR3JP8iDrjxx+j92okC7SVIhzr5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGhOMGpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGhOMGpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB07C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747763393;
	bh=1ah+7D0klDNp4mFHMNeiqnXZiZuf2vSS2trNtmRZk/Y=;
	h=To:Subject:From:Date:From;
	b=YGhOMGpR5PsKXV4gi5R6hdWvFOYX3NBGnjOrdEREujHFOZQO8oZI86/3OLT+IT8/W
	 RdkAbJ2l/2/H5SMsAGrA0v9Bo9uwLj00250t5jxwZgGhDsw3iYCf0v/P+t7d9te3h6
	 pdqoi1W4OG2itW2AGNlnl1NewRy++mxmx7oekXWbP8os9pIMN2bhTzDS3jpobpdAJs
	 HRjQNjfQoJJZCB0ZjZlrOAgAskrm+O6xZw2/6Ld4CvaAGhRVCd/xAnX6zxmpv2Qayw
	 h4APD2wch4+I47mRgawxO520o+y1695JpOyXiowIy07hq6woQiYihZlfXbbUR1sCvY
	 d/JcLliaRt2MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B65BC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174776339362.26786.17393007435492699885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23cbac2015f4e3a834ea75de22ebb3d3981edf0dc4a4783d3d995d1b3ba3b7cb
Date: Tue, 20 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747763393
