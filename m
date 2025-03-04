Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5132C1F560D
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 09:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741079334; cv=none; b=jHvED+t/ZKRdU+bCAgQzrDNQguB2I0E0zJ4OJcOSP03U2XSqryHVetYWLeVZW70dxaUpgA6YX0thARriQ2KRkBe/9E5ZdRLoYOMJNVFWm1Ar4BLRILXkcMMldO3U6iSQ0ejR6s2uhYLc6nD166tPo7nR4C/0TzkeVgcefLLFsiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741079334; c=relaxed/simple;
	bh=I0EJqlDnE3xTpj/r21wDftFklLiV4/BmHds4dSHGvXw=;
	h=To:Subject:From:Message-Id:Date; b=U+VLeY+qSIc7KeT7ZwsWmSTQGvkS4XDgcGROdaSU/+6oVWhRxVP+bg4L30maI8f8nfrcOYnYbOqqLTKiGYIp5e2sMLSyWVTXcJyvPTaFO8AqZHcV+A93ylIw0cr+hFL6XXtIftvO2bX8Z5ICPmn4pnibIQ++wZ7jNNx0DCHNblE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNqSbG60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNqSbG60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8977C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 09:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741079333;
	bh=I0EJqlDnE3xTpj/r21wDftFklLiV4/BmHds4dSHGvXw=;
	h=To:Subject:From:Date:From;
	b=rNqSbG60kqscsdYW2RqW4tKzLaKDqpi48lJ07qvIXyrDFqOUDzUiVFm52t/bDHdZo
	 dD49QZPLYnR1xAk/diMKcfp62aGZQVRr+Q0LcHXQyzf6XSO8eBj3bRXvyuGWzsCDC9
	 L/ZOwCyJQR918LypFQ+KtoMcEFRovnnM6NYr360Gt1KAyTRjwHrXl+DC0rcwqIs2wE
	 oUbW9eIA4FZitIz0F1EE//T1e5mxEpBEz94r+3JiIGJnaskKw6/jJMigGp8T1JEsu3
	 faboWEhxqHaKeYgUneEDGlWrgj8FBVVDNIfOPBm3E2acafClE9mQYOTeLggFlF6FxM
	 G4u8YrWScoIOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1432C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 09:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174107933364.7070.3434486208406169064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68adaa09a615c78ec8da49f6a87a61b6168a8db1e87389a43fceca2d2a000211
Date: Tue, 04 Mar 2025 09:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741079333
