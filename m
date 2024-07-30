Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280741AA3E9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722365154; cv=none; b=av2Hma2fsdCKFEwCOdns/Z+cKi1LYgu5fjuTSrJ3phhv30uYfq62lwReNs+O8NuKD7cvLrXkkKA1lOvgb1Mzypr/syI6etlGnicyFy+wDpUTRCoPPhienRJAUnle6T0BrgaBeJ/Vxf1gd2fTEyPZJNgU7xnlOHBeGVKcNINgLdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722365154; c=relaxed/simple;
	bh=A1hvwRSCByEyzfuFQ77K6X+ajFz8NuXHwMrUJW2F0Jc=;
	h=To:Subject:From:Message-Id:Date; b=dF4mW98Jntxt49tlHQzTPRfcZxqzIZaGIuWbbSghcyHod7dAoSS0MZumYIp3JeXw9iL4nSnq0v9/pVutuN7Z+/Krfx+CxecPQUEv7tr2MISkqk/k239zdkQP5xWsgaQA5QDVYdKpR/Bl2yVpMjvnnoVlwpmjx2bOPDMPpEfUudQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a08iy35z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a08iy35z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2508C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722365153;
	bh=A1hvwRSCByEyzfuFQ77K6X+ajFz8NuXHwMrUJW2F0Jc=;
	h=To:Subject:From:Date:From;
	b=a08iy35zltuaJ9HqESgTiQamAPURXPuuRE/bu/zmgE/K3JICPKxiab848eKF5IIUC
	 lerBvrzFtEo0f1cGnLXo0I79Q4Avgp+4TkY1Wr4q3GICQC1l+uN3g80ug9JeAwmRts
	 uiNaTqafg2UDyFTbO+giQE9zqUF0AexMGYYr3KPYKOEuPhCzMmYyRye/H0b6sjwIoG
	 TIECh5oe8sH9hBkkAhfq7HyfIO35uUSqn4c1D7jfwWElyzDMqXN312PQTiGyt7Whpz
	 QPKKq9PqPOlCgE5CBDMiocNSRdbE2Y56bG67KXhnqwEhCZDCMai+/B3k6/KCVS/SGO
	 3RCzXJwrLl9BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C574C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172236515362.14940.14253298315341156591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f88c60dc65276c63aa03acae924f0d0914b9e54918487eb4313da2ddc968467
Date: Tue, 30 Jul 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722365153
