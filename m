Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25390381AF
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778950234; cv=none; b=ICBI//sakQd/k4bt4njOF5AbMXFjtIjyI415i4n/nmbH9em75CwIXN9DMhoohBf6VbPnNGRikHniCoKEqojkV3OzeDJmbpQgpCvhMNBPwskm2x9HUKp03hR6ATFEjYQb41Nz0KDWcBVy3BvXE+MicqTQjS0H+qs+UYEC2JW6Xwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778950234; c=relaxed/simple;
	bh=/Zt+OCeW29KZXLxjF85hgGZfQKNqv3hTTnpiGe68zG8=;
	h=To:Subject:From:Message-Id:Date; b=Brzl3eID02zC/nIwnzb6NkDk5LGhzsS+2m19o+laSMPy3CEVj2gVUqtYfb5LGgh+UhkqXU1Qn0/4X6L4k3daoXqq+NMvhnHZUQut1wYt+AJtQ8Gzss8YkPLmS/jWzuy6jL5DlPRfUlMk2kQn4ezT5L3uIQmDIFrzyw/RRKoGCSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b79oa4P9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b79oa4P9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87ADC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778950233;
	bh=/Zt+OCeW29KZXLxjF85hgGZfQKNqv3hTTnpiGe68zG8=;
	h=To:Subject:From:Date:From;
	b=b79oa4P943Y4pwktbUF8rRkXnUCfnAQ9K6td/loCPue3tmw42RnSZ45Taw6JatwCX
	 P/ZgHa475dsyQkoXl3S5RFxiK9oESX87W9TmrLGkKxWSK17FCcrxRMOfL1qbHGYnni
	 DAJlrV/KD76uaJ1TM7F5dxk7Qre1QyErE/BSKg4kJhm4trd+e2BJF9evxwXlALxQlA
	 plEwgG6ORtNgGa6OoarAPWjkYu+1kA6f0hEbLqUhncUyhz0RzwTePjS+iBUx8D9oxC
	 kdVO6cs5RSb61cKbjJhBErwcHP+So8fMQZdlOe4e+0RcWuT/7i5FC8a/MsRYW6nAGc
	 MqNVUxxE21Muw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3AB2CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177895023371.440.8976231271345088197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 254a736856414bf4541146a57de238c278c7f0e18c3a2b147bfa2a378f32f788
Date: Sat, 16 May 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778950233
