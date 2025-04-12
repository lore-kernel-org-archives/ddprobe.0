Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420738635D
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744441194; cv=none; b=jEVkeSLTYbMi+VnTpfTXerU/yfNXBJpUfybiJalTC8b+9304pNq/CFwZrCmqRGZFJ0e57DmZfTWRtR/whVZKEpsm+xWDYJ5nPL8ZRKEuQoPBoeZj14ivzgu8ZVrE/Ol27ggjzuO1iSBXDPQxlG0Vjhcuyoqnk/R3MlDATaZKg+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744441194; c=relaxed/simple;
	bh=p2qgmM7PCN2vBctXbskhzWRxqd5N7XTSMN41lWGlg38=;
	h=To:Subject:From:Message-Id:Date; b=OHQ+k7Oo6OIwI28mS+Eh6Gkhv7PZUOIA4hlkgg8Zf+KDCM74rei2GbypUjlAz3cOIO88G3FpmResnZJOYz0uvca9L1cs8troEx3neUDdCAb0w17WlU/LrSVrgvZ5SUzS6W6MeGJUOb4RjLPIl4fCM1oFpphjhB9k0Z4GEnJ3vbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrUA5m1p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrUA5m1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0309C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744441193;
	bh=p2qgmM7PCN2vBctXbskhzWRxqd5N7XTSMN41lWGlg38=;
	h=To:Subject:From:Date:From;
	b=nrUA5m1p59K3gd3uKUQhPbvV7RSDvaotbinWFSoY2C9kVitstQyRJfYQuIHZ1EHgd
	 x2d08a933yZKSIoT0QANLNH6AuV8NAwgMsbEbJyX8j13vV/1xzEF6Kguq//F1VTv7P
	 9pFBonXbx5NfbJxBf0mTeLN03/XQ4bmYYtcvUkSguxeeAUHhJXXoE0FXMNE3X9GaDw
	 hvW5SRhnZuK+z06RENxQhW5+xUzlUbqb918Svn9QGQChHDhotSQBEvaCqusL4FZOhG
	 lLaehfv2gLIctPRnxQYbB39K7HYnRi2i7S5/F7MznI8DvqMwKgvEs2Nok+z9yso1rf
	 4DRaJqHwLEuJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A47C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174444119360.23211.5878880269213885307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc22a7cec87dd9344f87d6d6e2a2a6c1f64c9e29578ec638de047031fe53a05
Date: Sat, 12 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744441193
