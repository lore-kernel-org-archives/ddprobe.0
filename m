Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DB881DE3C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753272594; cv=none; b=ea14nAjBaW6HAJgoW+wFADEYkzl6X5AHvrQ8uIUyZnyzUSBN07xPCs6W6OxIx83FrcarHh+xDSJFCCU8rtUZK0Y2qwWTodIDDtgbBgIYnTBzpDUW2K37AvilXZWw8EcrtKmdWh16FdPpdriH8mSnZV45T289PF0FsvGRs7CuwZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753272594; c=relaxed/simple;
	bh=KU/zAQkl43jzg2wdSpcei760MVDefqyYQIGEwJG1hbo=;
	h=To:Subject:From:Message-Id:Date; b=UJ/V+41pytTr4L+wZjPUEAqPiTciI0fhCkHTz+XXz4T4095ccrUA5y/kg3IZ7pyfvaKP9aT2EpFCijvxdfC9eiaHQkSdC5I5Ja4U/OxI1dhl429Uvacb96IyJ1rnE/Y85mJ8wUMf8KTjqOkc4baVdUditBCU+b16e626uF+YKG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRvGMrlH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRvGMrlH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBB8C4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753272593;
	bh=KU/zAQkl43jzg2wdSpcei760MVDefqyYQIGEwJG1hbo=;
	h=To:Subject:From:Date:From;
	b=vRvGMrlH2dNnGhrDP4jLWRoYhba26VvDcbRwj0Mx1X3Ea6wLRZINWDEcU6MfIj3sx
	 iiNlSOpYAof1WV4/Ebf7J059LpESm4am8oUMNRvK/YQtEREdul8aPbKz9agESkj9va
	 Pz1ik2VcUT6btFbHVRA/PLyNvG401xykWGeA4M5SzcHH5IKAoux2MiY1pFLsKPmSJp
	 hDb/9Mxludjn9e/c9za8xLMToQ8cz+3PGOxPjld0tRkXLQFcgRzxqDtKzKNqQEQ8vy
	 pbG1gsWRiKOQY4F+TiEkJ40fdUWy+zy/qUNazDAaMrrXZYd7jPOY0Aq8nUWhngwG5/
	 RJQdEpytSgZWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CDC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175327259357.12891.2535156284148409760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac72ac22519b222d5f16579255121dd8fb2d6f37e5f436c9dafe7566448d86d0
Date: Wed, 23 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753272593
