Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A9C155303
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721634354; cv=none; b=Jv2SZQ0xdjWc4jHDWQt/UqICj3Eo3COUWxEwrY/AP9Vw6Z9kLnQPtxaMaMFZwjoRVoDSXHqKcmQF3tqwxnoeYBnmhTgc0vo75AGy8qD4Zd5Q8C246EVlxIJE/sPG3AuZlwiPCI1ANOREB9WfGsPIndcuuOe9JR0lCJ/P2B9DUgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721634354; c=relaxed/simple;
	bh=nQdv43l1oB6rm1D8jqc4zQx3RZv/hdP/Ltfh3DCkiqM=;
	h=To:Subject:From:Message-Id:Date; b=Y5wWsOipxj7Ch7nkZGhzclJQ1sHFK+u2rmz00Fispm6yVnMxEqZauklf7Vdypcx8hzv1NBENvp8cH6ERBsJY43IJEoszRBx1tPnfccCBpC0/NG6Pk5tPShZ5MkAe8+3I0itnBUbHFsHy9o+NgUz4ZkrBEf8qsg4NQTUv6ciOJZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e66oZkYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e66oZkYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB7DC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721634353;
	bh=nQdv43l1oB6rm1D8jqc4zQx3RZv/hdP/Ltfh3DCkiqM=;
	h=To:Subject:From:Date:From;
	b=e66oZkYaH4k0ZjsQR2L84J5vIf7OSxMAyrrT9zctfxDBkw1+O/nokp5ORtJIHKflq
	 jwfwqjRqRArtJ2xqTgfNOuWzmoOh7/mMmfsoz17XnXHhnqOTyNSUk9oaXZXXAnPdyY
	 QgT5nfV6MppcWGJq5Cxauyj8SE6xm+GsF1WJYpFbgg/rVBolxp9GZJFH3u3ot4UoHs
	 6eTzR3ooJDHKIvlCKtyeggtH+c/6rvSiKXWi0hfu9ZsY8AX0Xe8OGk43T2zTDdOzRi
	 VUgtwq9796LRPRXzRA6kF6fdJfM4EjGcTlKTvofovgsr27CaxdApglrcfY9NWIVIA4
	 QhKF1rxwem0dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C93AC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172163435360.19076.10179984424802339493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af230d5cad1230278e829b7752c24419d7c68c5192b4ed61c4c9acdc25fd0d54
Date: Mon, 22 Jul 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721634353
