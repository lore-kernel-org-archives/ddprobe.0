Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E7029B0
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753599595; cv=none; b=o6M+WmURwk1J+eJGonoUVZ0rhikC2RYRflqXZ2X8tyc9/7l9cqmML5/WTrXIHhjmocGh8jCc/bpOWsUeXEfEd6S9g4thN4/1gdJDpA6ioAOp56nhm8bpFy0t3nxkW5qQyTf36IXxdqt5e92wgqyLjf0byvzLbdq+tLlsPU1ydOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753599595; c=relaxed/simple;
	bh=vE2Qs44cfAc4gxfVV+US3NoEaQ7YBHX9fZE7S8cFMYI=;
	h=To:Subject:From:Message-Id:Date; b=tfEldwKG2++Agdv3cxA1faUAZRzCttfjsk2eoEzDjdwyd3c9vOVkjp12PZEYu2pfh9WLqzePM/MLXoEDRjgohJhh7irOVJ2lv0Oz45P5Wft4riXmjVIaYxxkwjh70Dv56GQjbOMJkL92f4z7Jit/hEj9pm9YjANnKIzYOWoQt6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioTgygn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioTgygn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3989C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753599593;
	bh=vE2Qs44cfAc4gxfVV+US3NoEaQ7YBHX9fZE7S8cFMYI=;
	h=To:Subject:From:Date:From;
	b=ioTgygn+PJgBfNWPI5Hm7GzjeoYH4GsrRJQEUAqEe/Pj8gYSeWzPpW74CUmfAm2zR
	 SCs1utJrwOIJ63ifgWBRIfdNm07VVmu18Hvzr02EO6r52TzIRPIMWa4kUNVIu0/qyH
	 JRZMa4Jv5uL5erXLMdbQNPwSG6fWz9uoJkS5RE3Ml2kMY/sBbQxKnIxmZ6+hAw7mI/
	 vM8rTq8UZ4uQBTP1XJ9YQQEiFxdNTLUha2RisLiMMz8FQpQUx7U/t2wZ1mzIfXCWrm
	 hIpUvVj46Hv/LiYtJjdjFH+FP3ILrbbGo23XX4puf4xfHdQM73HPzKM/vsU2F4d3Qk
	 4FJDUZ+Plfxuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921EAC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175359959357.13800.12232319846634144725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0cf598aba3057dc639383b47faec9203f6e73ba47abe3404dda805adf9b83ce
Date: Sun, 27 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753599593
