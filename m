Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9BB31326F
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784371114; cv=none; b=PEzRFRhJnBxKJuHzPoI0dkomlv8MWFGwcKpS8w1Qe/R3GVl+OB2rMmqh30Rc7nfypho8KSvNmQbtsZMfL3joS/iJ+8q4Sv4ZbNRqaeXhBcGNVVTwi6VXExhliyby9tzfHLul8vAD3Hra83d3/y49osostTmtNFg9ct4sbcM2jdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784371114; c=relaxed/simple;
	bh=CAT3Lkc1tpMjcPBSX9Cxy2gTF+E3XacJy6HnWTsc4eg=;
	h=To:Subject:From:Message-Id:Date; b=LeZIzvSKqqleqogAOrcKJcS777e3zqvGk09d67ujngPr6egW50jVQxlAIAne97fCokKQ0L31I5MtjJc1c4xbrfNzUkBxvauZcH4YGRb/Of9WBjOo6kBbRRTDL2Odob6+mW1bzX33kuyCHcmQJbdvHmqOyuVe6emYxb4XgaOHVLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T02HESjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T02HESjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0108C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784371113;
	bh=CAT3Lkc1tpMjcPBSX9Cxy2gTF+E3XacJy6HnWTsc4eg=;
	h=To:Subject:From:Date:From;
	b=T02HESjHfONRSE2tVLMTpntIYIttK13V+3TLmr7ycobpY8vevQOmZ+qEhqloZ5VYK
	 QihUKhclnGJ2/rz5MKFZJe1qvmVg/XMiN2V2TpGol/b8bckHkytsTk6FwrngWnbijs
	 WlEdLu/v7yURQaAVgqGsdgb48mSAjwoFBe4OoXT1TbEWK6MGvtwqloOz1kYPnuQHGz
	 3UltdPB8liRxgyBghkTJqp89wyk1ao+X+tnN38okSkwfoJzD6GaVmJO6J4wWL8FdYT
	 LeW66Ymqa4A3A9ggLcdNekuEDfDdpBj2QwnRreYKwu8UDIgUdfW5dmFfH0MQOYWE+3
	 9XwJ4dHN5MXvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B13C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178437111373.1573.8046799805995983481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b62b6a218d678c0a000c07b8591404acb97c8e194d09cd1675eaa60b065a8267
Date: Sat, 18 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784371113
