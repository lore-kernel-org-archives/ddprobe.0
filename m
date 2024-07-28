Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A0179FE
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722163554; cv=none; b=fp9nJtgtphZ0oXLXP7sFfQ6v/iIHHA9jZIhu7oQIZj3BjQ3dQ4zqExMoth0QiFA9jTRiGkmWfi2JeQnYy5TDI8g9QCvd6D646DIf2wpSXtgB+/c3Viwlwjenq7g0QWywJeWBaHtvuWBqDzCzRn2UbOck7sZ5j3FMPohb+9oTPLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722163554; c=relaxed/simple;
	bh=tVNaggoJ1leJyEmetOHbyD4iKRkK4MHlQrCNCLvq/4o=;
	h=To:Subject:From:Message-Id:Date; b=sBbAJjzAslCzICWB+6izbBfGCtoL7KvoWxWebREeZebKR8+8CEtIjzZUhBUxeaml1iwVNrV2TltPsoq6xroz7isuhZu2NFEoZ/bZIzW0uPGxxT7zzEAbCCA5zZBFTkfRhkiwU5hkwNqOoO3MjSAOgcpu+04K1MErmV1QSnRKPdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHTJO4+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHTJO4+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05F1C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722163553;
	bh=tVNaggoJ1leJyEmetOHbyD4iKRkK4MHlQrCNCLvq/4o=;
	h=To:Subject:From:Date:From;
	b=tHTJO4+RMFnvhE0K8nuMoFLSFMUOnhSIkIIqbbil2VryRxZG2gmvaaP9c5RlocDnr
	 clJW9eGLfPFuhBFi5kVbQoKeIkRP5t25qvHti1hXaBV7xrUDRluPLUHhXaboIb2UmJ
	 bbIch7VDIqr5HtmLkGYIPLKZK4TxqAgt6IqW6B5SCQ/vKfXl/AGtou66IoLb6xq/JM
	 5mVqt50XEb3L2RQmNSItjdCyN8keaGtU2/AyLZ5iNr5j30dujgozxsEhaJSs6ptYTo
	 MtEYefdy7u2hEywDzz1yoqKpzv79/vazl/lQIA2isK6p+1I0IWJ2WZfLI4q8rDHUz5
	 Tfq8qUrpLJvRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9773BC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172216355358.24456.17662744921130498873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed3e3bbf20bd4c904f0f27638726cf91f1b1b2003035feff07704c65d5f17ea
Date: Sun, 28 Jul 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722163553
