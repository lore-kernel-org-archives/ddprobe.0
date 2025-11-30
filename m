Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CEA1F8723
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764537774; cv=none; b=QfEciBiRtNtvetun+IYr3YquDjBu9LrxH4UnlBIcDGMHMnCxBn5LRmCFcoipxrQiTpxMVCnt9liSFxkIuS2tLIhwjYbLjX74qcDsRwnjAM5ggnDInaMvR6I6eAo+pzajlzNRQwsSNy5xF3iZ9RcUJd69eNiz04aWi6Aa15C4CcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764537774; c=relaxed/simple;
	bh=oZmkV5zRQsgit8KfIdn1aL3V/mhBro/Ida2nvRV+TE4=;
	h=To:Subject:From:Message-Id:Date; b=R3Kp8YgPZKemEAPh8EUrySAKr0uSR+BxKVqDmtjNB8oJc0pY8UFiivOpIgzeDlfE6KTaobyaXnEl2juFfC00leJuyC2P2RIPXTgyqTqoPhABnapKKqbPG4jHw4b5+LWnubNnI3t+agQYsBHlEh87j8o7M3FmDE6oLN8jAoFiyf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXv/hnZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXv/hnZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA31C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764537773;
	bh=oZmkV5zRQsgit8KfIdn1aL3V/mhBro/Ida2nvRV+TE4=;
	h=To:Subject:From:Date:From;
	b=SXv/hnZFqnAe1+KSJ1GqBvDomsfLjFxazDbtCnNBnJ0dSNo062qG9zi4bTU3I3JDr
	 zlAC4YZ+6RrD3LqlBGNT/Ei8yT85kgtDmOde6C79bDlZZfZ5MpiUw61i8DCdOS31ux
	 ZznDA0R6tWx/TAvkuc6VV5Ua0d8nt3GpajBXLHfl/dhAa5jZVwjD42dmy9assBZYHI
	 KUzUDRCWuKJ6DiRAl76dTOFqPouly/LOJaWnD6nDuPqvehBNgxxDZU5/K5I8vJAf02
	 aLI/3B/M9YnlehC+5poBhWDd5XBrlOEpX5CQY7A4u1yCMD9jKWAl1C6kZignGQJVft
	 sHUuMte4MKbIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96394D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176453777359.29856.11355504340900204556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39def4daa340cf32cba943a4627562724ef6ab2ea4389be4d14bfee72032d8c1
Date: Sun, 30 Nov 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764537773
