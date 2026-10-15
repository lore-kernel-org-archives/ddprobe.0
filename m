Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6307F4D7D3A
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792061434; cv=none; b=Su13rnc8eKEFtAoSe8iclqaRlRybkbm3Ak9ZNOstbdaTHWbca71SQ+olV8C0u46aVQHMyP797uyHd8SpMjkZnFROKW/eUq4lOvhnmb0N2tOZawBEVTDhVJVF6kWipPAM4DBBFSXuUciHspK1wp2D+FFKHeHK2L6Os2DITFPUY0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792061434; c=relaxed/simple;
	bh=rAj8f6SIJI/7MJuXyl6MrRNWpLTHFmbIEWe4NFpJMkk=;
	h=To:Subject:From:Message-Id:Date; b=B3rJwJ3MxXP28dQSj0P91jh1PjgzziMcpC37dn3vzbTsHgYoIySbphmMs+DZhW+EA8q0n0XQa51YNHTt2MKPrKg6s13VKUPZV3matIatwZ5BuknyO+V8SX/mvXCacg/owzTYD1V9khrGhioytPeIb4QY0z9deV5DAo3/XBIPqG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTbOTikx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTbOTikx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02C2C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792061433;
	bh=rAj8f6SIJI/7MJuXyl6MrRNWpLTHFmbIEWe4NFpJMkk=;
	h=To:Subject:From:Date:From;
	b=RTbOTikxUbOYzXEF/TAvvjOXd3CqOaNLdsWaP4jTvqVJQkDgCoXb5eWVdHfAjZdgY
	 mdn6LzYjWjICQoCP7G/V4HzTIctSDfBN8k/ATD5+MNM+TgIv09pY6se0cnX2lEn4eZ
	 TuArDDQeGV1mn9E0Tg9+dsDM0STX6WlsQJsL2RvGLBNzY2wayu+dezFqFiyZKXOYOU
	 eHlPXFlioWyYs0MTkvYWihRAAQQ3IwtZaD2nV6xE6xQz6CuDZRNhFJAUHgaV7oHtuX
	 TzsOp3TdFgaZqMo/M6MQrR9z70HCB/y+XJEkEW4gZwEjj9hOJ+IE8hbawV2jEAsaNX
	 UhDREP35G9bkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F6ACC6B33
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179206143368.20961.11752735400871946580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e0c80dc297ac623ee9479c30a4b21fda3cdd13698ba31f88da1ac65ca9bc5c
Date: Thu, 15 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792061433
