Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A76736E479
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768890834; cv=none; b=c32MVNkH8YCQkHyqbjlkbKhQRbxQxUU+GOojFJoDBaMb+DwGpiTKW5Tur0UnG96cEsPkfQ0dZIDlRPMoy/GhiGpjn3icdp3zpeekO1R6S06FZBMGGI6qIwlRDOKEKcLwAijmizvFwZVyiPvy16yE6hM2f5+Lz/XkWUPuNqsSA70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768890834; c=relaxed/simple;
	bh=zK8BpZS1NDkfFhr3rVYnajjtMXAtyhRBl8KWu/7Ac8s=;
	h=To:Subject:From:Message-Id:Date; b=mfKwKt8h2tsr+fBKmAOP2wFXz7J8+cdbubX3QFBd0+dPPVQSxKV2/qUVR/zNml11uiwoFFShpnCCmsEBeKSHP7NIcxc2kJYHlirZYELT+jvHcswTqZRXK+bVCU9r11Kt2t38xBuQv8yK1ebSO2SY2uHImL7rG0G/l9WzuqZozBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5DOYNjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5DOYNjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A624AC19424
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768890833;
	bh=zK8BpZS1NDkfFhr3rVYnajjtMXAtyhRBl8KWu/7Ac8s=;
	h=To:Subject:From:Date:From;
	b=Y5DOYNjO72wKmWuDUGg1/psV4yknXH44AOa7Agpy9nExNIVCLkFVvOBz/lxhAQu7N
	 bO22cpEiGj2y6G8/phYitvIEANllQPycixhiZojQsDsF85tmNBTYef1WLhqXOm/X8M
	 UkUx8QpQkBTedwLtrSy2E9lPygqYJ6EphEqjm9EDnbhjc5sL1T6GX12MJkGflH2Qmz
	 9cJVVu5VlmjCpVGGZ2jq+UXzvas/ADza9QEziCh7W4TU++aZf95j7KnamuUBSLtL17
	 YNrU2zNG6u2W950tLopinCQGYysWFR/p7YwKQ36FqsgXnUQAgCHBm9HTG4PWcvoDIW
	 iqsX47erz4syg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956C9D2ECF9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176889083358.4823.8868736744833946943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b49ca3b5376331d76fb5d7737db0ab5dad5c714a794f680c62e01b17555f79
Date: Tue, 20 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768890833
