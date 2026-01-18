Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183A730FC0F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768777434; cv=none; b=kVh5lyefYavTmi2+ysJiEST9RLjqqqPOfsvRNLpHwPwX9lRMTIUYWl+iFCS6Yn6jf0tGNmZEgw/uK1qpd4rwck9Qz53xSMiLHQ7g+YzLnQWH6O9DxvIn5Q91bhVSTWBwQ5A5mu0iUX5Aa7qJOgmKRXa+x+PMl+kQPJfq31eiulA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768777434; c=relaxed/simple;
	bh=0Yteud8nhjOMpm29bNkC66END1M3U5IzDOiYxXxKniw=;
	h=To:Subject:From:Message-Id:Date; b=JhrLM80HKIOaxCeGd4ki9aVrNFiQMMdmsOIFjqRjQC43MeGD4NYWRuvFZfZqz7f5HS3BEpowVbdSfpzAKVqfnVKcWHdWZY7yYfjaQytsrARYq6Y1Rkh08WwoGC+8QQuqR13RgeiK0L2TCc1hWaWIuabzvDPr76Dm+/ee66venxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyT6cFuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyT6cFuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FAAC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768777433;
	bh=0Yteud8nhjOMpm29bNkC66END1M3U5IzDOiYxXxKniw=;
	h=To:Subject:From:Date:From;
	b=cyT6cFuMDbA5V6ztzXIRo9Dk1qNF6pnXYd8bD03JQ0IswkA6XMOyZRJop3Odv2Qct
	 9Eo3qweN4iPQpNnes86pdfbgjOzGqjtCug/N+SyYUAzZDTdkHXMXCjcHInwFXjEPAW
	 38OCbpPvrT+AVPp5nz2ElA9i7c7vbHyOQaq8LYaV84OxWyxrb9u2JENwau7jA1osUi
	 qcfTHlFYVlX+IWDe+mfzQKlAqKw0aEVqP/xTDUEHWD2UZ+WQBgq4EpxFfdB5kWUA9p
	 JCiksTggljHJ1NLPxB8ZUwEbRopkWWNRgXbYOqc8vnTVi4elQ2rDC/DymA2gly5hAC
	 TMJlqhvqdOBZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B1EC9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176877743358.6561.8614735213855397904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a24c4345b492e0917a2a6417147a437684f54dd9df5b765e227c78633102d2f
Date: Sun, 18 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768777433
