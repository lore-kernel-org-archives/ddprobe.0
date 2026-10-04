Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F065412276
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791100234; cv=none; b=Vs0TLqw+IdlN1G7mmHceO1mBkxOR6X5HNd6NuvAqyDl+vYVHgR4wgcgZEg0+rAqGM6kgHQS4Dk+3KmlJHTg780dNTAZlEz8W7olGQRql/mli7rRdoAO7F0dZBGDAX566Dm1vpFvCVY4ABo+E+MeQsXBtP8Im+WUriyp/wlNacjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791100234; c=relaxed/simple;
	bh=RTwl16zVJJ7bI7BFtnenyjhf5IOw3sEozgtNcKEUNI4=;
	h=To:Subject:From:Message-Id:Date; b=YJDCSHPCIZSIyj5q+j37IOY9Yc2VsQdcGh8JhSmKEsrmYFTArz71G+ALK26hbo65v++WXi+6QNkosrE67uS2/HR8TO+LDtg2BujE3skl8UrAdUfeTN7yIu9QGnC90Uj3ZPgQdQqiPLzFAx93gTu3KRTfU3RlN5KcCD12zXstoSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4/8W1M8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4/8W1M8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D965BC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791100233;
	bh=RTwl16zVJJ7bI7BFtnenyjhf5IOw3sEozgtNcKEUNI4=;
	h=To:Subject:From:Date:From;
	b=E4/8W1M8Qsnqrx+Rdxi1qXkSmQh/cDIORVzG0AQZcX1MZ4QMjmXhDHJlLmjwyPkpw
	 xIBEQpdzkpGC26GnC/FjjSaNXhjzGVS+Ow3+imU089eGXSs4IrBH/2IqxDVMHXtFCW
	 lV25UPtcBV+5WvgC/ccTHY/u5Qpbo18Ut0WJCGWy2T6BOSIEyWTyNksYzAkpNUpBbV
	 7FjBJwAmh+uAl9fWgGeWSaFAt4zsJgPqernPOuC4OuCKsMAjXOSYaE7bNqVCjp2JC2
	 wjVLvI/otjfYfoUzsrePquPNozQHo9aFt4gIs14lAGvgCJHTvqXWJlQD04S9ccykBf
	 SuAF+ChfjC9EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4089CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179110023372.23891.856259313156120700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1edd64616bf43e587809f29837e0784542ec38b93d1d26cf21fe3695b1931442
Date: Sun, 04 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791100233
