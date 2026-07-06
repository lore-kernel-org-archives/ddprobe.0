Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEAF43EB102
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783326514; cv=none; b=mlC7GHwgvOenUnB4Bmb1HUKcaRIooJDFYsAMBObFUQu5JTIif4SpcXkXXPmMKkKYUakAuvHujtbWNsqcGt1hUqX5MSaCx2web54HY5gh8ChDHKw67nXOdn4V+aoKoS1UAoPLvqD3kcrTksSv2VnlJr8mwPzIdmXGW5usJMlhMek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783326514; c=relaxed/simple;
	bh=Mk42BGb4q9NOm60Ycc/GAv1E48ruXQ6ACSVaFJU22aU=;
	h=To:Subject:From:Message-Id:Date; b=SOx1A/UBluAv8EDQSNL9YMoO7sPC23UMQ8cOh6LggpsLTjYPfx0vH3FsIooGbi2cBvCbCWw40K7xfKUSLfzXH+3x8Z3zABua7aPgMrOOlb/uHt7daMgR/pkmlztbXkZ6rmbgRVIRgO/HhZXcUdNPClP9yWZ653ch+Dm+6nM+tII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QG82kD3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QG82kD3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C10C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783326513;
	bh=Mk42BGb4q9NOm60Ycc/GAv1E48ruXQ6ACSVaFJU22aU=;
	h=To:Subject:From:Date:From;
	b=QG82kD3OsNC3Ia3K1j3bOqhM1Oof/RxcFzDBJnna/UPlEEu3f3iko1C/4xjZnwUsa
	 imtpbYuMv0d3sGN9fKfNF3HGQnaPX2Yzrphll6Y2WO1fTCL2c7MTvJw9pK2OuRlxBI
	 hbuNmh3ODo/Ii0IICRpHOBrjs0pnLiCrzyCN/tu3vOnRCtuZ0C0grAFezIqpgNyvrR
	 MGgfZ6em3cvjNkPRX0rwsP+7K8v8bP5tznqTxXCQp57C/WrbShxAYvm5gPU01/8aab
	 krWAT/amb1Lo1Sa/x+l9J57NMG71/B/mNDawZukqTG3Y2dzRlBHqMG/58MD8LAcsh1
	 q84iguuvMdm9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29EAC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178332651372.32299.11233607103788876840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d7ff02cdd63a6ef8f5b262bf7f633604bfb21e89c47f925bcbe540f14c039d0
Date: Mon, 06 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783326513
