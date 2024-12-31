Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD673189BA2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735673753; cv=none; b=GSY/p7SkCtOal/wAIOiFEMPvvY0tZnXEoCsdLaJgBspMtGHTMpTio/2qOFBVtTFJGFeIVYRo6gvBWd+XvbfjrAl9dv3JzO0lmqFYp1HQxSLvQ5fqOxNJ+KJgAQe3rXCbuaBEEIlLgmKJtNBwnb3iLjcn2AXpXtKJJ/lIOVndtHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735673753; c=relaxed/simple;
	bh=RvpeT7dWnwd0seo8UllwiUGqS5W43ycUveTdygac9T0=;
	h=To:Subject:From:Message-Id:Date; b=PsFV8jkTVif2SV9IGf4zUT0O5yzLRYw9tPR4ytJN/CZFGl5ck1b2ej4VBSw8LOwgYObG1OJmeP4rCtUI4+sqMFmQ9xySVWlmoxJMcDvvyZDH3Hwh5/wOKixVumh1TT58X4C6XMMXbPbVgvAojbSwedsYLE8pNLjtzctjjvZbhVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRVau+Fg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRVau+Fg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC80C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735673753;
	bh=RvpeT7dWnwd0seo8UllwiUGqS5W43ycUveTdygac9T0=;
	h=To:Subject:From:Date:From;
	b=MRVau+FgKhJ1YvcBojv6jiS7SLCaJeoty76AthCaYrwufblD7VR5ozt2vPp7PJpVl
	 rHOWimHHijFpxZSZvM5MRS/BA5Ad5CAcczLZ3Jl3hr8ZA1OqED5QlUcpxJqDQjDY8E
	 U6SdACwj7oBkToU6KQ/z2VNMNEQFARgD4nVhz8L6d7cGs0REeI0SvnbFV2ZKysSNH4
	 3Wuz3VCzLRPdzyLKMX35DNzweaqMH+CWbftn5I6KLNHasnvc+JWy8ocev5vBsql1fK
	 VwqTG+ZzTExb8SPz3ZgWLiDWQz0698TaWYwmXg3jGss76T3ELMg7pEpp0m98HuSDWV
	 toFMEqKzYt/eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EADE77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173567375361.18250.16883620931696720206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a8d2357d60a296b0fbcd7e85c7c0f146e5823ea1be92095ad4dfb611774dede
Date: Tue, 31 Dec 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735673753
