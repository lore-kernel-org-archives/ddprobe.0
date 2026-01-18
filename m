Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED535CDF1
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768772634; cv=none; b=OztET3W4vh9ZxD0x1D3BIxMK/4/KjhGw9Sb5owoVYA2PTctPsE6i4kUdRnDhyWhLPbWOk1ZnPr6V8RK0jSTHiog3fW6QaDv7RvWs0UWYXacumYZmp9QvNFXGv7c9/HciYRPqoy0V78SaCJxdUt4XUkRTov/mnmc6YdJTY65PNAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768772634; c=relaxed/simple;
	bh=Pxwj0ZAF+WJJtmXo3cXq6QpRoqpDibs3P4kGJHsUtBI=;
	h=To:Subject:From:Message-Id:Date; b=PqQbzie0No04VWw1u7Bz7FNQcKdi0K5UtT08wchX4UhnGzfgqyOfLpkxKIgVNP3tV79vh8TdCpRScPhTzJLEHJQXkLrUjMAdDUa0k3s28SiLZ6g7k26yh5GrDDN5AJThnG85nAV4UktAVkQKBdkDGyJcMdPCpPCDrWjDyzK+Q6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULDSlGDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULDSlGDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C4AC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768772633;
	bh=Pxwj0ZAF+WJJtmXo3cXq6QpRoqpDibs3P4kGJHsUtBI=;
	h=To:Subject:From:Date:From;
	b=ULDSlGDGP4wM8rNpgz6h7RMXw6KD0kRUGoxTX2mU11ilmKVdOifnam5Z7HI6/WFGG
	 Lbcotvs9gqzsCyhjUTvWonnR/aWHVG6FH5GjrCZLKgNP28EXicQ+vHaVUfYNr3U/TI
	 GQcEphICf2/CohwJ992HTM0QYBOLyC2HDrJAhqLXjkjtGMKflejQ+4NDzygMDv8eHG
	 HZsY7fxrKP82HtFikTEKA3WBNCaIB675SbHUCEIXSZmviu5fkWVw4n5XllEUzB3pl+
	 Ds5dFKlIkvKeajybS9eyqWXA7bgqIIWYHT/8cNsNMFSUNu1fUesXYmDH5N/X8cw8DN
	 iksTThA3dh0AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92503C98315
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176877263357.10495.3377885662623108814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ed47ffe7287c939bd2c0eb664459b4ea9678fe03b8bbf88ece61bc8e055a61
Date: Sun, 18 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768772633
