Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D124C98
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766625834; cv=none; b=YqrzPmVk9bg+BfB7mSmmqmJ4jT3hMRyW69Rn0SKrT09WwFjjwABMYseKEvOtfxvKmqbdHz6FCAdNuFj4JeUTwjnPS/75yZH+EoHCtmKqB0H4LYmyxJZINmGmscn5nbocwJrE2VqV2PvEWMgPqOng4Lcbz5Pu8M06OQBYwjQVxWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766625834; c=relaxed/simple;
	bh=cKnyv4HtD7fjZ+CuTFQqJJrNadcjkfbV2iQzHl6za5Q=;
	h=To:Subject:From:Message-Id:Date; b=JMI6KSlCeRZjFWecIXPyprT6sKwPhjPVL0tW58K3ab2jH3subEaC6Bk1anoQRWGI41TOr8Ok3Kb0EiyByMm5avGhoFCQGA/D4lKGTtxDbohK22lkiYm/sy8Dm+euC9z60DGPwjOzpQrWcnkUQBqA5cfCv+CQE6w1LRjCDRzOMlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdY5LNsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdY5LNsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44C4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766625833;
	bh=cKnyv4HtD7fjZ+CuTFQqJJrNadcjkfbV2iQzHl6za5Q=;
	h=To:Subject:From:Date:From;
	b=cdY5LNsksMd46W8rQZ09RBi7r3QetLe3J8feI0HUFYxMqeMh4YcdNW28NQoFjLZYb
	 cjtEKeRF3rQFRensb9ggVkNugIeCdBTUU58PkhQ71Y4qswa5/2sD127g1lznFkoBjZ
	 czZVxzDrkGvJ6/oGNfxHsHfmP/T7Q2NRgUTNAdB6crV5AVHHdK8bVvAcjpKoXhjEOc
	 oFzSbco9Itl9dE6K10uAE0HuXJWX2TK5HtRCJAtiYMqIWZCcoMVPWdWhMI4H4eapAz
	 sGU6iyEGRnDpdBdOA3w+MWADHJFXYhrWRIHuJZnkEeNioPAHtPaBRQqBQMYcIKRv+w
	 D7F03Jk3lxvkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9121FE784A9
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176662583357.25020.2184527927165718442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85d01457739c906eb4c716601d6e5437d1a265184887aa4d9aa6c7193440bbb
Date: Thu, 25 Dec 2025 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766625833
