Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9ED350A1F
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776608854; cv=none; b=HIqZfxyFXvxlEgYIC8pc3GDcg5VBG5/pm6fRwNv3XBheMd684OFHwNuBVTqQ2hO8PISrbL+T2BbbWZf1kFo3wlrqA82BJZUzwc8i12myqc5kk9RSDWlBik4khqLurA+rFw8CT7wM5YDz6MQe0qo1cATaBFuW1jFyaHTXX27y+Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776608854; c=relaxed/simple;
	bh=pyN1ttzwfdlScORPAG1PLlycoTpvD1RXyqTfoN96TTE=;
	h=To:Subject:From:Message-Id:Date; b=FvmsFr/0P/CnGG1g0tXC/crO5B6GATNWgKxqMKVB5b/cWJWdGGgK80y6ZYC/sezgXMdq3A7Xk02m5kbe3GodVSLwMlaVZyYx8LG+spmdmHUKetqYZ9iHvhwnqn4r52sjmoLbSbyzYGHulwrCH9vjWekSQRK6AaPcUkyVXbEkttE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoObzpMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoObzpMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C9AC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776608853;
	bh=pyN1ttzwfdlScORPAG1PLlycoTpvD1RXyqTfoN96TTE=;
	h=To:Subject:From:Date:From;
	b=PoObzpMl+2Jt3R5xvitmhfy5ieVgeO2vhLRQW8OiLR5FBKI1zHaSEM5NeTyYwCKVF
	 iwXA9GtBu6aAUWc1Y1DnxT6Gtm8ZiNCR3ao9wDWBWmQE+SEi1iaO7fXHygS6e5qzZC
	 Qfvpv+9t2sVNLpOfRRsF27sFcDXKyEypacvdaBcbJOCK8U/C3IN+c/Oln6oiw4roj3
	 qLbCmNgKkWEM3M5ooZo4sYZrNtI4oH/Q4OiWRvE7tshwCEEmzFbo5gASw5lLZcV1nz
	 Ld91vUvpngjOHCDvgiSrqKlcVGL34o9NzaGP++IwY7cHQrFDdKxz0MZU73t7akGA3A
	 cwTMtP/hvulUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F4EEA719A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177660885368.13104.10173635859460536211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c70537e1025bcb7d35d4568ee625edbab7ecf018a3f58088bd77804a769b0a
Date: Sun, 19 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776608853
