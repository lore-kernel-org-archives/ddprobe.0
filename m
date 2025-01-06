Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5311E009A
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 20:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736194554; cv=none; b=K4NxFnryvRr5bShVeSNVFrK2AYm7CPoZoZ8qQyk5MY8B5Ik232WeuDGGblYYt21lt5JzTvQBmoqgU/IY4MLY/plQ/DHq9uAeTGlduYIK37VHZCa3B/wPcgTIRXmPhy0ZahJQ9b4yIJGaU16vM9xCCtryzwlNo87ws8RyvR4ymt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736194554; c=relaxed/simple;
	bh=2C3ADGXauMIjGknqmcmsmw/ZUpM0Y/VSNpxgGGAd3jc=;
	h=To:Subject:From:Message-Id:Date; b=qsgpXjrCvqrCRKua6ujRnkG3aVqIQ0NArHum3TpzLIqtOoRpgFF8rPJuGy3KI333b5x5/yZPVKSAq+GhAtONwW10WT209kCvgD0RmMrkbcrBFjZqNvQk4ERSgPO11TyPgQfQc3R/UsGc8iYziPFzF9V1B7QyWxZ4TPnay6y7ymk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRoZV0aa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRoZV0aa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07A1C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736194553;
	bh=2C3ADGXauMIjGknqmcmsmw/ZUpM0Y/VSNpxgGGAd3jc=;
	h=To:Subject:From:Date:From;
	b=WRoZV0aayrDcRGC/od0y3272oIQwCTNK4LTcQ839j+qW0Bn2vGRsS1bFtx9WT6CbR
	 3f3ktLZKCQ3HkGUUstWPpl1pSSRL0H5hS4JVLIrdfm05arzWxcidnnbC2GOuSFyzVD
	 AQMx9P1cp54dwhS7Z0Xzbpw/P0V5ilSLtSI3zDRDPfpNQzmPSr/bd00YA+7ydi30+s
	 3aqdt+obTVvKlRfPbE19L7KIuQdF4AoKOsxEUHqxNdqvQyL2ZYvpuu4PRPG28rh/jR
	 SIpCc6IitPovC6LH9oFOV4CS1jq1e+dpLXzaW7mXfxl+cp2HxI8QQDd8JIoS5YwfKj
	 WSlF58QJN6e5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9745EE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173619455360.4638.162159114659143810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e98e351b093e0efe34e8cffe88f1cd10433e32d853cbf822afd3165d96a54a
Date: Mon, 06 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736194553
