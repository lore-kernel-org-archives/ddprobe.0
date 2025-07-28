Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3923B136E
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753665594; cv=none; b=VnQ5d+vsG2/TYUABmc7W9UDL5xQvMCNI22ZXjqW9jdPdfn/VP0jpparKBuZ/2S74DfOFPP4U/XtV3oqTwEDJube1JHZxvaJhKrvqj7PKgCWCAHegLWxAHAYTAlnQEc1uzr+x9qFrKPVJuNLh5/1bdchOZ2esBDJqLM6XddIyI7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753665594; c=relaxed/simple;
	bh=LUqcUvPjWfIpTHYmvL7sK0+9Q6zVorxTKrHQTXbd07s=;
	h=To:Subject:From:Message-Id:Date; b=qASgHf2L5FXPfltSck8ZjSw540ynPGAvU48DB4JiHhCEcBpW7SHkxacVVhw3jk6lYQi5evcQ+djI1Fh99FEYyCM7tOR7l1odRPR8ekW2q3NYv5fDu2oiUDNc1RfdRP3V3rC9g3NKWVTeuk4au5UQAyWQTC9xOeRlUTIpBGq5bho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlC4t6YT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlC4t6YT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC14DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753665593;
	bh=LUqcUvPjWfIpTHYmvL7sK0+9Q6zVorxTKrHQTXbd07s=;
	h=To:Subject:From:Date:From;
	b=VlC4t6YT0raGrYakjEGThedAXxm3DS3Vyv/IzocvX4o9XBnRa/CJcbTv2+75SbDUc
	 QaokikzP49DJmf25FieP9b6LrZlo4xrAxY26uJpI5CfE44N6UN7bf+ToNFOxwSmcKe
	 lYGSmTZ7FGpw0L6gG1EpaEqfjj+mgHbU8vNE6SbdMlp3TkaJwhzeObYjR9yLkF/xnv
	 u8wMPN2kUPOwqDu4xjsIu8h+g3l1057fuNo9BiTzsqI6esGpOXxne5pGCxZz8qshqm
	 z222ymDvqQklQzFjFfgzM4sKs+uXwtbMbHcW/FKfxiEJ/KaPoWdIRLIDk5FRDvAxwL
	 +sv9b2ZGQgs4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96363C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175366559359.9369.8849856514097863095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9798dd1dcff746a54319492c6bea87756b66420fe9e1abe01c0d8ebc342f8a05
Date: Mon, 28 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753665593
