Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7F9194C98
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785649234; cv=none; b=iPpcM/3vZbzKn+2qn3pq2nT/ke4nIJLbMeHs1v4pHUDW33eAy62k0TniIEvhhPyaIzXBAVxSulaOf83vslEp9hjk99TQu91vNLnxgPDB33rkPoAtNPkiQ0Y5/p4SEXYahH/JhlrbmY0uwUZNpPu5nM81OmwiLqDRT5p/jup1X24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785649234; c=relaxed/simple;
	bh=rHVKRZs99NKaQRhRlgahDr/JxdBphCGg1wX3E4ZPyoM=;
	h=To:Subject:From:Message-Id:Date; b=Gwj3BvoJ7/6SJYBbKupSreesaz2Tj1YF7fWP5VfURhxQL6T6gWqAyU+MsL3NwUtiOWgWOCN+3aT1a4LccrPBb36iZ8Ka1pFJ+1WP8JQY7W33fNEoOlDPFZAhAOYCntiCKuaHhMDUhnvfibUwiNJkIDSICI4Nk6c7rejroO/33Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACrh7buY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACrh7buY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CA1C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785649233;
	bh=rHVKRZs99NKaQRhRlgahDr/JxdBphCGg1wX3E4ZPyoM=;
	h=To:Subject:From:Date:From;
	b=ACrh7buYpbZaxZ8kv8eK7R9ga/gmgvxqRnZeoEQ6zoSR9XaJQOBkKen9Y25PJUfOD
	 AeINzyjPjn/rjHVnK4CsSnqjP1OV1ZwoNEYxaeFeUI9UuBBLZitnQ9xft5j0Eu3A7L
	 vQImjsYuIFY8Feg8GDn0fQvBkWRsC7IlXXJeSey71f3RZRfiPdiLmxX5m7xZ9Tan4n
	 gzQb54P0w+I6jSgYl/KUkgoD/j31eTwHQC/RNlQp1FSqLmUwb9IUlrWWQSgLrHECDQ
	 J53dGXdmrpPnDQQV921icKR5Yulg7wQnpPnAiOr6LIaVJ6IwFjA7koMPKsRnpZXu0z
	 n+XVCrK/eGCUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA98C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178564923368.18940.6076812949512008498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0022a867261788bd70ff19b02469de3f29f43bcb0a6290525989924274c94400
Date: Sun, 02 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785649233
