Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62588381A4
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 05:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715838743; cv=none; b=mUtrq2NSwuCjraDtiI6w1A63nhQukMND3Z0U8PQMjeWA1Y2YRMP2804TA3o0jlCmu/cutPy7gFt8AKpINJ2wmqaKvRh866xT5yJh4VxlnLFI8O0wLLBVZO+UmaSnfDVLKOhw4k6bewFV4iyGk55IzRvhB5YIPvQcHsmL92c1Cvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715838743; c=relaxed/simple;
	bh=lq9tpLiXVa5ukZskCESShzmW+3fNT8gBeSH+SQmaZiM=;
	h=To:Subject:From:Message-Id:Date; b=kYGQ4uRfvH17Ns9L8Jkaa89sB7hqQqkRPJSlFpnVAGTpiyEUoydoLQij9u1PUt4QZ23ecOPfdOI5KVMHI6cYiZIyL11rLSlLL/YXBQR6Jq7TB/0qwfr+DVQALrr4MlUwjs4L2+Ju7iDW1h9Ob0+5ltKYsPUeYQcLNRT0uDjfvxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMTMxEFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMTMxEFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2621C113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 05:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715838742;
	bh=lq9tpLiXVa5ukZskCESShzmW+3fNT8gBeSH+SQmaZiM=;
	h=To:Subject:From:Date:From;
	b=mMTMxEFr/zmw79zR0jjt04xgldTfTN7u0hQgguEOHwMZinjwUD9zdSZYF+7zI31Ly
	 pcKT3ADcLgMCXcbAlx2YK8h/6J2kmPt9lCWXhD9WJZN9FAYAzgGVgaeoG/uLDwCePA
	 Z85r6ItozDra098wyVue+F0iAW9bdzWLxMY/q6t4O8qUJlrZzoJbBjnwFDWYbspkjW
	 XwMdvz79tHm3bt7FNdC1h8SF2M+lmCqpi4MBqtzVtJaOCmKtV5SPA7GdaCaDiLpMpV
	 BS/nH6DIS2M3o1NVb4AFdhWlLYt4x3hod9EOm/mDorkLPgp51z8ke9bYdYH6lGbkHt
	 HqZzPQSqFQggQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0744C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 05:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171583874275.27959.7951586737246788317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c97d947f8d6eac841c3a9cf01834225ab305ebfd061d46307406f31161ce04
Date: Thu, 16 May 2024 05:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715838742
