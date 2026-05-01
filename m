Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF034267B07
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777597053; cv=none; b=TNxFC7Sym8J04xd77pYHTeEMspouh+fQcSG56CFPYK2+MpwtPjaczwFe7pLXAvid9yFHKIBrAVFEpQPuSU73oOX+SDr6Vv9e6sAdC/BtXnPaq1nn6j+E1eV+/my39irJGb5TJENBlfEG8V42H2caWOBuQVhGMOMdiA02u1YNl5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777597053; c=relaxed/simple;
	bh=nEaU+nsx4xczio5pv2QeqQRqp/HDrz6EjQXuSjO5/dg=;
	h=To:Subject:From:Message-Id:Date; b=swuLFEt6/5S2FI2lob7xTfDPfsRAFkhOhMnYaR0Yi4WNq17sGDFTgbRUTR92A8qACPIHFtbmFvRi+Yb8gENeQpRS65ucaIIRKjOF4Qt05KH5Uza1kpjNSF2lE6UBCJ2agtWgoD51mf/INeb/w86Dpd4//Ce+3ac5BxdNPMzcH8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLCGqwZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLCGqwZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CD5C2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777597053;
	bh=nEaU+nsx4xczio5pv2QeqQRqp/HDrz6EjQXuSjO5/dg=;
	h=To:Subject:From:Date:From;
	b=MLCGqwZgqKck+hwNWlmYqUQWCfpMFGoUntpvLypFH71CTkP/ytwQrN4ij26YDzxU0
	 DrduTqK1Z+8gQT8xpxVpFqNxbuejz26rAGW0U+FDvwotEj7zccK+s9XO/RYTcDr4/a
	 dyqwrsNfViAQ56wetoDsr3spMu0aRG5h55C9GBDYOlDcOB7/3cPbwJo9aZRUgGS4ew
	 2yfXz3Kna9HnRVpZ35jqNPNRApVatxIwVSxFLukhjhTpLlp5T+DYBdOhx2tcF7NCw0
	 1t2e6lWZL4KIF0xmvfkZbzSyU02J2EOoNekx9h/cjGKDrTwigW8JTkqnh9pW8wQEud
	 yCpeqpL3QmRbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06A3CD13DE
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177759705369.28765.5887961067495362727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5f56f71fae6c092bfd48f906f0b709464622b18b7293d7b171724897deb8564
Date: Fri, 01 May 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777597053
