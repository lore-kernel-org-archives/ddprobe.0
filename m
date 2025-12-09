Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03655264A9D
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765261974; cv=none; b=I7zSaLEkhaVAJpwxaD+Ts/8gv5sakD8LxhoE50LHcUguQsGoN4kul5IkSTV6l8uaV3OPeloO0FgN7CqNcEY0WuUueMuwx0kRwF0VUc8264nYyPnty7F3gkyu4Ld4JEzKzvTdtPU/n/dL9qdTQCEZkv7ZPQlJy3cxQXZtuQk3fGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765261974; c=relaxed/simple;
	bh=RhBKIDk6ZyIXoGFkBz4jPxLF0kXcqBJ0beQthcpcfEg=;
	h=To:Subject:From:Message-Id:Date; b=GsBcoykA4YUVZvEcEQP9t/Z25sHhJtU7YUl4RhMSgdcVD2JO37OaM9IKyCSF//S3Q4lq6Ew95c3fBP8n7KIYTdQkcHjqs5XXrj780Vtwcvu5tH0zYdd6rICK92TTQlcCihpHKZh8x+lsHn7x84EBnIpnTLGB5Xq9k99fOzjPxpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4roTINV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4roTINV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B30C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765261973;
	bh=RhBKIDk6ZyIXoGFkBz4jPxLF0kXcqBJ0beQthcpcfEg=;
	h=To:Subject:From:Date:From;
	b=h4roTINVjP6bIYUQqFRsEwKkzekyEbVi/RIPcG2EWPU8t8/3opAzzyKvUkKxihZcY
	 JhUHOTX6s6rO08GwjDcSmZQbWsneWk0GBAPJxCaCcYoEz7YmFH7sm6Rq1KjcAFa11a
	 ucmd96LtUYclwvqUXeF/nVv+P1xjWQ8TMBOOviLUTvzY9j48c/ODKpdBIt7g3eOyLB
	 x2qpzfAWlUVo0G927aB2B681UdL4lC2s+7pPyB8U0i0qkSoOChUpqNdhT48IHu99tY
	 7umiDSh/5fY/mbmN1McaNO25ltF70m86CWhXRz3SeSI5Kz4oLUXjHHssLzIQmLqDar
	 LAq7KQdimwqFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E2CD1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176526197358.5040.12837600049633748045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c2d191f12cad698bd81e05d15d8c6b30d62815d10fae7e4e7e6fe5e060efd63
Date: Tue, 09 Dec 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765261973
