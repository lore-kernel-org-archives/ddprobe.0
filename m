Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BAD2E62BD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743819594; cv=none; b=GffybXXAbAm9sKVS6sJ1EuXzRtYltUZGWbcdEZEcSzCGX3NHuE5OFBkMTxTgHeb8KrDgyhKVxEzo2eZdvESJK3nXMJkUE+FZPVP0wwJuBVUSoI/gKepoQ/Hz2VZcxr8OzXdQFyeXsdI8XmzYIu+tgK6oA3oFU81uaVJZrUYwgF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743819594; c=relaxed/simple;
	bh=H+Pi+6wfvC/8TOb/75abtpwzGcqnaNlxMs0jAt/0UVM=;
	h=To:Subject:From:Message-Id:Date; b=lqm31dS+6XcljtC0vda+MKaiMIDAOwwh33PItU7QAs/ZFfLclH/uFfJZYbZqloWpJcda6xsfcWHEy0m1Cwsf0cnz05PwDGTUzA8YsyXspGtBBxqCVA78mSNZoeaR+SkYIL1jledzuB3/ZjLR13yBIa9Je5iUVyfyxeba8Zep03Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ela1wPsG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ela1wPsG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB0AC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743819593;
	bh=H+Pi+6wfvC/8TOb/75abtpwzGcqnaNlxMs0jAt/0UVM=;
	h=To:Subject:From:Date:From;
	b=Ela1wPsGDB9/BG9nne6Daz6rAH4J99bzFRXqeO6slc8Krw0A/tQ/92nDuLucP+vS9
	 bs13q8pr8cPYSI8WR1fgqzjKsA83BYdRoKLsKOKTFIvEQ+tNCi2r1E8hDExOpgQXn6
	 A7/78CHTS80KifWCAKQ+5r+BLacRRjWyE5zJi4aQjVgbLaSGIMQ1MzvMn9ZZZk6ImI
	 a2zGKerYuTBnn0pMR9G0x+mm2mZQybYboN8zIXYpcELrDQuFO3Qebh2lYxFi+pUWhO
	 jk0S4trm7cRD1/V8EfEJpDCBQHZvWwbMoI2xo1lbsBAywUS76bRCgLWKb7QK8ObmQ/
	 po8b0TkNU8+Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92332C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174381959359.8281.17918046662194375201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2aff8af111ea77f5e956431c95c6ab2feb7697af93aef7217d5187eb563eb14
Date: Sat, 05 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743819593
