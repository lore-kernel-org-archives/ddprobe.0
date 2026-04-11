Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A83D2BE7BE
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775894254; cv=none; b=EgqM1NwH9lL76muCm60QEMCgXseW4h7a3uEMQu19vAF0hiqQVIWhiSCkB+ABOZUt1rj8JjuEieGXLJPxeBu9/8x1YWJ3vyRMp9jzaFxTvePRQ7Ora0vJGn8Kv/E+aANGuxi2J6i1N3ShigCsGOAuQrjs5caHzRlNKRZV1MHeb6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775894254; c=relaxed/simple;
	bh=EWdZaahQVzJF/fL+qtHk20fRAjmRpB/+Rh5rDXYz3d8=;
	h=To:Subject:From:Message-Id:Date; b=K++stNojuVG6Ml8H4/ysZpJpFxdSKOWpqx37hU7X2nUxZdfPTxFkPf4Zux18PvcFZbArIuJEcADdij7KlcmfxE3xLl+DkLJewiVsuSnVHoooW5rncLNJU1ufnqU0wTICFnhcZRF/+NdSJsClS8ne9GfxbwYBOe+P14IEh+KLLYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ooZEmjWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ooZEmjWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F45C2BC9E
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775894253;
	bh=EWdZaahQVzJF/fL+qtHk20fRAjmRpB/+Rh5rDXYz3d8=;
	h=To:Subject:From:Date:From;
	b=ooZEmjWHe9fPa3BLONYtVC9lbwyTTXrMujYl6ULA7ya5Wx34kh2t8YtDYlrGG63Rq
	 rrDZxEm6/d6aEzHLTNc4LOwPJeDeaJKrE7eHDd/X/sEPJVhpKEBL5rk2A3ISnY+7ZC
	 LcUbRVtFZrr6ojDZYWgAvB8r4RDbRQMAR3D0RmS2xs5ZhEJ/PnTApRsiGjCI6PVTCR
	 OJxnBUG1w9kTiVrOUigMIurJk5Zlp/Dt/MsO/INlOEHqg1cGtZPlVfTtTqUClZn3jM
	 gmqTArZTIU7zHwsuXX5AXuz2oRC/WFy1CQ34abELCWv6aYu+S6IGkQkMYtpH5WCrYp
	 UlL/7uRM81hZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6168F45A19
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177589425373.23695.11088014770453043543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3df54a3e4a2b34180192116e1d4e3bd4f6ecf31cc913b69e27f5a56f8b6a92
Date: Sat, 11 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775894253
