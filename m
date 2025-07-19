Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA0C226CE0
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752913794; cv=none; b=gKIdzcnf2EDmRMjjhzt1O/Ar17Q1W8Eor5JJP4omIyJUrnjpX+WLyMff69PeuemuepLpJIR+qyg/bjvKIllUgqm3GMhK668l/bQ0S14LfEiT6CJULHHhe1NlrVozpNseVfGCIkkR8yIVNMgTQohcKh8Og19k0RTICq76XoQSYl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752913794; c=relaxed/simple;
	bh=rNKbbGZxPQN2n3WBGUAvbFzxeTYnbQBsdutWDyMwxW4=;
	h=To:Subject:From:Message-Id:Date; b=jZlZwaWX91rVWwIsjBAIrn/p2vNjdEFF6eUOjd1YXVS0Z0zHjnayodgNtj+R/yPvZN9pEMAtNr5T/FRyevhHG73xEx+JJWAikg9YkojMn6TqE72bTWqg8/owkd6Uyqna1ZuBwQCjBooJ9mpEF3i3IqnxxioBlBe/uZ4TkBiNWPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkkzsjI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkkzsjI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ACEC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752913793;
	bh=rNKbbGZxPQN2n3WBGUAvbFzxeTYnbQBsdutWDyMwxW4=;
	h=To:Subject:From:Date:From;
	b=CkkzsjI4J1YCo98dq0VcmG3Bnhl4PYW+u7rPXxvbl19AT9Cf4cBF7q7rdnedp1mMK
	 VO5Rj9mYvdUvEp14bHn7WHeGpyRnXAr5IfmjiA0eHXTKjB/uhYFPXozGrteA5AsR/4
	 b69M3jIjgsD/+m2liNnjw2U0OnKWF/0/p3hpgztaamJctUe9bFa6F9e0GSyoBzGbrO
	 1VRI2CjJ5THMNaX2TPfL/Ev6pjS9VLiL/+V0JJt23BDCvq7YDTZ2CQzBzLODNJtIAr
	 xANaSUx1uNK7EcVuZ3w3z7J9PDGnjwWRkjpDeToKWZjvbzaPUo2gxZ4YWrzPXBZUmv
	 kiTBCTS0iSs4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE1C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175291379357.20296.5057362614985323754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d34ede39ffcbaf3792f3af5d8616cf2016e0aa8804cbaa97e204e3b606c59790
Date: Sat, 19 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752913793
