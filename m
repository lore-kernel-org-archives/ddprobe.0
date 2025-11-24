Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6682F2915
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764022374; cv=none; b=FgDb0hWRrT1t9B3DzDpTM8akRuqmM98bidZ0X1XEaKWGCci4BWtpMuvS28m+q6euVXtRI44ngrJfTkfi8iGmLHpmHYngqK6i4T+3ADHj7lT32QJRBjn+v50U7syBKR9fcKr38BNgQGagh7R1+12MsuM0o+b9poxwqTkEzcXSvTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764022374; c=relaxed/simple;
	bh=K/EPSb503gKCJ15rC2UtNX5fo4BrOJjLu19tG3wU+V4=;
	h=To:Subject:From:Message-Id:Date; b=ObTh9oGwG3jYI6Wo6Zu3Ekml6lE5hNcZLAjeZa2R8fAQ3dPBFeBzwoZ52XYNoNDFYjz6IccY1mqNrjSuMvo8bUBhFYd4VH0vE9J8VNIBXjoPTGUhZIGmVnYZs00UgARH/TcZ/Q7WF/+ro+dRb+gWwRUB1+sM34gyGbvHs7mFYhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suLDcqeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suLDcqeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A5EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764022373;
	bh=K/EPSb503gKCJ15rC2UtNX5fo4BrOJjLu19tG3wU+V4=;
	h=To:Subject:From:Date:From;
	b=suLDcqeD46WoAe055PaOALUkS7WBJD7oDLVfg2dIm2OslsoqDmP/xtYGK9cLF7IJS
	 flusfMJ16Eo+z5ip+sw5DvrlWPdo08Ym5YTFC8yzI6BPGKjBvKOx2YaP0xEKD0qPyf
	 6LLXe6r0rLEjlGiPTZ+6sdHAiPGaz1RPiIXylTgPsrF0rye+/jZSbB0+AT3ILW5jwf
	 8zf5x4U3m4bXBHlReT33vSrPBdk+t/m0USIV0BSWQTlLVo87eKeqNQDSwZsveptpjK
	 xPgjzkc7Y/+rAfQYAdrzbIFY8kvQImVRFEkrfXFm9P4ze7eo5mnbtvgXOTtfAR0c+I
	 /ScfVX7opw1XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FC1CFD356
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176402237359.18648.3384982614104166181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6f29068f7dbea55d9a95201d05c40db342918c3b4b6aa1765014667286faea5
Date: Mon, 24 Nov 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764022373
