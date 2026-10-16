Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643594D37C3
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792157434; cv=none; b=D/8P576/6MerIxjN9aDGpIHR/klBwXbqQMT+K4y+NhYF93facrPiGOeehqYaoUtXhTsvIlRLAzEyUwxVqVnChXF2GuZugzCXfLiLNHdPxBlFpAorGHgxQoeq+vz4M5JOS5ZmCWuahPRzqNbHI3yUq57pDod640MsJ+jWNrQEAvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792157434; c=relaxed/simple;
	bh=7Vbv/L/WKPENbz5fIlCzcKoQjVdID/5ZB7M6wmRQALk=;
	h=To:Subject:From:Message-Id:Date; b=MEarQdO+QaX/P7zJo7ERqr2u4RMpW0Uz7+gR7/twHxvVDcQAOKyZNlAlmnBgup/jD7fU6DoZBQmndHllaAw+4OWBe6j0aHV87VKvNajeo4Yx1gdiBbRDvsRModEGdZsggQClhccx6r3omerXdZhxI1cky7HYuL8WO3/UXEGF/BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGaseeUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGaseeUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00E1C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792157433;
	bh=7Vbv/L/WKPENbz5fIlCzcKoQjVdID/5ZB7M6wmRQALk=;
	h=To:Subject:From:Date:From;
	b=nGaseeUEJu4LpUPlwpowl1A5rqnwhkE27q6FUxEW50iJR3PVuswwY7tZusQTgbVyw
	 4JLMU7moB4va+IuaLwY+HDJbumNgy37QSnE9zY1znML0GING8QAklk60r0k7eo6D+2
	 o6gX/TwbGpkCrRhCeW/GGMBgozZy63YIYql1PJ+PEHAlkYYzYOZWrEIZr/flVV9VlG
	 nY22LIiQJ58Mny/xgomnMlYK/7Nodhd9G6dUEaU2ybV38/2DgprGLIwy/H2+7rFegW
	 8eFYAj5qh6Nu+Be0sU56C8Lj3/jm3w5Nc23oiN/IdLwjZvHWYmXnQ/uryDZFpM0SKc
	 4LMetcON4BYWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5A1CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179215743369.26242.13448922453533532731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84adf9b3d0f43ce03e9dcca52fdc7a9aa17fe872c1c82740d375dd67f52d046a
Date: Fri, 16 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792157433
