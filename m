Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5281738B12A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790489434; cv=none; b=tH9WSYsEoK/bL0cSaVqwp/3wEI2VYwmP9ESDRhXoOMb7eHClE1ekhCUwpvDi10nws6wYTpAEUE+bQFW5XmpiRKHBIvUYKt1HvnmCY/6UI5Ws0DcbYKojVuoC2pysGlDvP7qBQvkow0aLz8KDl+gpSiCSf5uxl/fhlLwV1JshVMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790489434; c=relaxed/simple;
	bh=n7icoAslgF1c/vkZgFBlIMAruWy5Q+C0J4+jZTnRD80=;
	h=To:Subject:From:Message-Id:Date; b=KmA1Z+c7E39S4quridZigrYZWhoCNE32uuPhrVckqGTtQeAuZDi2Rg6URjRj8HxZ6x6qp0nz02bbIlkGmlKoTlfExAKJXHO40bNFiQ5NnBZ/u1JXyOC6cV3QcJRXFae5zHZ4mfX+dUZlA0o6oB0epB75X+W57fyFLtDH5OdFovI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mS6EcbH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mS6EcbH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D720AC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790489433;
	bh=n7icoAslgF1c/vkZgFBlIMAruWy5Q+C0J4+jZTnRD80=;
	h=To:Subject:From:Date:From;
	b=mS6EcbH8PRO+5EowAnuPx3vttm47vnOwh0dQbG/FQsjtjE1/deoTw4A2nItvro1py
	 sIBZ1g298/QwEcFm/B+9wqprxTnlpGZ+/RgJtNPgDRLBSUeLxkQbnQ8PFt0bzHqTNk
	 NlEQpnJqolCyaeck1Tx6F9I7YF5UwCu5kPSldzPgpn3iu2vYs5Ls/7gIQynL2nPR4u
	 BxeaYEwC+YukpWZ0ZlKaPbg/beLdTtc3uDaPmDGM+DLj/sgeUdU2WKusHW3y/OSbs2
	 j8caH1MdNIbK4TxAThI/SwRPFuldq/CHCWF70Pr+Sh1E8N8kzRVgEij9dEc+wTncAO
	 DZLYHShzF1MZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13C8C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179048943370.12082.5509247156289670207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3076f12b88ecef4295d9345293614812fc8182c1885c38778b6b7799564ce111
Date: Sun, 27 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790489433
