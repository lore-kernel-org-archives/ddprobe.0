Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A64336D513
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764451974; cv=none; b=Cy1auQE7dpOoDhlSEiQ3fmCncwqDHZz6DKt39DMrJD4jLeZ3UPQ7ice+nx/6x81dBgf97ePuu9xmEdNWtltlnXdHZ/JkpBovjep3g7IwdtyLCZoIAPPaEWZcAfTlOg0zGfrATISJuK/V7zGIl5NQl/nMfMpeTaHbg8sCXlhz844=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764451974; c=relaxed/simple;
	bh=dqTl6YKX33+QctRLbNg8XYH7HYCzCIdDSB2xsk1nMvY=;
	h=To:Subject:From:Message-Id:Date; b=bq2+rvcbNT/PvEh/NJrkgRfCUuXEQJul2yyPXqTxVEMvV6kCNqx7pix11jZ7YPPCUymxPwqF2K+pz2hrOiubJ5olMXwUf4bAFjXmUhIyKimhinotUGsxGfNWsEz0z4h0IbiO/eHWFVzJ3p4UKmScicnqrE3vawacnOksoGoLV48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oews/kFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oews/kFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A383EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764451973;
	bh=dqTl6YKX33+QctRLbNg8XYH7HYCzCIdDSB2xsk1nMvY=;
	h=To:Subject:From:Date:From;
	b=Oews/kFG7C1R1SPOZXm8JBWdEenItXOjHiYgFdWjVEZIXAx/U7m4USE05UfZrnzj+
	 iPN1EuaVWJBPIc6iUKDdY0XreIJ9/gNI36TTB2CvP+o78mcKhbMa5dvM4f5YH4BKQZ
	 qEoq+FxsZWC0Rh9sZr02peQdbkfZecmSY+aQFlIg++WVXMov2bmDz9emcbKUOe5tS7
	 E/wfEgC5jGgBEe5jxa8Rxsf35WiVu5ySbIb9vzUsz/9x3S9P1i6OMHcxedAuTxS+1w
	 g59/hgt0aymxmL0x3B9LCYFqNfETttk19sstYLAAcwIW+/WQr/W7p15b6I2WSNgRPf
	 3Q5JTV1sHpbKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DB2D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176445197358.4656.15940223819963128118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f4b517713a1c71ea7d0494c604f7cbbb9fb7e7e98ac9854d50e6a38949524d0
Date: Sat, 29 Nov 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764451973
