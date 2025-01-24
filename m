Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F5B166F32
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737707754; cv=none; b=d0PznAeHC+svLdOTvqoZ1uozeQfyKwsjQWaWtF7dm0wo5x4+hE8FWQQud5kE3ZDnl4okLDvJ5oxeF0tv1GBA0ER07u+YMJTFNV7sydOBoy1GbgyBPOF5YOezMXYLDB4CmQP1qyo9fBrLDz3W0vfLVEcLqp/8q0pXiQFB779HndQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737707754; c=relaxed/simple;
	bh=GlvMErQ7SRNPF9yMVFfltJvXaTIUtgwKx45xc0CBJrc=;
	h=To:Subject:From:Message-Id:Date; b=WPT+bwpxihK2ww8pn8UFSOBA7ED32Zesk4EKCSp1Bw7n06k+lVZUkdsuSmPUU8rLKJLT5qGbedKguKGFthKzEvBD380ZxT2bPQ9B+Gf92ff7h0YvltcV11k281V1MIawmoTyeIwXeju8YKquRSRPuzkKIoikvgZYgThg1gMyrvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWEqMZZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWEqMZZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67B5C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737707753;
	bh=GlvMErQ7SRNPF9yMVFfltJvXaTIUtgwKx45xc0CBJrc=;
	h=To:Subject:From:Date:From;
	b=aWEqMZZH7iLgB4VaH+UeAO7mYq5uaLfEUyaMytcJHwNLQEyC5KK75ocHWmLYNfBDJ
	 LRRDL01JGIDKyyfz2zZqNEVUgHYqxZF+5KrjSB25ryTnQZOqh0635Vhjb4ONHMPwtH
	 4mWaOQW3+VlH7v21L4mFRwop5RSkE0t3KABStdZSVF8lknkgKcGEeRbGV2yKDLGzIj
	 nUIREsFVaHjB0jCnQQt8M+a5VVhemIHlJZMxMCFj1QaYDEXWlWoqcAKBv+6I+XqlnX
	 dr61gdNvas2/89ZibG55DlIabCUu6R7FOkQu6Z3hOMjeA2bhhZeNMQDeQ3B+QdGagS
	 yBw96JGe73dXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E59C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173770775359.6317.16895148405112294588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a891c48166bad6de0db17a6f62794d287dae0ab036fc2d30d9e579e182ffcd9b
Date: Fri, 24 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737707753
