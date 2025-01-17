Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E2719D07E
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737134154; cv=none; b=bqUCuvzmEErY/AQf2/DG1Up3yAtospyMTbk7ja3Fg8HGCWlTXAz0Cz0u0/977W6gQr7Usbk+NtjdwwI5miYfIyxsOSROVkuKrS+qOBcRQhtbXyId1+tc+KRk/MtA2tain0FO5KS9SNx6hBff/yCiX3gMWx2LrPhH1yBGKhXrFrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737134154; c=relaxed/simple;
	bh=gv74vP6opoH/UmdrBgz5Xf7afUy+W/zzDz5UCarB4wU=;
	h=To:Subject:From:Message-Id:Date; b=h/sQFUAhu0duo9r76Z06NobLbqmkjPyGAG4j9YaDP5/1dJ2Yhl3JZl8sQLw/W3YZK9jrh/Ud/L1x+OtKsSv0VjWZhbPhZFfnxm9giMpCb6PWK2shKHukVnG1cqd5eYNu//r4rHkKAhW6jET9Sgq7ofDr4yfY+aASMOa3dG1gjZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aamDfY0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aamDfY0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80B1C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737134153;
	bh=gv74vP6opoH/UmdrBgz5Xf7afUy+W/zzDz5UCarB4wU=;
	h=To:Subject:From:Date:From;
	b=aamDfY0BfsoYOPrgLPRMcUmeXB7b0jjPAcmKi9QSEZuEDmaA6GYhqkjbue7ABvuTG
	 8da4i2IN7aKrU2PAG2nmoJlHk7wPhMXvUYV9XrexkS4wAXn+Wa0mZqz9pvWL59jtZZ
	 OkiSxPeefprT9OUw3nsXNtG8pC1hPl+2uvzEfNei8J1oVX7kW1TTVxM4bmnTR6TzS0
	 5nfCRPKg5dM6PmRwt1jGhEqJ2fyh6SobVVJsS6uwdqExpTgon72XsETjuLF9HcLyKP
	 EjjHjGUwpEkzed7DB2sHgg1UzC69b2nL8I/ywHAJwiYyn4gsf9FZXzM9CJ9IW2KWyc
	 WDIiQnkV3yb+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D82C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173713415364.32640.12564550646904602414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 999270bf323425a4661cb9f79f739361a2c1b89ef5de6b036f58cab31ae90e1c
Date: Fri, 17 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737134153
