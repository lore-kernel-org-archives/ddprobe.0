Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3474E27A454
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755702594; cv=none; b=am8nIsnVpzSpDNbINvCTZpikTWbZe1xuezeW5uixkrGp7pR77y+eB70TsPV98UrMncyolj2TUcMZxzASG1NTbCXPxJuP1hc+t55MVu8jDqwvXRYeDJ2+2Lrqk44B7m/47UCBFI5XetbyhPl72RH0MwvJZgQI3z6KNXzvvfv9qdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755702594; c=relaxed/simple;
	bh=5rHBeL2UUKxiVxtGAOVgL9cOGKSCeDSeGflLPPMAOZQ=;
	h=To:Subject:From:Message-Id:Date; b=NbE3QE3S9p64pTxXsYlli7dyeLmeFAVlTIepv896nUOlKIBIQ/BkL1DevugH+jwusZhxywNTqiMcqSNBXk9uQBSb6hSbzTzDsdCIhP0dnMVrJkyQY7HbiyQUn0FePj69gQ2lkEUjbKiN/5Uwj3b2398/SEbop+fx8uMTeZfWgTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPFFpy77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPFFpy77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF21C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755702593;
	bh=5rHBeL2UUKxiVxtGAOVgL9cOGKSCeDSeGflLPPMAOZQ=;
	h=To:Subject:From:Date:From;
	b=qPFFpy77IcWZTkGa7lTmStuteLHMKcgEsbPCkXjER9ywkbBikrQDOtUwJ/mm4oCiw
	 r89xkLA0wcgUKWbdCboDVjZEVEwMOeLpcs8vd0uj42RqEHo+WvHRuUU4F+m07Vk8iH
	 FQhjhOanlgXAuuhamy4IWs9Zr/mq0YKUmnD6SwtbP3PIObFOK5EsqrQ8Lj10neU72y
	 qM/GXYX7VLP31Tkjj21hDtslR76Yw0M8u0zTFKrdvPLhN09izwRp7LTIoTFTmmUL8J
	 qaerD+eN37JHSsbaH1/gdO/BFdIhsF0hhjWr2CSFkqRhZJoEvMEpKQ/c6LqhcI6Oya
	 xCv+eAA+uPjJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B0CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175570259357.31515.12396049055987967779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d0fc53419e0450282fe0bf191a50880e26456c50b2d1c746a958770e686a10a
Date: Wed, 20 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755702593
