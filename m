Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49703224F6
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747413594; cv=none; b=lf53P28HNy9VbYQthwiT8jE2s/gJnMT6GwSBBo4JEe8C37zlmf2iwk6iw2R6eAgUrmb6lhha2sXeBAI+7LqTJHi0hJQNPcfiT9A5ynSSb2EyRWY7V/DQP5IjOjG3ifRiyuTGYmVkteYlR71eItwDW88mLBqjUubFFgOKexHMZBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747413594; c=relaxed/simple;
	bh=j4FUjGUDedKBFsAdh6JpmTj7vLAnf2/FHva360sPpFA=;
	h=To:Subject:From:Message-Id:Date; b=ZqTdU9I1dkNlT3QS2e5MYTNiOk5dCaPI0Ydnz2w9QHltIcIabe9cFaJ9CUyHgeyoxu05gW1cqa49DJySjZe1o4PTLIrVYrOsWwnmQys6GivmALhbA28dGPRRfPYtgPMCH9n3U8IkV4UdixIkUUXjAIyWha0vRspYrutOdrWFXWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/pKiuIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/pKiuIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2800C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747413593;
	bh=j4FUjGUDedKBFsAdh6JpmTj7vLAnf2/FHva360sPpFA=;
	h=To:Subject:From:Date:From;
	b=K/pKiuIWE+IjrfltSTQGo/Vmbo9LT4ULF7lLFw+winjxQ6iFMSTJGHsxKGF1DbiT+
	 /OcWTexjVuAMq4HaaiyTXYtxRb73H4yqWCZDXvV8pzfAwf8PoV9kZuhAKzZlBDtChV
	 4tHzBSJkG2Q6i9lSFuCE4E9sd+1iZpvLa+5lyFg7hpQJRPhbgBIXqMA0k/OJkdg8zL
	 hvy51OS0y0hXUAu/z2+oqvQg1lUPVhxru5dF8NYmYgR5FjaTdxPcmQiUCp/weO1i3L
	 fiE2g1Ujju/ZkkCwHVlzdz1no0UsYKx4hwQTwFD/JQkUzk+BOxAtD9+hqM0Yr2pjCs
	 5RRbZiG36TOdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917D8C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174741359358.17285.1907666152652085274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0a9cae2d7ff48843c36ce67a754a3a383e1ffd24870acbb5caa55e422dfb03
Date: Fri, 16 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747413593
