Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2101F3A0B24
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767841434; cv=none; b=mLtwUqoRjBGhY74r+xPyy9wLFuHqVXfiGDwU4tFI66MqhPur8v6s+08rHM/QR1UNrBhsiNKFSBAgpNL9wg2emx7i8SB2iHulaJjiAz8/kURdmUMfDG9Rek8pBMgwRSixXd2NactCAOi7ARaPTkZh8WdrW2Ip0LebmwM2Ab/7Gkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767841434; c=relaxed/simple;
	bh=cMGhsFB4Z0nOJhe/2DTV7cWfHxK37VPRS3DxI2TNF70=;
	h=To:Subject:From:Message-Id:Date; b=a319kQwFrhcxEdGpYR3ITlHYDOS/QY8Pm7X6D7HQAmQtVte6fB7DpxMckxTS6tjry7hoz/OmtxLDUNLGHldQWno1y7SGGGDX+OPc50KhkNiysVmD+q1RojbZqfRjw2hWId3oFmLZPfzs3eKRbc/IT0wiPjmYZ/hCM3eIYYbOwLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzQ2y+WG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzQ2y+WG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DA8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767841433;
	bh=cMGhsFB4Z0nOJhe/2DTV7cWfHxK37VPRS3DxI2TNF70=;
	h=To:Subject:From:Date:From;
	b=MzQ2y+WGk+qU2XlVbkdgLwCfLceOCDv7E7dXY4bUXcb9GZ0C0GdzOLt/cUnWwOpRC
	 Qgfkg17BbTW0NO/M1c0PmqNVJm+nPBFkWyFvLSJK15aAasju5MbnYu6HrfIei7BrqA
	 5TzHXyusoEBHRO+h/FYJuQn83vUwrAaGq3YWo5B/ngoHMkTrhYuSAmqDEvC9rMh9oG
	 T2fHTPMFCY+c6T+kwjYMMyGZ3pm0r+KoeW8uQmvNwfXkYHHPnmJixcISoJ/mkY1UgN
	 2cRE8aEZAsSGHmNpkEevvTUkYoEPl2uZ6/S79u/VuEkvy9/QKYSWwKOFAJSE7tmABc
	 YgLD0rbtB+OiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DABD14898
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176784143357.29875.17869803167976565601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f800e11cb9e5195f4663cd94f6f66434b59702e472514dc1bd7eee13f14c3dcf
Date: Thu, 08 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767841433
