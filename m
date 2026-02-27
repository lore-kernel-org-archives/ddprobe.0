Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8C61862
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772154294; cv=none; b=nv9/y3Sl326mux0ZSxcLSuK/UZhDRMBgEZ7nzkhwPD8Mk3xUW+atn2ty/s2ctGsr8n4HN9zlfs2/9Ud22/Tdt4VFM/D1H0+Gu1KDgO/zQbWGP4lIrRTs9bT9r/2zc+M385YcqfYHZX8edfPfdN2YoI7cIX3i/+RuahHpXtD/DEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772154294; c=relaxed/simple;
	bh=NA4iBwHK10ZxJ9kMAT1YZ5iZ7tIxAOOFRacPKaUS/G0=;
	h=To:Subject:From:Message-Id:Date; b=C1G09f3gfRdS4J66OADYXkSgCgL1GDrWCJ+OeShh0P2TwBWEU1jgyCP7m1lL/dY/66W/FYk9qSeYfo87Qi2y0J9/J11/hYS2UYeCIBHkyU0B3NRxC+22uWtGOQuwzbZ25mOhv1MRSI/FNt6sa8JDG103K0dJWot8hzAd0V7+ePU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmMdokH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmMdokH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9232C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772154293;
	bh=NA4iBwHK10ZxJ9kMAT1YZ5iZ7tIxAOOFRacPKaUS/G0=;
	h=To:Subject:From:Date:From;
	b=hmMdokH7dgF1xKO9STHPLuDemr5uYR5d34jjkB6UWh4nS6XLwygDrQSDyupwlpZgT
	 nCxV0vruTzd44Q8cfWQ43EifBElJ5/hyxDLO8OPbNuhX6Lr8FtGKnTaSciAv8CO2to
	 LCtEhy/crvQfzUAiu+Qke/Sh0qvlt0oaYNRCdoDZHyzw8kXco1JXWSYjim11YT6Gru
	 IX260h9hgUK058jchXk5NSdBRe26YESUeYOnuzC1JIboq1h688wDhhxLCZx5hxJlir
	 OtDC63IfW1kaf3lSEtrkkdIx2YI5Z4+6LgehOuEVGQwjjKsD7Z8yW6+qlRyRTBdXeu
	 LUB9wWhZXlJxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94789FD9E26
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177215429358.5269.8898894977113381255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e06528a2daeb04ce5c1ee8ddc8a2705462dd34694880f6c7caf1076eec40efb
Date: Fri, 27 Feb 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772154293
