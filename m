Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB9A263C8C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749889794; cv=none; b=uCiidmCvbKcQtYtbpyQFLHzb9uu9SkLBMCYAptNR01hXIOBt3LkL4GVYBsN8N5pCJ2LGzCO+Hz7wVnu5G6p4rWf0ydmERqmTpGS2cnWqu90663IsfzDMxVe6Bg23Om9qbS7r9hE1Z5BdW+cgIqwm8cUUp/zXFtxW+TW/kE5Xztw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749889794; c=relaxed/simple;
	bh=nMjNmKBdVb2zkQTzN5b0wi//ih9ZVuv1rpXtHW/jAYA=;
	h=To:Subject:From:Message-Id:Date; b=hk3NUVyqs8rWae4TyDOqhlk4NusGocbvE78C5yYLcs9dJFkmY+UaH7TdvFAEHSSxfhtB9lLK1XC8RiW/ad7dhnSDFDsXXcp0zo/OPHsOxYsntKuqJULh2Y4OdRT5TaQ1i3MYBf6D2O0n9iN9pZ+7ICNMoGFk2hIX7l5PPwluxd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQ3FKpgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQ3FKpgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80DCC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749889793;
	bh=nMjNmKBdVb2zkQTzN5b0wi//ih9ZVuv1rpXtHW/jAYA=;
	h=To:Subject:From:Date:From;
	b=ZQ3FKpgZUVB1RBu5P6iqkf8dqPGxtJFLaPHccGSxcYEqE5EfwdRvrkMXQwxv0L3fQ
	 2cqoyRbO824g3PSnob4XfsUjoz6LjgAOrkeCK0IqLOnhTovOMyoxUoQSAzzWZDks7q
	 FMP4HkK6aOpW4xcP6Z1Fq/AXJQvCTNmIvnuq86Dm57qFX0zwjx6DpjUD38wWO+Mh8z
	 pKObEQRq6PeuPxKZGMUodeLvs2aa3uyVx6tDJaQVVNMxmFcZ3JBYRRsL/dAQztPT/I
	 vKORYHpT2JsVXVGGhfZKQiSH7JTbOSbUyeY3iVvrkcA+NSwuoXJWUvfwHPHWMZBWN4
	 /ntGq1j6Zmv4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16E8C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174988979362.19292.788677837557030146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6311ce293eff3f2e8da10274757dcf91a1f8d8e62b90d3e1665a4dc2bc4bc203
Date: Sat, 14 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749889793
