Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D34C175A70
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777996654; cv=none; b=mWUpZXA7lqse5j1PsGW33uEqFgqO1AnTZT4carYjFd+dBMHYCfnhzTNUXEWM2qSNOoYkOQL+fjGfMdVBV45mL/QmaZlKNvAq0oNaa4gtjI1hokLN/0VTHaYsdBkmwrGUjN6dvJDk9fAMmdXPMQ/pH0LP23RLwX5Y0ecRE8rc1bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777996654; c=relaxed/simple;
	bh=AxZPvDRpZzVJ6mej/um4M9T/hyp7i7qTkv8uorUZ4fs=;
	h=To:Subject:From:Message-Id:Date; b=gDv4f5GwltEvtvQ8AamneamFhLvod8RpDZlLVQyMz2HpcTD6ZmktOocLZXXdmPfgK9WaFr3SVGkUCt+CW9ibnQ3GUtz4IGQkooHGkar8vX3bshfBNCI+URmcKNqDZB+qEAsnaKEg9w2g5mtpa2RJ2v8dfQLSeIOprrEHdC2cBbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQx9ZiZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQx9ZiZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA26C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777996653;
	bh=AxZPvDRpZzVJ6mej/um4M9T/hyp7i7qTkv8uorUZ4fs=;
	h=To:Subject:From:Date:From;
	b=OQx9ZiZqfxrOVRTiS20DZ0wLca9vW4ZyyEkxS6RwscHXIsdBOxgpzZclgRVv0euIu
	 Ejo0/z1cPDxRpRHSQkHJ9eMlByHq0mg2vWYPsMnA40Dk+24ivYl1hB9pHuS+5I6hFP
	 m5f6PY2fNPqddL8bwbHPoVY/qZCu7QGvGrCPIS44wic0E90mzwFRde7gqElJL44liK
	 1hmcZlGdluGVjMP9Y9ed8Fy4UyMRRiQesV5rWqfVd0Q3oqdyNQvEwg79TOxiajfL79
	 fuJFeKpf+18TGkdRHJDvfjnMcseuO+XZNUwK3U/bb1OKQr0uVOA23/9qPT01zChcjv
	 eYRoGoXwttGRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA4DCD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177799665369.26493.5482628351513335333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1e32e848d759b8e43159c41d967c44c4bc01a878390fd497dc6084b286c9074
Date: Tue, 05 May 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777996653
