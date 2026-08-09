Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224753A1DB
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786236634; cv=none; b=FO36VOTYXmsxWzbGtIm4IKy0Zfybv+QenchS5Ulh8KPzVbPY2gUC3ntOJISFXJRi6ACwZbdgoB+LGUos1a3sceJIKwCX+ERuUYU77F8LjKQiLDjKP+0cUEZZYN95ZhKRotXtM2RgwFPDDmlP5So5pv7Rswr17e0NO9HM6wGXGWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786236634; c=relaxed/simple;
	bh=sv1qDlWm2cQUgNrtyBkRUiK2oOhaNkFkljPknfvsyZo=;
	h=To:Subject:From:Message-Id:Date; b=EM7yipDDrc6pmVtYAVuLqgAQuU+Heyqn7Z00jY2p5wKkhJDb0ti2UPNVLzuPSscdOQgKeWLghBRM+jMZkAJxAmpfhWHCxafBbX7+6H87pfAIT2T50PAc4CIfuZrT8kiPXpxJK+3k3gB/VA45lX7k874TbpORnMwhktIw/FAepck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Io4A05r2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Io4A05r2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDDFC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786236633;
	bh=sv1qDlWm2cQUgNrtyBkRUiK2oOhaNkFkljPknfvsyZo=;
	h=To:Subject:From:Date:From;
	b=Io4A05r2zXRuSyUnLLvyCDqOvQ4Lld6ImArHsFCko94XKQaxzw26hoSheqarFwNZO
	 7U59MQY/oUNqGoPdX4FYBKmSijav8pEbIhOYaEWwFrjXJ9Six/w9vpT6bHmhuQ/xkp
	 p5ysbLqma/dZRJUUQAeKIRsO0MGERkV+HSTabF7tVV8rSabwOWti2QvcXQVfuJy/mw
	 uqewmK3K1bSRXP+x8BpulAh4ivjH5IkiDJRJ2qI+bodNu7k5iKv3ECfXlAX5GvFrvy
	 caJ1XcIJef/xHsag799qJhtTxgf2lELkOWJ8KreEnS5zacx6/g6BjXHT2vvXnvywe+
	 Fcy1wCovd7Rgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AC7C5AD2C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178623663368.19064.8182416109839933215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673bb2ebf44a8ef34e3687d2a5bb602126bd3d7c3c106df57e31f65ee60b08cd
Date: Sun, 09 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786236633
