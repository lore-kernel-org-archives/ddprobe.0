Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B7D25D1FB
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742804994; cv=none; b=aK6nTGyQuocGY4N3J09U4d952NQzdoVCRi/RXnazRVa4DQ5HyrTkgGbfRMaBgvMVFZC9VH6yyQi/NNCzK40HcDeAD+Fr9oWRVadI4xLLM90N02w8O2u4fBKV42QczX5pHbv1oYWSw+eGs34oNj1I7Da9JbF60FzmXH3kRKyStS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742804994; c=relaxed/simple;
	bh=CPgtL2vmM210GRz0AEbi3GafkvzZnPAQwcbWxjxtfZk=;
	h=To:Subject:From:Message-Id:Date; b=VmvVZu2K0YfO+y0n9b7hR94duPGuN7nCBgN9k2l1a/xEjh0NRlgrPp+rHGDdeeyLmGrodIROj8byxsIXWYyDWSxUV5vVHEOZIMOglVaK14PiSVY1FCzfOUKoyHHOLqwq61j13ZnNhevbhO7k1Sw+AFBUExAJdi3eVa/sErzZlgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/j9wRNm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/j9wRNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE6CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742804993;
	bh=CPgtL2vmM210GRz0AEbi3GafkvzZnPAQwcbWxjxtfZk=;
	h=To:Subject:From:Date:From;
	b=K/j9wRNmsKtYnhwwg3DTW/oQeB0TZ0Vk+VOd7a4SO0+fzSo7pgnDP4/+gKG+GcB5u
	 W8k6Ge8H0MOs58QqX1EYnNq1EX3HGVUn9CffeHqF+vtfibSNWTkhHDtN8c+YCMvBM/
	 UFn0IAfUKaf9TE/fVerzubwtyo/i3TV9qpq+KUCjUGYzMHx5Vz7m7tABopZ5yoZXQE
	 Dj6tUF5KdMlJdVlAIB0HPEX0AiOOEoDVkOAcVlM5YJhKiB3MjDkK7eB02t1NbqK5qS
	 xzsngi0xu5VTYe0knyRmrO2z+bbisUPkgOW8TF8EfoS2E9hh757LAwm5bHQb72SvKW
	 3q+dXme+3NazA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55E6C36008
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174280499366.2569.2310322771333674026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abee79fc3f488aec47d89162141b7ec55fd52ca06107fe82dd8f14e13cda1376
Date: Mon, 24 Mar 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742804993
