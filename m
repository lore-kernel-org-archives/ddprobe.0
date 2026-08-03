Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2814E33FE2F
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785752434; cv=none; b=CBzpzdHilTYs9/gh37OETtk/2dHWUDqZ8bXYPJkKtmKFqPMqKcobDXCayrL4mvWQ1mfjlyxoI7sawXOa/7jQ6DFbdCtaYTvcd5tLW2LU8c3iq+ykYkaexdHfcfo18kOsm9xTs5YqqNjbEs8312z7qSCiqmAjGHIFpL5lurlvogc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785752434; c=relaxed/simple;
	bh=bTDWHqGZzNIEzTDOd0pf9EDDK5lz/lQU8luDGzGZDgE=;
	h=To:Subject:From:Message-Id:Date; b=BnmowW7wfa65mpR+MWyo1xD5vmhEzG5QVGKCrntTK+ESi5GOS18eHpS1SoqkjU/rXoBn7ifb9Hb92yFSKrqOi94FMDrTUxbT2DO7QemgdiG41Z425T0S+jHIdeLXk/S43AXYjOpgBZ6Q2c32BW3q9rX1Fes/svWaFSJQO6BlcCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poWIqf2P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poWIqf2P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3840C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785752433;
	bh=bTDWHqGZzNIEzTDOd0pf9EDDK5lz/lQU8luDGzGZDgE=;
	h=To:Subject:From:Date:From;
	b=poWIqf2PHy1I7bIX1cMVNrNMjBGW2XY0bHUb8vv92KGNj8oDkQB1mm6PwB8XxsyAx
	 2gTY75mn60Mmk7eEGbGW3Ce0jRs3ErzI+B0ONdhRSFM3NJsvw97dr/msvGxa4562JE
	 MxUZPoRpF8V0zZeUboWYvcEJbStnme+R39ebiL6dZGpSYdofnDvfC23oyip+ghSQ3B
	 BxjQb+lRWK4wAJ0ZwfVI5yS2XvEHmGfj17+qbfecqnyAQG9lKrIBUpczQNReFv24JT
	 0x6A4JFpQM+9EAVTdEAX/7IpJp8CZHwxH+WOkt10jeP9yEbRPa8etmm+SUuzVNrr/9
	 nVqJqg7CF7nHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDE3C5518F
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178575243370.25995.4048994420153249954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c975146be33e122128278ebcdd74bcd4d1ba1f30244e4cd6d32ccec9255b43
Date: Mon, 03 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785752433
