Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BA32EBB9C
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761769194; cv=none; b=L5QYto9NlXoNd8V96Hc09fuZvUpvBZW+oWJJgLTevb6zcoyEeYYQIhpUMBye8USxGY37SWmxhUpy5VyIbgLtz/ruDzUoAu7/5m4ysdNYwVvlmwZV6j+pVuuE10T2l3eHwF7pNTzCsiFkfU5kKXMLzLVyxs/+bKDzXMc3yHms6wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761769194; c=relaxed/simple;
	bh=AI0iqD8I+YohssrqQpq3B6Dpdtnpz5qJkKWb0EA5vmk=;
	h=To:Subject:From:Message-Id:Date; b=c4h5Wfy7fyEDxcPeHZs8XXegueM1JuXRENuQMexsFqWfpaHh/YITT34m4KSbZHiYzEL5a/yoW14V+Wxzec0Re2oIb40bqPfGvWnn3nRHph5DDeYBAQpYBdOsEZh6BKyPpi5iLgUIdChLWYAJ0Qdoazt/suEj1UFgyJ4lvcXwdXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=db2M4OZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="db2M4OZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E0AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761769193;
	bh=AI0iqD8I+YohssrqQpq3B6Dpdtnpz5qJkKWb0EA5vmk=;
	h=To:Subject:From:Date:From;
	b=db2M4OZSch/XIp3K4puieV38RcyWsikLD9Nibcbee5PUJKO/+vZMheviAFO/CjJYq
	 ILjvkuOo/1jrvEsYTx//ZoIqrOCnq93fqbMBpcRITy9G+SYgjvJRcdL+O7L7pPWsIA
	 Tcqa5Vjb8EqF2uIOp9puY30NpMOs8ogf6pNAd0E2/l8djh4uqogtH+NuKB9HyANV6n
	 TV9mWKrop08LudmzBHpaXqtFfxUFLd8qTzH/mLu5XVM2HNHH4AU5GwXL4q/5G19MhE
	 67+mXp/tIiyFtNjAoBxB1zjmYRt2d6qBwhaM8ysKSvgMpqPvRLLe0LydPCT9I40SEh
	 Z2YBrW9DoEZCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984A4CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176176919358.9877.5093551951907525369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c43dc53e60df9bcb17625fb6c6cb9fcdc6f6df56fd9bc352b26c159693b9ae5
Date: Wed, 29 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761769193
