Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178508836
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752417594; cv=none; b=PHaIsksHMff1+jyz5Vije50F6TIjXitvYnYjG3FgrhcQhFfOsPMRd9y4G3vgQC4PXl60Tu/VefkhpLM7EMjJVAQlCLlqfeXAVQgUiKzSh37Lx6oUpnRZQ9KYFsQY2KWiiiHHgXERVX5rvxq1EicAdkzJvM6/ksbid2glXWfm0f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752417594; c=relaxed/simple;
	bh=lnA0/UhN4hy7ecEsfo9ifkUyHThf4ACYiL/ONfYmekQ=;
	h=To:Subject:From:Message-Id:Date; b=oATduda0xgThKcZJzUo4eYlTaN30zT+1u/YND/nljSUuAiKeddaZmNre4CGwlHvCcqJAgq7l0Kr7/haAW+SCVfO2NIsA06T2b0Oi15JTs4JTh6Iva6a2UzAMszLUWwIHc6LCrdOs0GowD7dSqzAAK+pq662oDu6p3n3AM6uDkrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vucvh64q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vucvh64q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27E5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752417593;
	bh=lnA0/UhN4hy7ecEsfo9ifkUyHThf4ACYiL/ONfYmekQ=;
	h=To:Subject:From:Date:From;
	b=Vucvh64qbEaVVM9ByPMdUqKRz7G7Iydbgb3U3VyKXmVPYWnueZ8QIAgDyTr9HPsJg
	 pcXkcSgc8RhpGn1I1S3nyEKkfEG38xOdaq69gBDuWO8Fj4Vtdk24br86H0wy/HueOY
	 4JFY6OggbLcN4rgsUW4d20lJDNPfvQ0mdkoA/tEmJbknJKuoBJxlnM94JnGzM3uzxn
	 4BaDSYdx3JZ+1sOH1l+S3eCRFdKIvOSOUwDVZTdN20QFjT3jORFt6IUey0tC8tfrgH
	 Wpg3AaQD2+hTD2pjevlPbr2lC9VwfDfKSKF/mhd2Mlv/EimAZ5Op7UvLNVchY89qc4
	 Wjbf4UWYxNPig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A3C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175241759357.21512.18126799540508053057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5bc92638db0e0793211ef3ec31d15c83008ab523027ad37d832c9ac4b95ddd6
Date: Sun, 13 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752417593
