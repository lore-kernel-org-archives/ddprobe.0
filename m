Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FED933A71B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788636634; cv=none; b=fRGOGZFBfClsIaZDi7Ze4l7vXX8vtrwy8alEyFu9xQJeXN/B7dyGc+TlQZ9dYUSz2l8vuFVRF4nOiMFc8pTh3JB90SXUOIFATenZ+DBR0iE931jCe/GPZgr/XjG0TWll56gBKOK1Kob2tCg95CuQtQU2p+gt91rbZ8wdKrtVsC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788636634; c=relaxed/simple;
	bh=dGnql8AQQLaEwIN7W0wpNEhRUJh/OVCuiFjL6tnSovI=;
	h=To:Subject:From:Message-Id:Date; b=iEc6w+yzbhiNEy+lD6cGv8EnL6+7ovXy/gdW5PSPNow7oykHMI8USNQId+urCfEjw4bnjWDFRMBkZaDn644ro+GIFO7M/hsKt7aiW6Vy2pF2AErurVyFeDd96poqnaTcOCMlVPA6QMLz00XcZjDrNa6aFkwHG1rnv6nnTXyFvNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7AldQ4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7AldQ4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00D9C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788636633;
	bh=dGnql8AQQLaEwIN7W0wpNEhRUJh/OVCuiFjL6tnSovI=;
	h=To:Subject:From:Date:From;
	b=N7AldQ4eRpq265spaoM5e5CZgx19cQzprvdnDhHPfGjvHrC1bDFrBhfdMC4qjzqjs
	 Rys8w5RxXSIQaEg6SshEEOdd8pAwqY2tRzhHOZYXCpykcUKmkaNCEN/RDBWA9IlveZ
	 SRbL8kosSZ7HTX1slLCXgPhXKzBI42qKwpOuTHJiz95ui6afIrnI76Lgyo3Lw+qr1p
	 NGh4hsKgxv9g6mZ8HHNKPz61rbjQW/v3chVddyiwwoAN23Qcf3S6qq7UmXOl/2WBtT
	 mquj+34gOsEDc8eXrYi4x0BnZJEcrgaDoP46tXWG+PdH7TpIokDvrZ+s1tHfQ4xoyK
	 hCu04DrqjG08Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD445C79F82
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178863663369.4517.10558293823009742510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd15da4edbea28d1c56a4cca3bc80d91817753a1d9993a54c864d511e69dbf9f
Date: Sat, 05 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788636633
