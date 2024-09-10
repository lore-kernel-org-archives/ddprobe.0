Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4964A143895
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725942954; cv=none; b=ZDouX+YIfywB/TqYm/JDnreqU2X4BELL8HT1HAUkNmUBxPMz+MF/1bZCxwJ3Dgde1Eyai0I6cIidY7761Xo88Tg38pCY6s8Nl0T0xgXectw49G+s7Drk3MRCBbdXjF/WpBJOjWoljh5Ym0ZuQblZxjmk6IZ2cvU8DDbP0eayU2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725942954; c=relaxed/simple;
	bh=cmuMXNQIoE2+sLfmpR+YAEqUUYCb2XxU9rJAYTkJLaA=;
	h=To:Subject:From:Message-Id:Date; b=qHwc/YWIZ10Z4IXpkRXlBaff2ZXsyqH3kxn1utupPjDzBGKyl42/h4OS2Ah81Ygf34lTVV7XJKxn2ZrDoXSRRTytd12oxK2OrbTrJDyRszD1DgWawh2r3d0rwSkfarCmymIfyipv/CVaEk6jIXsRdM23XNo7RP3H4vaEJwoKB3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipB2ASAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipB2ASAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA127C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725942953;
	bh=cmuMXNQIoE2+sLfmpR+YAEqUUYCb2XxU9rJAYTkJLaA=;
	h=To:Subject:From:Date:From;
	b=ipB2ASAvIkSAAyyFYrxEy/MlLi5kNo3EgqQfKxmZfPVTCwwY1rFiyFvoZ48+gmWlx
	 tIwCajFMlszBHF3ZZK+/e4ZmncTlMepADHVCw6NjvFaiujFfmpkZFlQej8FW0t3TIh
	 LeqTKm6SBf1Q3NWwnYFMr3tNVllBDy2O/QKUbx3XLJbscKm3oEYdvJddrb4zXrLIq5
	 Mn+Qc/BH+T55kIiQyl0N02lnPzY918xZy5hLzvPJ7BGEMFmGcgsXX5QCTRvWBxeLxY
	 iFkNcQaRnxGgk4/hKGoavJDZ1q9kIfNEeTY9XCjGiFy+Sqr1/LXVOqw8JykqNXPs9D
	 Rp5zzPNdGN5UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9783ECE564
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172594295367.8207.13886813038155422829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85210ac0bc5f2c1b8ba9ef881e9708f93d36dedf527b325f73c6b864e73bcb7d
Date: Tue, 10 Sep 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725942953
