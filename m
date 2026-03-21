Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D382DCF4C
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774083294; cv=none; b=LpkWIvhVqK7RTbHKyrQ8rbrm1WVDJU6s2bLAIJERL6axPWAPpHs+RbOL6iNW/p3WWGuRlXnYibApDLN3IcEJtuOgbMD5YRK5TIEpI6+EhdB+gkzfGC9Yz356g8Er7L6OPHQ08lH3qfYTp4Mt0s7YyBP2HtU5RGwPqEtyd92bRmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774083294; c=relaxed/simple;
	bh=2CEHOPhMlz+U0ftEb/lheILFYEuWU2zu01pRI/Njg5E=;
	h=To:Subject:From:Message-Id:Date; b=eCY4Bg44Ts/cQ2IutETRdO5O8VgJWf0lRiWlaUwAzYt9DJXrKY0fsaDsLngpZ3apJRZ5MNpAimiM5ZlxIHES07kVcAbu3uQW1f42jbWYryw0onjcjupGwEoeu5LFfcGIXKbqnn9oVmi9rIXUsnFEdtAZcnbMLVNSZnCokyKXNKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfGrTyW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfGrTyW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A476EC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774083293;
	bh=2CEHOPhMlz+U0ftEb/lheILFYEuWU2zu01pRI/Njg5E=;
	h=To:Subject:From:Date:From;
	b=JfGrTyW9gzDqHNUuPh+OyMYdy7Hd5lTiescfpAInYZXMuZvu0XqL/cNkHG7b0qUP2
	 8a5fQmJrTke1ZcS+E6COfTXuuiGp8ib/Wf4NYejLhtfFA6638FOn8H2jz0nax/N/6f
	 hULZ/1kfgQuy0l+CuJ60pmGbLt0qI/QyAe8oA1+Se7Ak1DYGYe6YfSWHEGFVvzAJ5N
	 MrNsGeEOxjBihBqBk+ep+8BrDEjUy+XfGzH71hWanvLqc5j5s4hxE+PxnxX5pPF6NU
	 HK1xMOeIHs0mxdRrcvuIcKIeWvkVtW91Khi0jD2/aDwOZeelian8MRYB2YcT1oa4PK
	 CtvM9EIyzOXgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9408D1094461
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177408329357.27903.9458281240908796564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1d5e4d5e77f64e7bc1cd5e0444e67927c46175a2aee98c936d9c6cf452f187
Date: Sat, 21 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774083293
